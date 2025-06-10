import 'package:flutter/material.dart';
import 'package:lara_jek/app/persentation/d_home/d_home_notifier.dart';
import 'package:lara_jek/core/helper/global_helper.dart';
import 'package:lara_jek/core/widget/app_widget.dart';

// ignore: must_be_immutable
class DHomeScreen extends AppWidget<DHomeNotifier, void, void> {
  DHomeScreen({super.key});

  @override
  Widget bodyBuild(BuildContext context) {
    return ListView(
      children: [_headerLayout(context)],
    );
  }

  _headerLayout(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      decoration: BoxDecoration(
          color: GlobalHelper.getColorScheme(context).primary,
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(24))),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ojek Online Driver',
                    style: GlobalHelper.getTextTheme(context,
                            appTextStyle: AppTextStyle.HEADLINE_LARGE)
                        ?.copyWith(
                            color:
                                GlobalHelper.getColorScheme(context).onPrimary),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Mitra Ojek Online',
                    style: GlobalHelper.getTextTheme(context,
                            appTextStyle: AppTextStyle.BODY_MEDIUM)
                        ?.copyWith(
                            color: GlobalHelper.getColorScheme(context)
                                .onPrimary
                                .withOpacity(0.8)),
                  )
                ],
              )),
              IconButton(
                onPressed: () => {},
                icon: Icon(Icons.logout),
                color: GlobalHelper.getColorScheme(context).onPrimary,
              )
            ],
          ),
        ],
      ),
    );
  }
}
