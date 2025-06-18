import 'package:lara_jek/app/domain/entity/booking.dart';
import 'package:lara_jek/app/domain/repository/booking_repository.dart';
import 'package:lara_jek/core/network/data_state.dart';
import 'package:lara_jek/core/use_case/app_use_case.dart';

class BookingSendRatingUseCase
    extends AppUseCase<Future<DataState>, BookingParamRatingEntity> {
  final BookingRepository _bookingRepository;

  BookingSendRatingUseCase(this._bookingRepository);

  @override
  Future<DataState> call({BookingParamRatingEntity? param}) {
    return _bookingRepository.sendRating(param!);
  }
}
