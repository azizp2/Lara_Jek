import 'package:freezed_annotation/freezed_annotation.dart';

part 'tracking.g.dart';
part 'tracking.freezed.dart';

@freezed
sealed class Tracking with _$Tracking {
  factory Tracking.paramEntity({
    required double latitude,
    required double longitude,
  }) = TrackingParamEntity;

  factory Tracking.entity(
      {required double latitude,
      required double longitude,
      required String status}) = TrackingEntity;

  factory Tracking.fromJson(Map<String, dynamic> json) =>
      _$TrackingFromJson(json);
}
