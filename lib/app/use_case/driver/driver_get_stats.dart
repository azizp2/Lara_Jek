import 'package:lara_jek/app/domain/entity/statistic.dart';
import 'package:lara_jek/app/domain/repository/driver_repository.dart';
import 'package:lara_jek/core/network/data_state.dart';
import 'package:lara_jek/core/use_case/app_use_case.dart';

class DriverGetStatsUseCase
    extends AppUseCase<Future<DataState<StatisticEntity>>, void> {
  final DriverRepository _driverRepository;

  DriverGetStatsUseCase(this._driverRepository);

  @override
  Future<DataState<StatisticEntity>> call({void param}) {
    return _driverRepository.getStatistic();
  }
}
