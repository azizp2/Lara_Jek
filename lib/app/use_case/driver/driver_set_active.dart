import 'package:lara_jek/app/domain/repository/driver_repository.dart';
import 'package:lara_jek/core/network/data_state.dart';
import 'package:lara_jek/core/use_case/app_use_case.dart';

class DriverSetActiveUseCase extends AppUseCase<Future<DataState>, void> {
  final DriverRepository _driverRepository;
  DriverSetActiveUseCase(this._driverRepository);
  @override
  Future<DataState> call({void param}) {
    return _driverRepository.setActive();
  }
}
