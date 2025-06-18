// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fcm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FcmParamEntityImpl _$$FcmParamEntityImplFromJson(Map<String, dynamic> json) =>
    _$FcmParamEntityImpl(
      fcmToken: json['fcm_token'] as String,
      deviceType: json['device_type'] as String,
    );

Map<String, dynamic> _$$FcmParamEntityImplToJson(
        _$FcmParamEntityImpl instance) =>
    <String, dynamic>{
      'fcm_token': instance.fcmToken,
      'device_type': instance.deviceType,
    };
