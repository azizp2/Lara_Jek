import 'package:lara_jek/app/domain/entity/auth.dart';
import 'package:lara_jek/app/domain/repository/auth_repository.dart';
import 'package:lara_jek/core/network/data_state.dart';
import 'package:lara_jek/core/use_case/app_use_case.dart';

class AuthLoginUseCase
    extends AppUseCase<Future<DataState>, AuthLoginParamEntity> {
  final AuthRepository _authRepository;

  AuthLoginUseCase(this._authRepository);

  @override
  Future<DataState> call({AuthLoginParamEntity? param}) {
    return _authRepository.login(param!);
  }
}
