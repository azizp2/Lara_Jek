import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:lara_jek/app/domain/entity/booking.dart';
import 'package:lara_jek/app/use_case/auth_logout.dart';
import 'package:lara_jek/app/use_case/booking_get_today.dart';
import 'package:lara_jek/core/helper/shared_preferences_helper.dart';
import 'package:lara_jek/core/provider/app_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CHomeNotifier extends AppProvider {
  final AuthLogoutUseCase _authLogoutUseCase;
  final BookingGetTodayUseCase _bookingGetTodayUseCase;

  CHomeNotifier(this._authLogoutUseCase, this._bookingGetTodayUseCase) {
    init();
  }

  bool _isLogout = false;

  MapController _mapController = MapController.cyclOSMLayer(
      initPosition: GeoPoint(latitude: 0.0, longitude: 0.0));
  List<BookingEntity> _list = [];

  bool get isLogout => _isLogout;
  MapController get mapController => _mapController;
  List<BookingEntity> get list => _list;

  @override
  Future<void> init() async {
    await _getBooking();
  }

  logout() async {
    showLoading();
    await _authLogoutUseCase();
    await SharedPreferencesHelper.logout();
    _isLogout = true;

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
}
