// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      token: json['token'] as String,
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      email: json['email'] as String,
      rolem: json['rolem'] as String,
      phone: json['whatsapp'] as String,
      photoUrl: json['photo_url'] as String?,
      driver: json['driver'] == null
          ? null
          : DriverModel.fromJson(json['driver'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'rolem': instance.rolem,
      'whatsapp': instance.phone,
      'photo_url': instance.photoUrl,
      'driver': instance.driver,
    };

_$DriverModelImpl _$$DriverModelImplFromJson(Map<String, dynamic> json) =>
    _$DriverModelImpl(
      vehicleNumber: json['vechicle_number'] as String,
      isActive: json['is_active'] as bool,
    );

Map<String, dynamic> _$$DriverModelImplToJson(_$DriverModelImpl instance) =>
    <String, dynamic>{
      'vechicle_number': instance.vehicleNumber,
      'is_active': instance.isActive,
    };
