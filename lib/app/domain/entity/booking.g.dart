// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookingEntityImpl _$$BookingEntityImplFromJson(Map<String, dynamic> json) =>
    _$BookingEntityImpl(
      id: (json['id'] as num).toInt(),
      latitudeOrigin: (json['latitude_origin'] as num).toDouble(),
      longitudeOrigin: (json['longitude_origin'] as num).toDouble(),
      addressOrigin: json['address_origin'] as String,
      latitudeDestination: (json['latitude_destination'] as num).toDouble(),
      longitudeDestination: (json['longitude_destination'] as num).toDouble(),
      addressDestination: json['address_destination'] as String,
      distance: (json['distance'] as num).toDouble(),
      timeEstimate: (json['time_estimate'] as num).toInt(),
      price: (json['price'] as num).toDouble(),
      status: json['status'] as String,
      rating: (json['rating'] as num?)?.toInt(),
      comment: json['comment'] as String?,
      customer:
          UserCustomerEntity.fromJson(json['customer'] as Map<String, dynamic>),
      driver: json['driver'] == null
          ? null
          : UserDriverEntity.fromJson(json['driver'] as Map<String, dynamic>),
      createdAt: json['created_at'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$BookingEntityImplToJson(_$BookingEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'latitude_origin': instance.latitudeOrigin,
      'longitude_origin': instance.longitudeOrigin,
      'address_origin': instance.addressOrigin,
      'latitude_destination': instance.latitudeDestination,
      'longitude_destination': instance.longitudeDestination,
      'address_destination': instance.addressDestination,
      'distance': instance.distance,
      'time_estimate': instance.timeEstimate,
      'price': instance.price,
      'status': instance.status,
      'rating': instance.rating,
      'comment': instance.comment,
      'customer': instance.customer,
      'driver': instance.driver,
      'created_at': instance.createdAt,
      'runtimeType': instance.$type,
    };

_$BookingCreateParamEntityImpl _$$BookingCreateParamEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$BookingCreateParamEntityImpl(
      latitudeOrigin: (json['latitude_origin'] as num).toDouble(),
      longitudeOrigin: (json['longitude_origin'] as num).toDouble(),
      addressOrigin: json['address_origin'] as String,
      latitudeDestination: (json['latitude_destination'] as num).toDouble(),
      longitudeDestination: (json['longitude_destination'] as num).toDouble(),
      addressDestination: json['address_destination'] as String,
      distance: (json['distance'] as num).toDouble(),
      timeEstimate: (json['time_estimate'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$BookingCreateParamEntityImplToJson(
        _$BookingCreateParamEntityImpl instance) =>
    <String, dynamic>{
      'latitude_origin': instance.latitudeOrigin,
      'longitude_origin': instance.longitudeOrigin,
      'address_origin': instance.addressOrigin,
      'latitude_destination': instance.latitudeDestination,
      'longitude_destination': instance.longitudeDestination,
      'address_destination': instance.addressDestination,
      'distance': instance.distance,
      'time_estimate': instance.timeEstimate,
      'runtimeType': instance.$type,
    };

_$BookingStatusParamEntityImpl _$$BookingStatusParamEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$BookingStatusParamEntityImpl(
      id: (json['id'] as num).toInt(),
      status: json['status'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$BookingStatusParamEntityImplToJson(
        _$BookingStatusParamEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'runtimeType': instance.$type,
    };

_$BookingNotifEntityImpl _$$BookingNotifEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$BookingNotifEntityImpl(
      id: (json['id'] as num).toInt(),
      text: json['text'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$BookingNotifEntityImplToJson(
        _$BookingNotifEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'runtimeType': instance.$type,
    };

_$BookingParamRatingEntityImpl _$$BookingParamRatingEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$BookingParamRatingEntityImpl(
      id: (json['booking_id'] as num).toInt(),
      rating: (json['rating'] as num).toInt(),
      comment: json['comment'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$BookingParamRatingEntityImplToJson(
        _$BookingParamRatingEntityImpl instance) =>
    <String, dynamic>{
      'booking_id': instance.id,
      'rating': instance.rating,
      'comment': instance.comment,
      'runtimeType': instance.$type,
    };
