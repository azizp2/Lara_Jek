import 'package:lara_jek/app/domain/repository/booking_repository.dart';
import 'package:lara_jek/core/network/data_state.dart';
import 'package:lara_jek/core/use_case/app_use_case.dart';

class BookingCancelUseCase extends AppUseCase<Future<DataState>, int> {
  final BookingRepository _bookingRepository;

  BookingCancelUseCase(this._bookingRepository);
  @override
  Future<DataState> call({int? param}) {
    return _bookingRepository.cancel(param!);
  }
}
