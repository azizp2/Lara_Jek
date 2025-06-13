import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:lara_jek/app/persentation/detail_order/detail_order_notifier.dart';
import 'package:lara_jek/core/constant/constant.dart';
import 'package:lara_jek/core/helper/dialog_helper.dart';
import 'package:lara_jek/core/helper/global_helper.dart';
import 'package:lara_jek/core/helper/number_helper.dart';
import 'package:lara_jek/core/widget/app_widget.dart';
import 'package:lara_jek/core/widget/loading_app_widget.dart';

// ignore: must_be_immutable
class DetailOrderScreen extends AppWidget<DetailOrderNotifier, int, void> {
  DetailOrderScreen({required super.param1});

  @override
  AppBar? appBarBuild(BuildContext context) {
    // TODO: implement appBarBuild
    return AppBar(
      title: Text('Detail Perjalanan'),
    );
  }

  @override
  Widget bodyBuild(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        children: [
          _headerLayout(context),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                _mapLayout(context),
                const SizedBox(height: 20),
                (notifier.role == ROLE_DRIVER)
                    ? _customerLayout(context)
                    : (notifier.role == ROLE_CUSTOMER)
                        ? _driverLayout(context)
                        : const SizedBox(),
                const SizedBox(height: 20),
                _tripLayout(context),
                const SizedBox(height: 20),
                _paymentLayout(context),
                const SizedBox(height: 20),
                _footerLayout(context)
              ],
            ),
          )
        ],
      ),
    ));
  }

  _headerLayout(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: GlobalHelper.getColorScheme(context).primary,
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(16)),
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: GlobalHelper.getColorScheme(context)
                    .onPrimary
                    .withOpacity(0.1),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    (notifier.booking?.status == STATUS_FINDING_DRIVER)
                        ? 'Mencari Driver'
                        : (notifier.booking?.status == STATUS_DRIVER_PICKUP)
                            ? 'Driver Menuju Titik Jemput'
                            : (notifier.booking?.status ==
                                    STATUS_DRIVER_DELIVER)
                                ? 'Driver Menuju Titik Tujuan'
                                : (notifier.booking?.status == STATUS_ARRIVED)
                                    ? 'Sampai Tujuan'
                                    : (notifier.booking?.status == STATUS_PAID)
                                        ? 'Dibayar'
                                        : 'Dibatalkan',
                    style: GlobalHelper.getTextTheme(context,
                            appTextStyle: AppTextStyle.TITLE_MEDIUM)
                        ?.copyWith(
                            color:
                                GlobalHelper.getColorScheme(context).onPrimary),
                  ),
                ),
                Text(
                  'ID #${notifier.booking?.id}',
                  style: GlobalHelper.getTextTheme(context,
                          appTextStyle: AppTextStyle.TITLE_MEDIUM)
                      ?.copyWith(
                          color: GlobalHelper.getColorScheme(context)
                              .onPrimary
                              .withOpacity(0.8)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  _mapLayout(BuildContext context) {
    return Card(
      child: Column(
        children: [
          SizedBox(
            height: 200,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: OSMFlutter(
                controller: notifier.mapController,
                osmOption: const OSMOption(
                  userTrackingOption: UserTrackingOption(
                      enableTracking: true, unFollowUser: false),
                ),
                onMapIsReady: (p0) {
                  if (p0) notifier.setRoute();
                },
                mapIsLoading: const Padding(
                  padding: EdgeInsets.all(20),
                  child: LoadingAppWidget(),
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Expanded(
                    child: _itemLayout(context, Icons.route_rounded, 'Jarak',
                        '${notifier.booking?.distance} KM')),
                Expanded(
                    child: _itemLayout(
                        context,
                        Icons.timer_outlined,
                        'Estimasi Waktu',
                        '${notifier.booking?.timeEstimate != null ? Duration(seconds: notifier.booking!.timeEstimate!).inMinutes : 0}  Menit')),
                IconButton(
                    onPressed: () => _onPressMapFullscreen(context),
                    icon: const Icon(Icons.fullscreen))
              ],
            ),
          )
        ],
      ),
    );
  }

  _itemLayout(
      BuildContext context, IconData iconData, String title, String value) {
    return Row(
      children: [
        Icon(
          iconData,
          size: 20,
          color: GlobalHelper.getColorScheme(context).onSurfaceVariant,
        ),
        const SizedBox(
          width: 5,
        ),
        Column(
          children: [
            Text(
              title,
              style: GlobalHelper.getTextTheme(context,
                      appTextStyle: AppTextStyle.BODY_MEDIUM)
                  ?.copyWith(
                      color: GlobalHelper.getColorScheme(context)
                          .onSurfaceVariant),
            ),
            Text(value,
                style: GlobalHelper.getTextTheme(context,
                        appTextStyle: AppTextStyle.LABEL_MEDIUM)
                    ?.copyWith(fontWeight: FontWeight.bold))
          ],
        )
      ],
    );
  }

  _customerLayout(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Informasi Penumpang',
            style: GlobalHelper.getTextTheme(context,
                    appTextStyle: AppTextStyle.TITLE_MEDIUM)
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              CircleAvatar(
                radius: 24,
                backgroundColor:
                    GlobalHelper.getColorScheme(context).surfaceDim,
                child: Icon(
                  Icons.person,
                  color: GlobalHelper.getColorScheme(context).onSurfaceVariant,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                  child: Text(
                notifier.booking?.customer.name ?? '',
                style: GlobalHelper.getTextTheme(context,
                    appTextStyle: AppTextStyle.TITLE_MEDIUM),
              ))
            ],
          )
        ]),
      ),
    );
  }

  _driverLayout(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Informasi Pengemudi',
            style: GlobalHelper.getTextTheme(context,
                    appTextStyle: AppTextStyle.TITLE_MEDIUM)
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              CircleAvatar(
                radius: 24,
                backgroundImage:
                    NetworkImage(notifier.booking?.driver?.photoUrl ?? ''),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                  child: Text(
                notifier.booking?.driver?.name ?? '',
                style: GlobalHelper.getTextTheme(context,
                    appTextStyle: AppTextStyle.TITLE_MEDIUM),
              ))
            ],
          )
        ]),
      ),
    );
  }

  _tripLayout(BuildContext context) {
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
                      notifier.booking?.addressOrigin ?? '',
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
                      notifier.booking?.addressDestination ?? '',
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

  _paymentLayout(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(29),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Detail Pembayaran',
              style: GlobalHelper.getTextTheme(context,
                      appTextStyle: AppTextStyle.TITLE_MEDIUM)
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Biaya',
                    style: GlobalHelper.getTextTheme(context,
                            appTextStyle: AppTextStyle.TITLE_MEDIUM)
                        ?.copyWith(fontWeight: FontWeight.bold)),
                Text(NumberHelper.formatIdr(notifier.booking?.price ?? 0.0),
                    style: GlobalHelper.getTextTheme(context,
                            appTextStyle: AppTextStyle.TITLE_MEDIUM)
                        ?.copyWith(color: Colors.green)),
              ],
            )
          ],
        ),
      ),
    );
  }

  // Widget _paymentLayout(BuildContext context) {
  //   return Card(
  //     child: Padding(
  //       padding: const EdgeInsets.all(29),
  //       child: Column(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: [
  //           Text(
  //             'Detail Pembayaran',
  //             style: GlobalHelper.getTextTheme(context,
  //                     appTextStyle: AppTextStyle.TITLE_MEDIUM)
  //                 ?.copyWith(fontWeight: FontWeight.bold),
  //           ),
  //           const SizedBox(height: 20),
  //           Row(
  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //             children: [
  //               Text(
  //                 'Biaya',
  //                 style: GlobalHelper.getTextTheme(context,
  //                         appTextStyle: AppTextStyle.TITLE_MEDIUM)
  //                     ?.copyWith(fontWeight: FontWeight.bold),
  //               ),
  //               Text(
  //                 'Rp. 54.000',
  //                 style: GlobalHelper.getTextTheme(context,
  //                         appTextStyle: AppTextStyle.TITLE_MEDIUM)
  //                     ?.copyWith(color: Colors.green),
  //               ),
  //             ],
  //           ),
  //           const SizedBox(height: 30),
  //           Text(
  //             'Metode Pembayaran',
  //             style: GlobalHelper.getTextTheme(context,
  //                     appTextStyle: AppTextStyle.TITLE_MEDIUM)
  //                 ?.copyWith(fontWeight: FontWeight.bold),
  //           ),
  //           const SizedBox(height: 10),

  //           // Tampilan statis metode pembayaran
  //           const Column(
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             children: [
  //               ListTile(
  //                 leading: Icon(Icons.qr_code),
  //                 title: Text('QRIS'),
  //                 trailing: Icon(Icons.radio_button_unchecked),
  //               ),
  //               ListTile(
  //                 leading: Icon(Icons.credit_card),
  //                 title: Text('Kartu Kredit'),
  //                 trailing: Icon(Icons.radio_button_unchecked),
  //               ),
  //               ListTile(
  //                 leading: Icon(Icons.account_balance_wallet),
  //                 title: Text('GoPay'),
  //                 trailing: Icon(Icons.radio_button_unchecked),
  //               ),
  //               ListTile(
  //                 leading: Icon(Icons.money),
  //                 title: Text('Bayar Tunai'),
  //                 trailing: Icon(Icons.radio_button_unchecked),
  //               ),
  //             ],
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  _footerLayout(BuildContext context) {
    if (notifier.role == ROLE_CUSTOMER &&
        notifier.booking?.status == STATUS_FINDING_DRIVER) {
      return ElevatedButton(
          onPressed: () => _onPressCancel(),
          child: Text('Batalkan Pesana'),
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              minimumSize: Size(double.maxFinite, 48)));
    } else if (notifier.role == ROLE_DRIVER &&
        notifier.booking?.status == STATUS_PAID &&
        notifier.booking?.status != STATUS_CANCELLED) {
      return ElevatedButton(
          onPressed: () => _onPressUpdateStatus(),
          child: Text((notifier.booking?.status == STATUS_DRIVER_PICKUP)
              ? 'Sampai Titik Jemput'
              : (notifier.booking?.status == STATUS_DRIVER_DELIVER)
                  ? 'Sampai Tujuan'
                  : (notifier.booking?.status == STATUS_ARRIVED)
                      ? 'Sudah Dibayar'
                      : ''));
    } else {
      return const SizedBox();
    }
  }

  _onPressMapFullscreen(BuildContext context) async {
    notifier.isShowDialog = true;
    await DialogHelper.showFullScreenDialog(
        context: context,
        title: 'Map',
        content: OSMFlutter(
          controller: notifier.mapFullScreenController,
          osmOption: OSMOption(zoomOption: ZoomOption(stepZoom: 1)),
          onMapIsReady: (p0) {
            if (p0) notifier.setRoute();
          },
          mapIsLoading: LoadingAppWidget(),
        ));
    notifier.isShowDialog = false;
  }

  _onPressCancel() {
    notifier.cancel();
  }

  _onPressUpdateStatus() {
    notifier.updateStatus();
  }
}
