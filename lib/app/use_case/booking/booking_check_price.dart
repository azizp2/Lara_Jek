import 'package:lara_jek/app/domain/repository/booking_repository.dart';
import 'package:lara_jek/core/network/data_state.dart';
import 'package:lara_jek/core/use_case/app_use_case.dart';

class BookingCheckPriceUseCase
    extends AppUseCase<Future<DataState<int>>, double> {
  final BookingRepository _bookingRepository;

  BookingCheckPriceUseCase(this._bookingRepository);

  @override
  Future<DataState<int>> call({double? param}) {
    return _bookingRepository.checkPrice(param!);
  }
}
