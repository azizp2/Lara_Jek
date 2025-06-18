import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:lara_jek/core/service/tracking_service.dart';

class NotificationService {
  static Future<void> init() async {
    NotificationSettings setting = await FirebaseMessaging.instance
        .requestPermission(
            alert: true,
            announcement: false,
            badge: true,
            carPlay: false,
            criticalAlert: false,
            sound: true,
            provisional: false);
    final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
        FlutterLocalNotificationsPlugin();
    const AndroidInitializationSettings androidInitializationSettings =
        AndroidInitializationSettings('@mipmap/ic_launcher');
    const DarwinInitializationSettings darwinInitializationSettings =
        DarwinInitializationSettings(
      requestAlertPermission: false,
      requestBadgePermission: false,
      requestSoundPermission: false,
    );
    const InitializationSettings initializationSettings =
        InitializationSettings(
            android: androidInitializationSettings,
            iOS: darwinInitializationSettings);
    await flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onDidReceiveNotificationResponse: onDidReceiveNotificationResponse);
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

    final fcmToken = await FirebaseMessaging.instance.getToken();
    // if (kDebugMode) {
    print('fcmToken: ${fcmToken}');
    // }

    FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = notification?.android;

      if (notification != null && android != null) {
        await flutterLocalNotificationsPlugin.show(
          notification.hashCode,
          notification.title,
          notification.body,
          const NotificationDetails(
            android: AndroidNotificationDetails(
              'fcm_channel',
              'FCM Channel',
              icon: '@mipmap/ic_launcher', // Corrected launcher icon reference
            ),
          ),
          payload: message.data.toString(),
        );
      }
    });
  }

  ///
  /// A callback function that is called when a background message is
  /// received. The function is responsible for handling the message and
  /// performing any necessary actions.
  ///
  /// The function is passed a [RemoteMessage] object which contains the
  /// message data.
  ///
  /// This function must be a top-level function and must not be an
  /// instance method. It is called by the Firebase Messaging SDK when
  /// a background message is received.
  ///
  /// The function should initialize the Firebase app and handle the
  /// message as needed. It should not throw any exceptions.
  static Future<void> _firebaseMessagingBackgroundHandler(
      RemoteMessage message) async {
    await Firebase.initializeApp();
    // if (kDebugMode) {
    print('Handling a background message ${message.messageId}');
    // }
  }
}

void onDidReceiveNotificationResponse(
    NotificationResponse notificationResponse) async {
  final String? payload = notificationResponse.payload;
  if (payload != null && payload.isNotEmpty) {
    if (kDebugMode) {
      print('Notification payload: $payload');
    }
  }
}
