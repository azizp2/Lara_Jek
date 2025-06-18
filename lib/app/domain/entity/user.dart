import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.g.dart';
part 'user.freezed.dart';

@freezed
sealed class User with _$User {
  factory User.customerEntity({
    required int id,
    required String name,
    required String email,
    required String role,
    @JsonKey(name: 'whatsapp') required String phone,
  }) = UserCustomerEntity;

  factory User.driverEntity({
    required int id,
    required String name,
    required String email,
    required String role,
    @JsonKey(name: 'photo_url') required String photoUrl,
    @JsonKey(name: 'whatsapp') required String phone,
    @JsonKey(name: 'is_active') required bool isActive,
    @JsonKey(name: 'vehicle_number') required String VehicleNumber,
    @JsonKey(name: 'avg_rating') required double avgRating,
  }) = UserDriverEntity;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
