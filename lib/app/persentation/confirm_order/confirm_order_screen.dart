import 'package:flutter/material.dart';
import 'package:lara_jek/app/persentation/confirm_order/confirm_order_notifier.dart';
import 'package:lara_jek/core/helper/global_helper.dart';
import 'package:lara_jek/core/widget/app_widget.dart';

// ignore: must_be_immutable
class ConfirmOrderScreen extends AppWidget<ConfirmOrderNotifier, void, void> {
  ConfirmOrderScreen({super.key});

  @override
  AppBar? appBarBuild(BuildContext context) {
    return AppBar(
      title: const Text('Pesanan Baru'),
    );
  }

  @override
  Widget bodyBuild(BuildContext context) {
    return SafeArea(
        child: ListView(
      children: [
        _headerLayout(context),
        Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                _customerLayout(context),
                const SizedBox(
                  height: 20,
                ),
                _summaryLayout(context),
                const SizedBox(
                  height: 20,
                ),
                _routeLayout(context),
                const SizedBox(
                  height: 20,
                ),
                _footerLayout(context)
              ],
            )),
      ],
    ));
  }

  _headerLayout(BuildContext context) {
    final color = GlobalHelper.getColorScheme(context);

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: color.primary,
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: color.onPrimary.withOpacity(0.1),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: color.onPrimary.withOpacity(0.2),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.payment_outlined,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Pendapatan',
                      style: GlobalHelper.getTextTheme(context,
                              appTextStyle: AppTextStyle.BODY_MEDIUM)
                          ?.copyWith(color: color.onPrimary),
                    ),
                    Text(
                      'Rp. 56.000',
                      style: GlobalHelper.getTextTheme(context,
                              appTextStyle: AppTextStyle.HEADLINE_SMALL)
                          ?.copyWith(color: color.onPrimary),
                    ),
                  ],
                ))
              ],
            ),
          ),
        ],
      ),
    );
  }

  _customerLayout(BuildContext context) {
    final color = GlobalHelper.getColorScheme(context);
    return Card(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Row(
          children: [
            CircleAvatar(
              radius: 24,
              backgroundColor: color.surfaceDim,
              child: Icon(Icons.person, color: color.onSurfaceVariant),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
                child: Text(
              'Nama Customer',
              style: GlobalHelper.getTextTheme(context,
                      appTextStyle: AppTextStyle.TITLE_MEDIUM)
                  ?.copyWith(fontWeight: FontWeight.bold),
            ))
          ],
        ),
      ),
    );
  }

  _summaryLayout(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: _itemSummaryLayout(
                        context, Icons.route, 'Jarak', '4 KM')),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                    child: _itemSummaryLayout(context, Icons.timer_outlined,
                        'Estimasi Waktu', '10 Menit')),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _itemSummaryLayout(
      BuildContext context, IconData iconData, String title, String value) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color:
                  GlobalHelper.getColorScheme(context).primary.withOpacity(0.3),
              borderRadius: BorderRadius.circular(10)),
          child: Icon(
            iconData,
            color: GlobalHelper.getColorScheme(context).primary,
            size: 20,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: GlobalHelper.getTextTheme(context,
                  appTextStyle: AppTextStyle.BODY_SMALL)
              ?.copyWith(
                  color: GlobalHelper.getColorScheme(context).onSurfaceVariant),
        ),
        SizedBox(
          height: 5,
        ),
        Text(value,
            style: GlobalHelper.getTextTheme(context,
                    appTextStyle: AppTextStyle.BODY_SMALL)
                ?.copyWith(fontWeight: FontWeight.bold))
      ],
    );
  }

  _routeLayout(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Detail Perjalanan',
              style: GlobalHelper.getTextTheme(context,
                      appTextStyle: AppTextStyle.TITLE_MEDIUM)
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Icon(
                  Icons.location_pin,
                  color: GlobalHelper.getColorScheme(context).primary,
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Lokasi Penjemputan',
                      style: GlobalHelper.getTextTheme(context,
                              appTextStyle: AppTextStyle.BODY_MEDIUM)
                          ?.copyWith(
                              color: GlobalHelper.getColorScheme(context)
                                  .onSurfaceVariant),
                    ),
                    Text(
                      'Alamat',
                      style: GlobalHelper.getTextTheme(context,
                              appTextStyle: AppTextStyle.BODY_LARGE)
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ],
                ))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.location_pin,
                  color: Colors.red,
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Lokasi Tujuan',
                      style: GlobalHelper.getTextTheme(context,
                              appTextStyle: AppTextStyle.BODY_MEDIUM)
                          ?.copyWith(
                              color: GlobalHelper.getColorScheme(context)
                                  .onSurfaceVariant),
                    ),
                    Text(
                      'Alamat Tujuan',
                      style: GlobalHelper.getTextTheme(context,
                              appTextStyle: AppTextStyle.BODY_LARGE)
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ],
                ))
              ],
            )
          ],
        ),
      ),
    );
  }

  _footerLayout(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: OutlinedButton(onPressed: () => {}, child: Text('Tolak'))),
        SizedBox(
          width: 20,
        ),
        Expanded(
            child: FilledButton(onPressed: () => {}, child: Text('Terima'))),
      ],
    );
  }
}
