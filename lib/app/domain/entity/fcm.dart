import 'package:freezed_annotation/freezed_annotation.dart';

part 'fcm.freezed.dart';
part 'fcm.g.dart';

@freezed
class Fcm with _$Fcm {
  const factory Fcm.paramEntity({
    @JsonKey(name: 'fcm_token') required String fcmToken,
    @JsonKey(name: 'device_type') required String deviceType,
  }) = FcmParamEntity;

  factory Fcm.fromJson(Map<String, dynamic> json) => _$FcmFromJson(json);
}
