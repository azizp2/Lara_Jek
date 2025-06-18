// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserCustomerEntityImpl _$$UserCustomerEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$UserCustomerEntityImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      email: json['email'] as String,
      role: json['role'] as String,
      phone: json['whatsapp'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UserCustomerEntityImplToJson(
        _$UserCustomerEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'role': instance.role,
      'whatsapp': instance.phone,
      'runtimeType': instance.$type,
    };

_$UserDriverEntityImpl _$$UserDriverEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$UserDriverEntityImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      email: json['email'] as String,
      role: json['role'] as String,
      photoUrl: json['photo_url'] as String,
      phone: json['whatsapp'] as String,
      isActive: json['is_active'] as bool,
      VehicleNumber: json['vehicle_number'] as String,
      avgRating: (json['avg_rating'] as num).toDouble(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UserDriverEntityImplToJson(
        _$UserDriverEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'role': instance.role,
      'photo_url': instance.photoUrl,
      'whatsapp': instance.phone,
      'is_active': instance.isActive,
      'vehicle_number': instance.VehicleNumber,
      'avg_rating': instance.avgRating,
      'runtimeType': instance.$type,
    };
