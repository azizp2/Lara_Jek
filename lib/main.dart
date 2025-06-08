import 'package:flutter/material.dart';
import 'package:lara_jek/core/widget/error_app_widget.dart';
import 'package:lara_jek/core/widget/loading_app_widget.dart';
import 'package:lara_jek/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.getTheme,
      home: Scaffold(
          body: ErrorAppWidget(
              description: "401 Error Api", onPressButton: () => {})),
    );
  }
}
