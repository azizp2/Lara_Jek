import 'package:lara_jek/app/domain/entity/booking.dart';
import 'package:lara_jek/app/domain/repository/booking_repository.dart';
import 'package:lara_jek/core/network/data_state.dart';
import 'package:lara_jek/core/use_case/app_use_case.dart';

class BookingCreateUseCase
    extends AppUseCase<Future<DataState<int>>, BookingCreateParamEntity> {
  final BookingRepository _bookingRepository;

  BookingCreateUseCase(this._bookingRepository);

  @override
  Future<DataState<int>> call({BookingCreateParamEntity? param}) {
    return _bookingRepository.create(param!);
  }
}
