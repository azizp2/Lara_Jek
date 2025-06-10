import 'package:flutter/material.dart';
import 'package:flutter/src/material/app_bar.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:lara_jek/app/persentation/history/history_notifier.dart';
import 'package:lara_jek/core/helper/global_helper.dart';
import 'package:lara_jek/core/widget/app_widget.dart';

// ignore: must_be_immutable
class HistoryScreen extends AppWidget<HistoryNotifier, void, void> {
  HistoryScreen({super.key});

  @override
  AppBar? appBarBuild(BuildContext context) {
    return AppBar(
      title: const Text('Riwayat Perjalanan'),
    );
  }

  @override
  Widget bodyBuild(BuildContext context) {
    return SafeArea(
        child: ListView.separated(
            padding: const EdgeInsets.all(10),
            separatorBuilder: (context, index) => const SizedBox(
                  height: 12,
                ),
            itemCount: 15,
            itemBuilder: (context, index) {
              return _itemHistoryLayout(context);
            }));
  }

  _itemHistoryLayout(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '22 Des 2024',
                        style: GlobalHelper.getTextTheme(context,
                                appTextStyle: AppTextStyle.BODY_SMALL)
                            ?.copyWith(
                                color: GlobalHelper.getColorScheme(context)
                                    .onSurfaceVariant),
                      ),
                      Text(
                        'Menuju monumen nasional',
                        style: GlobalHelper.getTextTheme(context,
                                appTextStyle: AppTextStyle.TITLE_MEDIUM)
                            ?.copyWith(fontWeight: FontWeight.bold),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                Text(
                  'Rp. 100.000',
                  style: GlobalHelper.getTextTheme(context,
                          appTextStyle: AppTextStyle.TITLE_MEDIUM)
                      ?.copyWith(
                          color: GlobalHelper.getColorScheme(context).primary)
                      ?.copyWith(fontWeight: FontWeight.bold),
                )
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Icon(
                  Icons.location_on_outlined,
                  size: 16,
                  color: GlobalHelper.getColorScheme(context).primary,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text('5 KM',
                    style: GlobalHelper.getTextTheme(context,
                            appTextStyle: AppTextStyle.BODY_SMALL)
                        ?.copyWith(
                      color:
                          GlobalHelper.getColorScheme(context).onSurfaceVariant,
                    )),
                const SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.timelapse_sharp,
                  size: 16,
                  color: GlobalHelper.getColorScheme(context).primary,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text('Dalam Perjalanan',
                    style: GlobalHelper.getTextTheme(context,
                            appTextStyle: AppTextStyle.BODY_SMALL)
                        ?.copyWith(
                      color:
                          GlobalHelper.getColorScheme(context).onSurfaceVariant,
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
