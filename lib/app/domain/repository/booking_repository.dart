import 'package:lara_jek/app/domain/entity/booking.dart';
import 'package:lara_jek/core/network/data_state.dart';

abstract class BookingRepository {
  Future<DataState<List<BookingEntity>>> getAll(
      String? startDate, String? endDate);
}
