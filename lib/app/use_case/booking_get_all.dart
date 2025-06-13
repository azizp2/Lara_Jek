import 'package:lara_jek/app/domain/entity/booking.dart';
import 'package:lara_jek/app/domain/repository/booking_repository.dart';
import 'package:lara_jek/core/network/data_state.dart';
import 'package:lara_jek/core/use_case/app_use_case.dart';

class BookingGetAllUseCase
    extends AppUseCase<Future<DataState<List<BookingEntity>>>, void> {
  final BookingRepository _bookingRepository;

  BookingGetAllUseCase(this._bookingRepository);

  @override
  Future<DataState<List<BookingEntity>>> call({void param}) {
    return _bookingRepository.getAll(null, null);
  }
}
