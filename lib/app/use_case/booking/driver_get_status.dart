import 'package:lara_jek/app/domain/repository/auth_repository.dart';
import 'package:lara_jek/core/network/data_state.dart';
import 'package:lara_jek/core/use_case/app_use_case.dart';

class DriverGetStatusUseCase extends AppUseCase<Future<DataState<bool>>, void> {
  final AuthRepository _authRepository;

  DriverGetStatusUseCase(this._authRepository);

  @override
  Future<DataState<bool>> call({void param}) async {
    final response = await _authRepository.getDetailDriver();

    if (response.success) {
      return (SuccessState(
          data: response.data!.isActive, message: response.message));
    } else {
      return ErrorState(response.message);
    }
  }
}
