import 'package:lara_jek/app/domain/entity/tracking.dart';
import 'package:lara_jek/app/domain/repository/tracking_repository.dart';
import 'package:lara_jek/core/network/data_state.dart';
import 'package:lara_jek/core/use_case/app_use_case.dart';

class TrackingGetByIdUseCase
    extends AppUseCase<Future<DataState<TrackingEntity>>, int> {
  final TrackingRepository _trackingRepository;

  TrackingGetByIdUseCase(this._trackingRepository);
  @override
  Future<DataState<TrackingEntity>> call({int? param}) {
    return _trackingRepository.getById(param!);
  }
}
