import 'package:lara_jek/app/domain/entity/booking.dart';
import 'package:lara_jek/core/network/data_state.dart';

abstract class BookingRepository {
  Future<DataState<List<BookingEntity>>> getAll(
      String? startDate, String? endDate);

  Future<DataState<BookingEntity>> getById(int id);
  Future<DataState<int>> create(BookingCreateParamEntity param);
  Future<DataState<int>> accept(int id);
  Future<DataState> updateStatus(BookingStatusParamEntity param);
  Future<DataState> cancel(int id);

  Future<DataState<int>> checkPrice(double param);
}
