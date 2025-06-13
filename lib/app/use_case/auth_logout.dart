import 'package:lara_jek/app/domain/repository/auth_repository.dart';
import 'package:lara_jek/core/network/data_state.dart';
import 'package:lara_jek/core/provider/app_provider.dart';
import 'package:lara_jek/core/use_case/app_use_case.dart';

class AuthLogoutUseCase extends AppUseCase<Future<DataState>, void> {
  final AuthRepository _authRepository;

  AuthLogoutUseCase(this._authRepository);

  @override
  Future<DataState> call({void param}) {
    return _authRepository.logout();
  }
}
