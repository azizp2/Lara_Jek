import 'package:lara_jek/app/domain/entity/booking.dart';
import 'package:lara_jek/app/domain/entity/tracking.dart';
import 'package:lara_jek/app/domain/repository/tracking_repository.dart';
import 'package:lara_jek/core/network/data_state.dart';
import 'package:lara_jek/core/use_case/app_use_case.dart';

class TrackingSendUseCase extends AppUseCase<
    Future<DataState<List<BookingNotifEntity>>>, TrackingParamEntity> {
  final TrackingRepository _trackingRepository;

  TrackingSendUseCase(this._trackingRepository);

  @override
  Future<DataState<List<BookingNotifEntity>>> call(
      {TrackingParamEntity? param}) {
    return _trackingRepository.send(param!);
  }
}
