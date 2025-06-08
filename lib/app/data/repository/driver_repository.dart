import 'package:lara_jek/app/data/source/driver_api_service.dart';
import 'package:lara_jek/app/domain/entity/statistic.dart';
import 'package:lara_jek/app/domain/repository/driver_repository.dart';
import 'package:lara_jek/core/network/data_state.dart';

class DriverRepositoryImpl extends DriverRepository {
  final DriverApiService _driverApiService;

  DriverRepositoryImpl(this._driverApiService);

  @override
  Future<DataState<int>> getInterval() {
    return handleResponse(() => _driverApiService.getSetting(), (json) async {
      return json['interval_seconds'];
    });
  }

  @override
  Future<DataState> setActive() {
    return handleResponse(() => _driverApiService.setActive(), (json) async {
      return null;
    });
  }

  @override
  Future<DataState<StatisticEntity>> getStatistic() {
    return handleResponse(() => _driverApiService.getStatistic(), (json) async {
      return StatisticEntity.fromJson(json['stats']);
    });
  }
}
