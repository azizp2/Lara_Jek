import 'package:lara_jek/app/domain/entity/statistic.dart';
import 'package:lara_jek/core/network/data_state.dart';

abstract class DriverRepository {
  Future<DataState<int>> getInterval();
  Future<DataState> setActive();
  Future<DataState<StatisticEntity>> getStatistic();
}
