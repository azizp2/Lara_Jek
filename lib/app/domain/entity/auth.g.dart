// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthLoginParamEntityImpl _$$AuthLoginParamEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthLoginParamEntityImpl(
      email: json['email'] as String,
      password: json['password'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AuthLoginParamEntityImplToJson(
        _$AuthLoginParamEntityImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'runtimeType': instance.$type,
    };

_$AuthRegisterParamEntityImpl _$$AuthRegisterParamEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthRegisterParamEntityImpl(
      name: json['name'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      phone: json['whatsapp'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AuthRegisterParamEntityImplToJson(
        _$AuthRegisterParamEntityImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'whatsapp': instance.phone,
      'runtimeType': instance.$type,
    };
