import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:lara_jek/app/persentation/login/login_screen.dart';
import 'package:lara_jek/core/dependency/dependency.dart';
import 'package:lara_jek/core/service/tracking_service.dart';
import 'package:lara_jek/firebase_options.dart';
import 'package:lara_jek/theme/app_theme.dart';
import 'package:intl/date_symbol_data_local.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await initializeDateFormatting('id', null);
  initDependency();

  await initialTrackingService();

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
