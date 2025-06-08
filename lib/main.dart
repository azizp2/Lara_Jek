import 'package:flutter/material.dart';
import 'package:lara_jek/app/persentation/login/login_screen.dart';
import 'package:lara_jek/core/dependency/dependency.dart';
import 'package:lara_jek/core/widget/error_app_widget.dart';
import 'package:lara_jek/core/widget/loading_app_widget.dart';
import 'package:lara_jek/theme/app_theme.dart';
import 'package:intl/date_symbol_data_local.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting('id', null);
  initDependency();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        navigatorKey: navigatorKey,
        theme: AppTheme.getTheme,
        home: LoginScreen());
  }
}
