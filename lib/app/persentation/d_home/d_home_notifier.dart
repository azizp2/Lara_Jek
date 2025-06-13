import 'package:lara_jek/app/use_case/auth/auth_logout.dart';
import 'package:lara_jek/core/helper/shared_preferences_helper.dart';
import 'package:lara_jek/core/provider/app_provider.dart';

class DHomeNotifier extends AppProvider {
  final AuthLogoutUseCase _authLogoutUseCase;

  DHomeNotifier(this._authLogoutUseCase) {
    init();
  }

  bool _isLogout = false;

  bool get isLogout => _isLogout;
  @override
  Future<void> init() async {}

  logout() async {
    showLoading();

    await _authLogoutUseCase();
    await SharedPreferencesHelper.logout();

    _isLogout = true;

    hideLoading();
  }
}
