import 'package:lara_jek/app/domain/entity/booking.dart';
import 'package:lara_jek/app/domain/repository/booking_repository.dart';
import 'package:lara_jek/core/network/data_state.dart';
import 'package:lara_jek/core/use_case/app_use_case.dart';

class BookingUpdateStatusUseCase
    extends AppUseCase<Future<DataState>, BookingStatusParamEntity> {
  final BookingRepository _bookingRepository;

  BookingUpdateStatusUseCase(this._bookingRepository);
  @override
  Future<DataState> call({BookingStatusParamEntity? param}) {
    return _bookingRepository.updateStatus(param!);
  }
}
