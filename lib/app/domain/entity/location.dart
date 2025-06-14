import 'package:freezed_annotation/freezed_annotation.dart';

part 'location.g.dart';
part 'location.freezed.dart';

@freezed
sealed class Location with _$Location {
  factory Location.entity(
      {required String address,
      required double latitude,
      required double longitude}) = LocationEntity;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}
