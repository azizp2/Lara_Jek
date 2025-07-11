import 'dart:io';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:lara_jek/app/domain/entity/auth.dart';
import 'package:lara_jek/app/domain/entity/fcm.dart';
import 'package:lara_jek/app/use_case/auth/auth_login.dart';
import 'package:lara_jek/app/use_case/fcm_update.dart';
import 'package:lara_jek/core/constant/constant.dart';
import 'package:lara_jek/core/helper/shared_preferences_helper.dart';
import 'package:lara_jek/core/provider/app_provider.dart';

class LoginNotifier extends AppProvider {
  final AuthLoginUseCase _authLoginUseCase;
  final FcmUpdateUseCase _fcmUpdateUseCase;
  LoginNotifier(this._authLoginUseCase, this._fcmUpdateUseCase) {
    init();
  }

  String _role = '';
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  String get role => _role;
  TextEditingController get emailController => _emailController;
  TextEditingController get passwordController => _passwordController;

  @override
  Future<void> init() async {
    _checkRole();
  }

  _checkRole() async {
    showLoading();
    _role = await SharedPreferencesHelper.getString(PREF_ROLE) ?? '';
    hideLoading();
  }

  login() async {
    showLoading();
    final param = AuthLoginParamEntity(
        email: _emailController.text, password: _passwordController.text);
    final response = await _authLoginUseCase(param: param);
    snackBarMessage = response.message;
    hideLoading();
    updateFcmToken();
  }

  updateFcmToken() async {
    showLoading();

    final fcmToken = await FirebaseMessaging.instance.getToken();
    final deviceType = (Platform.isAndroid) ? 'android' : 'ios';
    final param = FcmParamEntity(fcmToken: fcmToken!, deviceType: deviceType);
    final response = await _fcmUpdateUseCase(param: param);
    snackBarMessage = response.message;

    hideLoading();
    _checkRole();
  }
}
