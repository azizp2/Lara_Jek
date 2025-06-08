import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth.g.dart';
part 'auth.freezed.dart';

@freezed
sealed class Auth with _$Auth {
  factory Auth.loginParamEntity(
      {required String email, required String password}) = AuthLoginParamEntity;

  factory Auth.registerParamEntity({
    required String name,
    required String email,
    required String password,
    @JsonKey(name: 'whatsapp') required String phone,
  }) = AuthRegisterParamEntity;

  factory Auth.fromJson(Map<String, dynamic> json) => _$AuthFromJson(json);
}
