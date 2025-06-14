import 'package:lara_jek/app/domain/entity/statistic.dart';
import 'package:lara_jek/app/use_case/auth/auth_logout.dart';
import 'package:lara_jek/app/use_case/driver/driver_get_stats.dart';
import 'package:lara_jek/app/use_case/driver/driver_get_status.dart';
import 'package:lara_jek/core/constant/constant.dart';
import 'package:lara_jek/core/helper/shared_preferences_helper.dart';
import 'package:lara_jek/core/provider/app_provider.dart';

class DHomeNotifier extends AppProvider {
  final AuthLogoutUseCase _authLogoutUseCase;
  final DriverGetStatusUseCase _driverGetStatusUseCase;
  final DriverGetStatsUseCase _driverGetStatsUseCase;

  DHomeNotifier(this._authLogoutUseCase, this._driverGetStatusUseCase,
      this._driverGetStatsUseCase) {
    init();
  }

  bool _isLogout = false;
  bool _isOnline = false;
  String _name = '';
  String _vehicleNumber = '';
  String _photoUrl = '';
  StatisticEntity? _statistic;

  bool get isLogout => _isLogout;
  bool get isOnline => _isOnline;
  String get name => _name;
  String get vehicleNumber => _vehicleNumber;
  String get photoUrl => _photoUrl;
  StatisticEntity? get statistic => _statistic;

  set isOnline(bool param) {
    _isOnline = param;
    notifyListeners();
  }

  @override
  Future<void> init() async {
    await _getDetailUser();
    await _getStatusDriver();
    if (errorMessage.isEmpty) await _getStatistic();
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
}
