import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:lara_jek/app/domain/entity/booking.dart';
import 'package:lara_jek/app/domain/entity/statistic.dart';
import 'package:lara_jek/app/persentation/confirm_order/confirm_order_screen.dart';
import 'package:lara_jek/app/use_case/auth/auth_logout.dart';
import 'package:lara_jek/app/use_case/booking/booking_get_today.dart';
import 'package:lara_jek/app/use_case/driver/driver_get_stats.dart';
import 'package:lara_jek/app/use_case/driver/driver_get_status.dart';
import 'package:lara_jek/app/use_case/driver/driver_set_active.dart';
import 'package:lara_jek/core/constant/constant.dart';
import 'package:lara_jek/core/helper/shared_preferences_helper.dart';
import 'package:lara_jek/core/provider/app_provider.dart';
import 'package:lara_jek/core/service/tracking_service.dart';
import 'package:lara_jek/main.dart';

class DHomeNotifier extends AppProvider {
  final AuthLogoutUseCase _authLogoutUseCase;
  final DriverGetStatusUseCase _driverGetStatusUseCase;
  final DriverGetStatsUseCase _driverGetStatsUseCase;
  final BookingGetTodayUseCase _bookingGetTodayUseCase;
  final DriverSetActiveUseCase _driverSetActiveUseCase;

  DHomeNotifier(
      this._authLogoutUseCase,
      this._driverGetStatusUseCase,
      this._driverGetStatsUseCase,
      this._bookingGetTodayUseCase,
      this._driverSetActiveUseCase) {
    init();
  }

  bool _isLogout = false;
  bool _isOnline = false;
  String _name = '';
  String _vehicleNumber = '';
  String _photoUrl = '';
  StatisticEntity? _statistic;
  List<BookingEntity> _list = [];

  bool get isLogout => _isLogout;
  bool get isOnline => _isOnline;
  String get name => _name;
  String get vehicleNumber => _vehicleNumber;
  String get photoUrl => _photoUrl;
  StatisticEntity? get statistic => _statistic;
  List<BookingEntity> get list => _list;

  @override
  Future<void> init() async {
    final NotificationAppLaunchDetails? notificationAppLaunchDetails =
        await FlutterLocalNotificationsPlugin()
            .getNotificationAppLaunchDetails();
    if (notificationAppLaunchDetails?.didNotificationLaunchApp ?? false) {
      String payload =
          notificationAppLaunchDetails?.notificationResponse?.payload ?? '';
      if (payload.isNotEmpty) {
        navigatorKey.currentState?.pushReplacement(MaterialPageRoute(
          builder: (context) => ConfirmOrderScreen(
            param1: int.parse(payload),
          ),
        ));
      }
    }
    await _getDetailUser();
    await _getStatusDriver();
    if (errorMessage.isEmpty) await _getStatistic();
    if (errorMessage.isEmpty) await _getBooking();
  }

  logout() async {
    showLoading();

    await _authLogoutUseCase();
    await SharedPreferencesHelper.logout();

    _isLogout = true;

    hideLoading();
  }

  _getStatusDriver() async {
    showLoading();
    final response = await _driverGetStatusUseCase();
    if (response.success) {
      _isOnline = response.data!;
      if (_isOnline) {
        startService();
      } else {
        stopService();
      }
    } else {
      errorMessage = response.message;
    }
    hideLoading();
  }

  _getDetailUser() async {
    showLoading();
    _name = await SharedPreferencesHelper.getString(PREF_NAME);
    _vehicleNumber =
        await SharedPreferencesHelper.getString(PREF_VEHICLE_NUMBER);
    _photoUrl = await SharedPreferencesHelper.getString(PREF_PHOTO_URL);
    hideLoading();
  }

  _getStatistic() async {
    showLoading();
    final response = await _driverGetStatsUseCase();
    if (response.success) {
      _statistic = response.data;
    } else {
      errorMessage = response.message;
    }
    hideLoading();
  }

  _getBooking() async {
    showLoading();
    final response = await _bookingGetTodayUseCase();
    if (response.success) {
      _list = response.data!;
    } else {
      errorMessage = response.message;
    }
    hideLoading();
  }

  setActive() async {
    showLoading();
    final response = await _driverSetActiveUseCase();

    if (response.success) {
      hideLoading();
      _getStatusDriver();
    } else {
      errorMessage = response.message;
      hideLoading();
    }
  }

  startService() async {
    final isRunning = await TrackingServiceHelper.isRunningService();
    if (!isRunning) TrackingServiceHelper.startService();
  }

  stopService() async {
    final isRunning = await TrackingServiceHelper.isRunningService();
    if (isRunning) TrackingServiceHelper.stopService();
  }
}
