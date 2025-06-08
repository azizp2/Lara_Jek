import 'dart:convert';

import 'package:lara_jek/app/data/model/user.dart';
import 'package:lara_jek/app/data/source/auth_api_service.dart';
import 'package:lara_jek/app/domain/entity/auth.dart';
import 'package:lara_jek/app/domain/entity/user.dart';
import 'package:lara_jek/app/domain/repository/auth_repository.dart';
import 'package:lara_jek/core/constant/constant.dart';
import 'package:lara_jek/core/helper/shared_preferences_helper.dart';
import 'package:lara_jek/core/network/data_state.dart';
import 'package:retrofit/dio.dart';

class AuthRepositoryImpl extends AuthRepository {
  final AuthApiService _authApiService;

  AuthRepositoryImpl(this._authApiService);

  @override
  Future<DataState> login(AuthLoginParamEntity param) {
    return handleResponse(() => _authApiService.login(body: param.toJson()),
        (json) async {
      final user = UserModel.fromJson(json);
      await SharedPreferencesHelper.setString(
          PREF_AUTH, 'Bearer ' + user.token);

      await SharedPreferencesHelper.setInt(PREF_ID, user.id);
      await SharedPreferencesHelper.setString(PREF_NAME, user.name);
      await SharedPreferencesHelper.setString(PREF_EMAIL, user.email);
      await SharedPreferencesHelper.setString(PREF_ROLE, user.rolem);
      await SharedPreferencesHelper.setString(PREF_PHONE, user.phone);
      await SharedPreferencesHelper.setString(
          PREF_PHOTO_URL, user.photoUrl ?? '');
      await SharedPreferencesHelper.setString(
          PREF_VEHICLE_NUMBER, user.driver?.vehicleNumber ?? "");

      return null;
    });
  }

  @override
  Future<DataState> register(AuthRegisterParamEntity param) {
    return handleResponse(() => _authApiService.register(body: param.toJson()),
        (p0) async {
      return null;
    });
  }

  @override
  Future<DataState> logout() {
    return handleResponse(() => _authApiService.logout(), (p0) async {
      return null;
    });
  }

  @override
  Future<DataState<UserDriverEntity>> getDetailDriver() {
    return handleResponse(() => _authApiService.get(), (json) async {
      final userModel = UserModel.fromJson(json['driver']);

      return UserDriverEntity(
          id: userModel.id,
          name: userModel.name,
          email: userModel.email,
          role: userModel.rolem,
          photoUrl: userModel.photoUrl!,
          phone: userModel.phone,
          isActive: userModel.driver!.isActive,
          VehicleNumber: userModel.driver!.vehicleNumber);
    });
  }
}
