import 'dart:convert';

import 'package:lara_jek/app/data/source/booking_api_service.dart';
import 'package:lara_jek/app/domain/entity/booking.dart';
import 'package:lara_jek/app/domain/repository/booking_repository.dart';
import 'package:lara_jek/core/network/data_state.dart';
import 'package:retrofit/dio.dart';

class BookingRepositoryImpl extends BookingRepository {
  final BookingApiService _bookingApiService;

  BookingRepositoryImpl(this._bookingApiService);

  @override
  Future<DataState<List<BookingEntity>>> getAll(
      String? startDate, String? endDate) {
    return handleResponse(
        () =>
            _bookingApiService.getAll(startDate: startDate, endtDate: endDate),
        (json) async {
      return List<BookingEntity>.from(
          (json).map((item) => BookingEntity.fromJson(item)));
    });
  }

  @override
  Future<DataState<BookingEntity>> getById(int id) {
    return handleResponse(() => _bookingApiService.getById(id: id),
        (json) async {
      return BookingEntity.fromJson(json);
    });
  }
}
