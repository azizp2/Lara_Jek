import 'package:flutter/material.dart';
import 'package:lara_jek/app/domain/entity/auth.dart';
import 'package:lara_jek/app/persentation/widget/custom_snackbar.dart';
import 'package:lara_jek/app/use_case/auth_register.dart';
import 'package:lara_jek/core/provider/app_provider.dart';

class RegisterNotifier extends AppProvider {
  final AuthRegisterUseCase _authRegisterUseCase;

  RegisterNotifier(this._authRegisterUseCase);

  bool _isSuccess = false;
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  bool get isSuccess => _isSuccess;
  TextEditingController get nameController => _nameController;
  TextEditingController get emailController => _emailController;
  TextEditingController get phoneController => _phoneController;
  TextEditingController get passwordController => _passwordController;

  @override
  Future<void> init() async {}

  // register() async {
  Future<void> register(BuildContext context) async {
    showLoading();

    final param = AuthRegisterParamEntity(
        name: nameController.text,
        email: emailController.text,
        password: passwordController.text,
        phone: phoneController.text);

    final response = await _authRegisterUseCase(param: param);
    if (response.success) {
      _isSuccess = true;
    }

    // snackBarMessage = response.message;
    showCustomSnackbar(context, snackBarMessage);

    hideLoading();
  }
}
