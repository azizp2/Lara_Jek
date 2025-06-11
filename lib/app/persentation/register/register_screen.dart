import 'package:flutter/material.dart';
import 'package:lara_jek/app/persentation/register/register_notifier.dart';
import 'package:lara_jek/core/helper/global_helper.dart';
import 'package:lara_jek/core/widget/app_widget.dart';

class RegisterScreen extends AppWidget<RegisterNotifier, void, void> {
  @override
  Widget bodyBuild(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          // Kotak hijau fixed dengan judul dan subtitle di dalamnya
          Positioned(
            top: 4,
            left: 4,
            right: 4,
            child: Container(
              height: 130, // cukup tinggi untuk judul + subtitle
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              decoration: BoxDecoration(
                color: GlobalHelper.getColorScheme(context).primary,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Daftar Akun',
                    style: GlobalHelper.getTextTheme(context,
                            appTextStyle: AppTextStyle.HEADLINE_LARGE)
                        ?.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Bergabung dengan Lara Jek',
                    style: GlobalHelper.getTextTheme(context,
                            appTextStyle: AppTextStyle.TITLE_LARGE)
                        ?.copyWith(color: Colors.white70),
                  ),
                ],
              ),
            ),
          ),

          // Konten form di bawah kotak hijau dengan padding top sesuai tinggi kotak hijau + margin
          Positioned.fill(
            top: 150, // 160 tinggi kotak hijau + 10 margin
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ListView(
                children: [
                  // Form fields, tombol, dll
                  Text(
                    'Nama Lengkap',
                    style: GlobalHelper.getTextTheme(context,
                        appTextStyle: AppTextStyle.BODY_MEDIUM),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    controller: notifier.nameController,
                    keyboardType: TextInputType.name,
                    textCapitalization: TextCapitalization.words,
                    decoration: const InputDecoration(
                      hintText: 'Masukkan nama lengkap anda',
                      prefixIcon: Icon(Icons.person_2_outlined),
                    ),
                  ),

                  const SizedBox(height: 15),

                  Text(
                    'Email Address',
                    style: GlobalHelper.getTextTheme(context,
                        appTextStyle: AppTextStyle.BODY_MEDIUM),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    controller: notifier.emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      hintText: 'Masukkan email anda',
                      prefixIcon: Icon(Icons.mail_outline),
                    ),
                  ),

                  const SizedBox(height: 15),

                  Text(
                    'Phone',
                    style: GlobalHelper.getTextTheme(context,
                        appTextStyle: AppTextStyle.BODY_MEDIUM),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    controller: notifier.phoneController,
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(
                      hintText: 'Masukkan no telepon anda',
                      prefixIcon: Icon(Icons.phone),
                    ),
                  ),

                  const SizedBox(height: 15),

                  Text(
                    'Password',
                    style: GlobalHelper.getTextTheme(context,
                        appTextStyle: AppTextStyle.BODY_MEDIUM),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    controller: notifier.passwordController,
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: const InputDecoration(
                      hintText: 'Masukkan password anda',
                      prefixIcon: Icon(Icons.lock_outline),
                    ),
                  ),

                  const SizedBox(height: 15),

                  // Text(
                  //   'Konfirmasi Password',
                  //   style: GlobalHelper.getTextTheme(context,
                  //       appTextStyle: AppTextStyle.BODY_MEDIUM),
                  // ),
                  // const SizedBox(height: 10),
                  // const TextField(
                  //   obscureText: true,
                  //   keyboardType: TextInputType.visiblePassword,
                  //   decoration: InputDecoration(
                  //     hintText: 'Masukkan konfirmasi password anda',
                  //     prefixIcon: Icon(Icons.lock_outline),
                  //   ),
                  // ),

                  const SizedBox(height: 30),

                  FilledButton(
                    onPressed: () => _onPressRegister(context),
                    child: const Text('Daftar'),
                  ),

                  const SizedBox(height: 10),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sudah punya akun?',
                        style: GlobalHelper.getTextTheme(context,
                            appTextStyle: AppTextStyle.BODY_MEDIUM),
                      ),
                      TextButton(
                        onPressed: () => _onPressLogin(context),
                        child: const Text('Masuk'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  checkVariableAfterUi(BuildContext context) {
    if (notifier.isSuccess) {
      Navigator.pop(context);
    }
  }

  void _onPressLogin(BuildContext context) {
    Navigator.pop(context);
  }

  _onPressRegister(BuildContext context) {
    notifier.register(context);
  }
}
