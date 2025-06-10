import 'package:flutter/material.dart';
import 'package:lara_jek/app/persentation/c_home/c_home_screen.dart';
import 'package:lara_jek/app/persentation/d_home/d_home_screen.dart';
import 'package:lara_jek/app/persentation/login/login_notifier.dart';
import 'package:lara_jek/app/persentation/register/register_screen.dart';
import 'package:lara_jek/core/helper/global_helper.dart';
import 'package:lara_jek/core/widget/app_widget.dart';

class LoginScreen extends AppWidget<LoginNotifier, void, void> {
  @override
  Widget bodyBuild(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          // Background Lengkungan
          Positioned(
            top: 4,
            left: 4,
            right: 4,
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                color: GlobalHelper.getColorScheme(context).primary,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),

          // Konten Utama
          Padding(
            padding: const EdgeInsets.all(20),
            child: ListView(
              children: [
                const SizedBox(height: 20),
                Text('Lara Jek',
                    style: GlobalHelper.getTextTheme(context,
                            appTextStyle: AppTextStyle.HEADLINE_LARGE)
                        ?.copyWith(color: Colors.white)
                        ?.copyWith(fontWeight: FontWeight.bold)),
                const SizedBox(height: 10),
                Text(
                  'Selamat datang kembali',
                  style: GlobalHelper.getTextTheme(context,
                          appTextStyle: AppTextStyle.TITLE_LARGE)
                      ?.copyWith(color: Colors.white70),
                ),
                const SizedBox(height: 10),
                Text(
                  'Silahkan masuk untuk melanjutkan',
                  style: GlobalHelper.getTextTheme(context,
                          appTextStyle: AppTextStyle.BODY_MEDIUM)
                      ?.copyWith(
                    color: Colors.white60,
                  ),
                ),
                const SizedBox(height: 50),
                Text(
                  'Email',
                  style: GlobalHelper.getTextTheme(context,
                      appTextStyle: AppTextStyle.BODY_MEDIUM),
                ),
                const SizedBox(height: 10),
                const TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'Masukkan email anda',
                    prefixIcon: Icon(Icons.email_outlined),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Password',
                  style: GlobalHelper.getTextTheme(context,
                      appTextStyle: AppTextStyle.BODY_MEDIUM),
                ),
                const SizedBox(height: 10),
                const TextField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Masukkan password anda',
                    prefixIcon: Icon(Icons.lock_outline),
                  ),
                ),
                const SizedBox(height: 30),
                FilledButton(
                  onPressed: () => _onPressLogin(context),
                  child: const Text('Login'),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Belum punya akun?',
                      style: GlobalHelper.getTextTheme(context,
                          appTextStyle: AppTextStyle.BODY_MEDIUM),
                    ),
                    TextButton(
                      onPressed: () => _onPressRegister(context),
                      child: const Text('Daftar'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _onPressRegister(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => RegisterScreen()),
    );
  }

  _onPressLogin(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DHomeScreen()),
    );
  }
}
