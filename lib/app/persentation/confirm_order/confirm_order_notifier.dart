import 'package:lara_jek/app/domain/entity/booking.dart';
import 'package:lara_jek/app/use_case/booking/booking_accept.dart';
import 'package:lara_jek/app/use_case/booking/booking_get_by_id.dart';
import 'package:lara_jek/core/provider/app_provider.dart';

class ConfirmOrderNotifier extends AppProvider {
  final int _id;
  final BookingGetByIdUseCase _bookingGetByIdUseCase;
  final BookingAcceptUseCase _bookingAcceptUseCase;

  ConfirmOrderNotifier(
      this._id, this._bookingGetByIdUseCase, this._bookingAcceptUseCase) {
    init();
  }

  int _idSuccess = -1;
  BookingEntity? _booking;

  int get idSuccess => _idSuccess;
  BookingEntity? get booking => _booking;

  @override
  Future<void> init() async {
    _getBooking();
  }

  _getBooking() async {
    showLoading();
    final response = await _bookingGetByIdUseCase(param: _id);
    if (response.success) {
      _booking = response.data!;
    } else {
      errorMessage = response.message;
    }
    hideLoading();
  }

  accept() async {
    showLoading();

    final response = await _bookingAcceptUseCase(param: _booking!.id);
    if (response.success) {
      _idSuccess = response.data!;
    } else {
      snackBarMessage = response.message;
    }
    hideLoading();
  }
}
