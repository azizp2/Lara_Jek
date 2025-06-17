import 'dart:async';
import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_background_service/flutter_background_service.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:lara_jek/app/domain/entity/tracking.dart';
import 'package:lara_jek/app/persentation/confirm_order/confirm_order_screen.dart';
import 'package:lara_jek/app/use_case/driver/driver_get_interval.dart';
import 'package:lara_jek/app/use_case/tracking/tracking_send.dart';
import 'package:lara_jek/core/constant/constant.dart';
import 'package:lara_jek/core/dependency/dependency.dart';
import 'package:lara_jek/core/helper/shared_preferences_helper.dart';
import 'package:lara_jek/main.dart';
import 'package:geolocator/geolocator.dart';

Future<void> initialTrackingService() async {
  final service = FlutterBackgroundService();
  const AndroidNotificationChannel channel = AndroidNotificationChannel(
      CHANNEL_ID, CHANNEL_NAME,
      description: 'This channel for tracking location',
      importance: Importance.low);

  final FlutterLocalNotificationsPlugin flutterLocalNotificationPlugin =
      FlutterLocalNotificationsPlugin();

  if (Platform.isIOS || Platform.isAndroid) {
    await flutterLocalNotificationPlugin.initialize(
        InitializationSettings(
            iOS: DarwinInitializationSettings(),
            android: AndroidInitializationSettings('@mipmap/ic_launcher')),
        onDidReceiveNotificationResponse: onDidReceiveNotificationResponse);
  }

  await flutterLocalNotificationPlugin
      .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>()
      ?.createNotificationChannel(channel);

  await service.configure(
      iosConfiguration: IosConfiguration(
          autoStart: false,
          onForeground: onStart,
          onBackground: onIosBackground),
      androidConfiguration: AndroidConfiguration(
          onStart: onStart,
          isForegroundMode: true,
          autoStart: false,
          notificationChannelId: CHANNEL_ID,
          initialNotificationTitle: 'Lara Jek',
          initialNotificationContent: 'Initializing',
          foregroundServiceNotificationId: NOTIF_ID));
}

@pragma('vm:entry-point')
Future<bool> onIosBackground(ServiceInstance service) async {
  WidgetsFlutterBinding.ensureInitialized();
  DartPluginRegistrant.ensureInitialized();

  return true;
}

@pragma('vm:entry-point')
void onStart(ServiceInstance service) async {
  DartPluginRegistrant.ensureInitialized();
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  bool isInit = false;

  if (service is AndroidServiceInstance) {
    service.on('setAsForeground').listen(
      (event) {
        service.setAsForegroundService();
      },
    );

    service.on('setBackground').listen(
      (event) {
        service.setAsBackgroundService();
      },
    );
  }

  service.on('stopService').listen(
    (event) {
      flutterLocalNotificationsPlugin.show(
          99998,
          'Lara Jek',
          'Tracking lokasi dihentikan',
          NotificationDetails(
              android: AndroidNotificationDetails(CHANNEL_ID, CHANNEL_NAME,
                  icon: '@mipmap/ic_launcher', ongoing: true)));
      service.stopSelf();
    },
  );

  if (isInit == false) {
    isInit = true;
    initDependency();
  }

  final DriverGetIntervalUseCase useCase = sl();
  final response = await useCase();

  Timer.periodic(Duration(seconds: response.data ?? 15), (timer) async {
    final role = await SharedPreferencesHelper.getString(PREF_ROLE);
    if (role != ROLE_DRIVER) TrackingServiceHelper.stopService();

    final currentLocation = await Geolocator.getCurrentPosition();
    final TrackingSendUseCase useCase = sl();
    if (service is AndroidServiceInstance) {
      if (await service.isForegroundService()) {
        flutterLocalNotificationsPlugin.show(
            NOTIF_ID,
            'Lara Jek',
            'Lat : ${currentLocation.latitude} , Long: ${currentLocation.longitude}',
            NotificationDetails(
                android: AndroidNotificationDetails(CHANNEL_ID, CHANNEL_NAME,
                    icon: '@mipmap/ic_launcher', ongoing: true)));

        final response = await useCase(
            param: TrackingParamEntity(
                latitude: currentLocation.latitude,
                longitude: currentLocation.longitude));

        if (response.success) {
          final list = response.data!;

          list.forEach(
            (element) {
              flutterLocalNotificationsPlugin.show(
                  element.id,
                  'Pesanan baru',
                  element.text,
                  NotificationDetails(
                      android: AndroidNotificationDetails(
                          CHANNEL_ID, CHANNEL_NAME,
                          icon: '@mipmap/ic_launcher', ongoing: true)),
                  payload: element.id.toString());
            },
          );
        } else {
          flutterLocalNotificationsPlugin.show(
              NOTIF_ID,
              'Lara Jek',
              'Gagal mengirimkan lokasi',
              NotificationDetails(
                  android: AndroidNotificationDetails(CHANNEL_ID, CHANNEL_NAME,
                      icon: '@mipmap/ic_launcher', ongoing: true)));
        }
      }
    }
  });
}

void onDidReceiveNotificationResponse(
    NotificationResponse notificationResponse) async {
  final String? payload = notificationResponse.payload;
  if (payload != null && payload.isNotEmpty) {
    final id = int.parse(payload);
    navigatorKey.currentState?.push(MaterialPageRoute(
      builder: (context) => ConfirmOrderScreen(
        param1: id,
      ),
    ));
  }
}

class TrackingServiceHelper {
  static Future<bool> isRunningService() async {
    return await FlutterBackgroundService().isRunning();
  }

  static void startService() async {
    FlutterBackgroundService().startService();
    await Future.delayed(Duration(seconds: 15));
    FlutterBackgroundService().invoke('setAsForeground');
  }

  static void stopService() async {
    await Future.delayed(Duration(seconds: 30));
    return FlutterBackgroundService().invoke('stopService');
  }
}
