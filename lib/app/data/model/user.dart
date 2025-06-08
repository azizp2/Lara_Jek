import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.g.dart';
part 'user.freezed.dart';

@freezed
sealed class User with _$User {
  factory User.model(
      {required String token,
      required int id,
      required String name,
      required String email,
      required String rolem,
      @JsonKey(name: 'whatsapp') required String phone,
      @JsonKey(name: 'photo_url') required String? photoUrl,
      DriverModel? driver}) = UserModel;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
sealed class Driver with _$Driver {
  factory Driver.model(
      {@JsonKey(name: 'vechicle_number') required String vehicleNumber,
      @JsonKey(name: 'is_active') required bool isActive}) = DriverModel;

  factory Driver.fromJson(Map<String, dynamic> json) => _$DriverFromJson(json);
}
