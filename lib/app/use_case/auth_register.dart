import 'package:lara_jek/app/domain/entity/auth.dart';
import 'package:lara_jek/app/domain/repository/auth_repository.dart';
import 'package:lara_jek/core/network/data_state.dart';
import 'package:lara_jek/core/use_case/app_use_case.dart';

class AuthRegisterUseCase
    extends AppUseCase<Future<DataState>, AuthRegisterParamEntity> {
  final AuthRepository _authRepository;

  AuthRegisterUseCase(this._authRepository);

  @override
  Future<DataState> call({AuthRegisterParamEntity? param}) {
    return _authRepository.register(param!);
  }
}
