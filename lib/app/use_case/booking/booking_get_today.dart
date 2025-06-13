import 'package:lara_jek/app/domain/entity/booking.dart';
import 'package:lara_jek/app/domain/repository/booking_repository.dart';
import 'package:lara_jek/core/helper/date_time_helper.dart';
import 'package:lara_jek/core/network/data_state.dart';
import 'package:lara_jek/core/use_case/app_use_case.dart';

class BookingGetTodayUseCase
    extends AppUseCase<Future<DataState<List<BookingEntity>>>, void> {
  final BookingRepository _bookingRepository;

  BookingGetTodayUseCase(this._bookingRepository);

  @override
  Future<DataState<List<BookingEntity>>> call({void param}) async {
    final datetime = DateTime.now();
    final dateTimeString =
        DateTimeHelper.formatDateTime(dateTime: datetime, format: 'yyyy-MM-dd');

    return _bookingRepository.getAll(dateTimeString, dateTimeString);
  }
}
