import 'package:flutter/material.dart';
import 'package:flutter/src/material/app_bar.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:lara_jek/app/domain/entity/booking.dart';
import 'package:lara_jek/app/persentation/detail_order/detail_order_screen.dart';
import 'package:lara_jek/app/persentation/history/history_notifier.dart';
import 'package:lara_jek/core/constant/constant.dart';
import 'package:lara_jek/core/helper/date_time_helper.dart';
import 'package:lara_jek/core/helper/global_helper.dart';
import 'package:lara_jek/core/helper/number_helper.dart';
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
            itemCount: notifier.list.length,
            itemBuilder: (context, index) {
              final item = notifier.list[index];

              return _itemHistoryLayout(context, item);
            }));
  }

  _itemHistoryLayout(BuildContext context, BookingEntity item) {
    return InkWell(
      onTap: () => _onPressItemHistory(context, item.id),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          DateTimeHelper.reformatDateTimeFromString(
                              dateTimeString: item.createdAt,
                              format: 'dd MMM yyyy HH:mm'),
                          style: GlobalHelper.getTextTheme(context,
                                  appTextStyle: AppTextStyle.BODY_SMALL)
                              ?.copyWith(
                                  color: GlobalHelper.getColorScheme(context)
                                      .onSurfaceVariant),
                        ),
                        Text(
                          'Menuju ke ${item.addressDestination}',
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
                    NumberHelper.formatIdr(item.price),
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
                  Text('${item.distance} KM',
                      style: GlobalHelper.getTextTheme(context,
                              appTextStyle: AppTextStyle.BODY_SMALL)
                          ?.copyWith(
                        color: GlobalHelper.getColorScheme(context)
                            .onSurfaceVariant,
                      )),
                  const SizedBox(
                    width: 5,
                  ),
                  Icon(
                    (item.status == STATUS_PAID)
                        ? Icons.check_circle_rounded
                        : (item.status == STATUS_CANCELLED)
                            ? Icons.clear
                            : Icons.timeline_sharp,
                    size: 16,
                    color: GlobalHelper.getColorScheme(context).primary,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                      (item.status == STATUS_PAID)
                          ? 'Selesai'
                          : (item.status == STATUS_CANCELLED)
                              ? 'Dibatalkan'
                              : 'Dalam Perjalanan',
                      style: GlobalHelper.getTextTheme(context,
                              appTextStyle: AppTextStyle.BODY_SMALL)
                          ?.copyWith(
                        color: GlobalHelper.getColorScheme(context)
                            .onSurfaceVariant,
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  _onPressItemHistory(BuildContext context, int id) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => DetailOrderScreen(
                  param1: id,
                )));
  }
}
