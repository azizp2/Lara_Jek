import 'package:flutter/material.dart';
import 'package:lara_jek/app/persentation/login/login_notifier.dart';
import 'package:lara_jek/core/helper/global_helper.dart';
import 'package:lara_jek/core/widget/app_widget.dart';

class LoginScreen extends AppWidget<LoginNotifier, void, void> {
  @override
  Widget bodyBuild(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            const SizedBox(height: 40),

            // App Title
            Text(
              'Lara Jek',
              style: GlobalHelper.getTextTheme(context,
                      appTextStyle: AppTextStyle.HEADLINE_LARGE)
                  ?.copyWith(
                color: GlobalHelper.getColorScheme(context).primary,
              ),
            ),

            const SizedBox(height: 10),

            // Welcome Messages
            Text(
              'Selamat datang kembali',
              style: GlobalHelper.getTextTheme(context,
                  appTextStyle: AppTextStyle.TITLE_LARGE),
            ),
            Text(
              'Silahkan masuk untuk melanjutkan',
              style: GlobalHelper.getTextTheme(context,
                      appTextStyle: AppTextStyle.BODY_MEDIUM)
                  ?.copyWith(
                color: GlobalHelper.getColorScheme(context).onSurfaceVariant,
              ),
            ),

            const SizedBox(height: 30),

            // Email Field
            Text(
              'Email',
              style: GlobalHelper.getTextTheme(context,
                  appTextStyle: AppTextStyle.BODY_MEDIUM),
            ),
            const SizedBox(height: 10),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                hintText: 'Masukkan email anda',
                prefixIcon: Icon(Icons.email_outlined),
              ),
            ),

            const SizedBox(height: 20),

            // Password Field
            Text(
              'Password',
              style: GlobalHelper.getTextTheme(context,
                  appTextStyle: AppTextStyle.BODY_MEDIUM),
            ),
            const SizedBox(height: 10),
            TextField(
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              decoration: const InputDecoration(
                hintText: 'Masukkan password anda',
                prefixIcon: Icon(Icons.lock_outline),
              ),
            ),

            const SizedBox(height: 30),

            // Login Button
            FilledButton(
              onPressed: () {},
              child: const Text('Login'),
            ),

            const SizedBox(height: 10),

            // Register Prompt
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Belum punya akun?',
                  style: GlobalHelper.getTextTheme(context,
                      appTextStyle: AppTextStyle.BODY_MEDIUM),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Daftar'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
