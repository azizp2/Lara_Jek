import 'package:lara_jek/app/domain/entity/booking.dart';
import 'package:lara_jek/app/domain/repository/booking_repository.dart';
import 'package:lara_jek/core/network/data_state.dart';
import 'package:lara_jek/core/use_case/app_use_case.dart';

class BookingGetByIdUseCase
    extends AppUseCase<Future<DataState<BookingEntity>>, int> {
  final BookingRepository _bookingRepository;

  BookingGetByIdUseCase(this._bookingRepository);
  @override
  Future<DataState<BookingEntity>> call({int? param}) {
    return _bookingRepository.getById(param!);
  }
}
