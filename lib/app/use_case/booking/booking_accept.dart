import 'package:lara_jek/app/domain/repository/booking_repository.dart';
import 'package:lara_jek/core/network/data_state.dart';
import 'package:lara_jek/core/use_case/app_use_case.dart';

class BookingAcceptUseCase extends AppUseCase<Future<DataState<int>>, int> {
  final BookingRepository _bookingRepository;

  BookingAcceptUseCase(this._bookingRepository);
  @override
  Future<DataState<int>> call({int? param}) {
    return _bookingRepository.accept(param!);
  }
}
