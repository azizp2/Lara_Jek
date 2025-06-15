import 'package:lara_jek/app/domain/repository/driver_repository.dart';
import 'package:lara_jek/core/network/data_state.dart';
import 'package:lara_jek/core/use_case/app_use_case.dart';

class DriverGetIntervalUseCase
    extends AppUseCase<Future<DataState<int>>, void> {
  final DriverRepository _driverRepository;

  DriverGetIntervalUseCase(this._driverRepository);

  @override
  Future<DataState<int>> call({void param}) {
    return _driverRepository.getInterval();
  }
}
