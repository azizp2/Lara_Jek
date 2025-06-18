import 'package:flutter/material.dart';
import 'package:lara_jek/app/data/repository/booking_repository.dart';
import 'package:lara_jek/app/domain/entity/booking.dart';
import 'package:lara_jek/app/domain/repository/booking_repository.dart';
import 'package:lara_jek/app/use_case/booking/booking_send_rating.dart';
import 'package:lara_jek/core/provider/app_provider.dart';

class RatingNotifier extends AppProvider {
  final int _id;
  final BookingSendRatingUseCase _bookingSendRatingUseCase;

  RatingNotifier(this._id, this._bookingSendRatingUseCase);

  bool _isSuccess = false;
  double _rate = 0;
  TextEditingController _commentController = TextEditingController();

  bool get isSuccess => _isSuccess;
  double get rate => _rate;
  TextEditingController get commentController => _commentController;

  set rate(double param) => _rate = param;

  @override
  Future<void> init() {
    throw UnimplementedError();
  }

  send() async {
    showLoading();

    final param = BookingParamRatingEntity(
        id: _id, rating: _rate.toInt(), comment: _commentController.text);
    final response = await _bookingSendRatingUseCase(param: param);

    if (response.success) _isSuccess = true;

    snackBarMessage = response.message;
    hideLoading();
  }
}
