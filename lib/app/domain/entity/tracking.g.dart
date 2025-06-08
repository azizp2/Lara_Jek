// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tracking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TrackingParamEntityImpl _$$TrackingParamEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$TrackingParamEntityImpl(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$TrackingParamEntityImplToJson(
        _$TrackingParamEntityImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'runtimeType': instance.$type,
    };

_$TrackingEntityImpl _$$TrackingEntityImplFromJson(Map<String, dynamic> json) =>
    _$TrackingEntityImpl(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      status: json['status'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$TrackingEntityImplToJson(
        _$TrackingEntityImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'status': instance.status,
      'runtimeType': instance.$type,
    };
