import 'package:lara_jek/app/domain/entity/booking.dart';
import 'package:lara_jek/app/use_case/booking/booking_get_all.dart';
import 'package:lara_jek/core/provider/app_provider.dart';

class HistoryNotifier extends AppProvider {
  final BookingGetAllUseCase _bookingGetAllUseCase;

  HistoryNotifier(this._bookingGetAllUseCase) {
    init();
  }

  List<BookingEntity> _list = [];

  List<BookingEntity> get list => _list;

  @override
  Future<void> init() async {
    _getBooking();
  }

  _getBooking() async {
    showLoading();

    final response = await _bookingGetAllUseCase();
    if (response.success) {
      _list = response.data!;
    } else {
      errorMessage = response.message;
    }

    hideLoading();
  }
}
