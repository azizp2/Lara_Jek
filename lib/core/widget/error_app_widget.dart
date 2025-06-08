import 'package:flutter/material.dart';
import 'package:lara_jek/core/helper/global_helper.dart';
import 'package:lara_jek/core/helper/shared_preferences_helper.dart';
import 'package:retrofit/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ErrorAppWidget extends StatelessWidget {
  final String description;
  final void Function() onPressButton;
  const ErrorAppWidget(
      {super.key, required this.description, required this.onPressButton});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(19),
          child: Column(
            children: [
              Icon(
                Icons.error,
                size: 100,
              ),
              Text(
                "Kesalahan",
                style: GlobalHelper.getTextTheme(context,
                        appTextStyle: AppTextStyle.HEADLINE_MEDIUM)
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                description,
                style: GlobalHelper.getTextTheme(context,
                    appTextStyle: AppTextStyle.BODY_LARGE),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30,
              ),
              (description.contains('401') ||
                      description.contains('unauthenticated'))
                  ? FilledButton(
                      onPressed: () async {
                        await SharedPreferencesHelper.logout();
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen(),),(route))
                      },
                      child: Text('Logout'))
                  : FilledButton.icon(
                      onPressed: () => {},
                      label: Text("Muat ulang"),
                      icon: Icon(Icons.refresh))
            ],
          ),
        ),
      ),
    );
  }
}
