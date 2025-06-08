import 'package:lara_jek/app/domain/entity/booking.dart';
import 'package:lara_jek/app/domain/entity/tracking.dart';
import 'package:lara_jek/core/network/data_state.dart';

abstract class TrackingRepository {
  Future<DataState<List<BookingNotifEntity>>> send(TrackingParamEntity param);
  Future<DataState<TrackingEntity>> getById(int id);
}
