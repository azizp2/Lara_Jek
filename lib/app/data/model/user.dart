import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.g.dart';
part 'user.freezed.dart';

@freezed
sealed class User with _$User {
  factory User.model(
      {required String? token,
      required int id,
      required String name,
      required String email,
      required String role,
      @JsonKey(name: 'whatsapp') required String phone,
      @JsonKey(name: 'photo_url') required String? photoUrl,
      @JsonKey(name: 'avg_rating') required double? avgRating,
      DriverModel? driver}) = UserModel;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
sealed class Driver with _$Driver {
  factory Driver.model({
    @JsonKey(name: 'vehicle_number') required String vehicleNumber,
    @JsonKey(name: 'is_active') required bool isActive,
    @JsonKey(name: 'avg_rating') required double avgRating,
  }) = DriverModel;

  factory Driver.fromJson(Map<String, dynamic> json) => _$DriverFromJson(json);
}
