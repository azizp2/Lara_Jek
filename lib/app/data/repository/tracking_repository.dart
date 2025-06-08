import 'dart:convert';

import 'package:lara_jek/app/data/source/tracking_api_service.dart';
import 'package:lara_jek/app/domain/entity/booking.dart';
import 'package:lara_jek/app/domain/entity/tracking.dart';
import 'package:lara_jek/app/domain/repository/tracking_repository.dart';
import 'package:lara_jek/core/network/data_state.dart';

class TrackingRepositoryImpl extends TrackingRepository {
  final TrackingApiService _trackingApiService;

  TrackingRepositoryImpl(this._trackingApiService);

  @override
  Future<DataState<List<BookingNotifEntity>>> send(TrackingParamEntity param) {
    return handleResponse(() => _trackingApiService.send(body: param.toJson()),
        (json) async {
      final availableBookings = json['available_bookings'];
      if (availableBookings != null) {
        return List<BookingNotifEntity>.from(availableBookings.map((item) => {
              BookingNotifEntity(
                  id: item['id'], text: 'Dari ${item['pickup_address']}')
            }));
      } else {
        return [];
      }
    });
  }

  @override
  Future<DataState<TrackingEntity>> getById(int id) {
    return handleResponse(() => _trackingApiService.getById(id: id),
        (json) async {
      return TrackingEntity(
          latitude: json['last_position']['latitude'],
          longitude: json['last_position']['longitude'],
          status: json['booking']['status']);
    });
  }
}
