import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lara_jek/app/domain/entity/user.dart';

part 'booking.g.dart';
part 'booking.freezed.dart';

@freezed
sealed class Booking with _$Booking {
  factory Booking.driverEntity(
      {required int id,
      @JsonKey(name: 'latitude_origin') required double latitudeOrigin,
      @JsonKey(name: 'longitude_origin') required double longitudeOrigin,
      @JsonKey(name: 'address_origin') required String addressOrigin,
      @JsonKey(name: 'latitude_destination')
      required double latitudeDestination,
      @JsonKey(name: 'longitude_destination')
      required double longitudeDestination,
      @JsonKey(name: 'address_destination') required String addressDestination,
      required double distance,
      @JsonKey(name: 'time_estimate') required int timeEstimate,
      required double price,
      required String status,
      required UserCustomerEntity customer,
      UserDriverEntity? driver,
      @JsonKey(name: 'created_at') required String createdAt}) = BookingEntity;

  factory Booking.createParamEntity({
    @JsonKey(name: 'latitude_origin') required double latitudeOrigin,
    @JsonKey(name: 'longitude_origin') required double longitudeOrigin,
    @JsonKey(name: 'address_origin') required String addressOrigin,
    @JsonKey(name: 'latitude_destination') required double latitudeDestination,
    @JsonKey(name: 'longitude_destination')
    required double longitudeDestination,
    @JsonKey(name: 'address_destination') required String addressDestination,
    required double distance,
    @JsonKey(name: 'time_estimate') required int timeEstimate,
  }) = BookingCreateParamEntity;

  factory Booking.statusParamEntity({required int id, required String status}) =
      BookingStatusParamEntity;

  factory Booking.notifEntity({required int id, required String text}) =
      BookingNotifEntity;

  factory Booking.fromJson(Map<String, dynamic> json) =>
      _$BookingFromJson(json);
}
