import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:lara_jek/app/persentation/detail_order/detail_order_notifier.dart';
import 'package:lara_jek/app/persentation/rating/rating_screen.dart';
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
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  _mapLayout(context),
                  SizedBox(
                    height: 20,
                  ),
                  // _driv erLayout(context),
                  (notifier.role == ROLE_DRIVER)
                      ? _customerLayout(context)
                      : (notifier.role == ROLE_CUSTOMER)
                          ? _driverLayout(context)
                          : SizedBox(),
                  SizedBox(
                    height: 20,
                  ),
                  _tripLayout(context),
                  SizedBox(
                    height: 20,
                  ),
                  _paymentLayout(context),
                  SizedBox(
                    height: 20,
                  ),
                  _footerLayout(context)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  _headerLayout(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: GlobalHelper.getColorScheme(context).primary,
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(16))),
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
                          ? 'Driver menuju titik jemput'
                          : (notifier.booking?.status == STATUS_DRIVER_DELIVER)
                              ? 'Driver menuju titik tujuan'
                              : (notifier.booking?.status == STATUS_ARRIVED)
                                  ? 'Sampai tujuan'
                                  : (notifier.booking?.status == STATUS_PAID)
                                      ? 'Dibayar'
                                      : 'Dibatalkan',
                  style: GlobalHelper.getTextTheme(context,
                          appTextStyle: AppTextStyle.TITLE_MEDIUM)
                      ?.copyWith(
                          color:
                              GlobalHelper.getColorScheme(context).onPrimary),
                )),
                Text(
                  'ID #${notifier.booking?.id}',
                  style: GlobalHelper.getTextTheme(context,
                          appTextStyle: AppTextStyle.BODY_MEDIUM)
                      ?.copyWith(
                          color: GlobalHelper.getColorScheme(context)
                              .onPrimary
                              .withOpacity(0.8)),
                )
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
          Container(
            height: 200,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: OSMFlutter(
                controller: notifier.mapController,
                osmOption: OSMOption(
                  userTrackingOption: UserTrackingOption(
                      enableTracking: false, unFollowUser: false),
                ),
                onMapIsReady: (p0) {
                  if (p0) notifier.setRoute();
                },
                mapIsLoading: Padding(
                  padding: EdgeInsets.all(20),
                  child: LoadingAppWidget(),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Expanded(
                    child: _itemMapLayout(context, Icons.route_rounded, 'Jarak',
                        '${notifier.booking?.distance} Km')),
                Expanded(
                    child: _itemMapLayout(
                        context,
                        Icons.timer_outlined,
                        'Estimasi Waktu',
                        '${(notifier.booking?.timeEstimate != null) ? Duration(seconds: notifier.booking!.timeEstimate).inMinutes : '-'} Menit')),
                IconButton(
                    onPressed: () => _onPressMapFullScreen(context),
                    icon: Icon(Icons.fullscreen))
              ],
            ),
          )
        ],
      ),
    );
  }

  _customerLayout(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Informasi Penumpang',
              style: GlobalHelper.getTextTheme(context,
                  appTextStyle: AppTextStyle.TITLE_MEDIUM),
            ),
            SizedBox(
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
                    color:
                        GlobalHelper.getColorScheme(context).onSurfaceVariant,
                  ),
                ),
                SizedBox(
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
          ],
        ),
      ),
    );
  }

  _driverLayout(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Text(
                  'Informasi Pengemudi',
                  style: GlobalHelper.getTextTheme(context,
                      appTextStyle: AppTextStyle.TITLE_MEDIUM),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundImage:
                      NetworkImage(notifier.booking?.driver?.photoUrl ?? ''),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      notifier.booking?.driver?.name ?? '',
                      style: GlobalHelper.getTextTheme(context,
                          appTextStyle: AppTextStyle.TITLE_MEDIUM),
                    ),
                    RatingBarIndicator(
                      rating: notifier.booking?.driver?.avgRating ?? 0,
                      itemBuilder: (context, index) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      itemCount: 5,
                      itemSize: 20.0,
                      direction: Axis.horizontal,
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

  _tripLayout(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Detail Perjalanan',
              style: GlobalHelper.getTextTheme(context,
                  appTextStyle: AppTextStyle.TITLE_MEDIUM),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Icon(
                  Icons.location_pin,
                  color: Colors.green,
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Lokasi Penjemputan',
                      style: GlobalHelper.getTextTheme(context,
                              appTextStyle: AppTextStyle.BODY_SMALL)
                          ?.copyWith(
                              color: GlobalHelper.getColorScheme(context)
                                  .onSurfaceVariant),
                    ),
                    Text(
                      notifier.booking?.addressOrigin ?? '',
                      style: GlobalHelper.getTextTheme(context,
                          appTextStyle: AppTextStyle.BODY_LARGE),
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
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Lokasi Tujuan',
                      style: GlobalHelper.getTextTheme(context,
                              appTextStyle: AppTextStyle.BODY_SMALL)
                          ?.copyWith(
                              color: GlobalHelper.getColorScheme(context)
                                  .onSurfaceVariant),
                    ),
                    Text(
                      notifier.booking?.addressDestination ?? '',
                      style: GlobalHelper.getTextTheme(context,
                          appTextStyle: AppTextStyle.BODY_LARGE),
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
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Detail Pembayaran',
              style: GlobalHelper.getTextTheme(context,
                  appTextStyle: AppTextStyle.TITLE_MEDIUM),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Biaya',
                  style: GlobalHelper.getTextTheme(context,
                      appTextStyle: AppTextStyle.TITLE_MEDIUM),
                ),
                Text(
                  NumberHelper.formatIdr(notifier.booking?.price ?? 0.0),
                  style: GlobalHelper.getTextTheme(context,
                          appTextStyle: AppTextStyle.TITLE_MEDIUM)
                      ?.copyWith(color: Colors.green),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  _footerLayout(BuildContext context) {
    if (notifier.role == ROLE_CUSTOMER &&
        notifier.booking?.status == STATUS_FINDING_DRIVER) {
      return ElevatedButton(
        onPressed: () => _onPressCancel(),
        child: Text('Batalkan Pesanan'),
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            minimumSize: Size(double.maxFinite, 48)),
      );
    } else if (notifier.role == ROLE_CUSTOMER &&
        notifier.booking?.status == STATUS_PAID &&
        notifier.booking?.rating == null) {
      return FilledButton(
          onPressed: () => _onPressRating(context),
          child: Text('Berikan Rating'),
          style: ElevatedButton.styleFrom(
              minimumSize: Size(double.maxFinite, 48)));
    } else if (notifier.booking?.rating != null) {
      return Column(
        children: [
          RatingBarIndicator(
            rating: notifier.booking?.rating?.toDouble() ?? 0,
            itemBuilder: (context, index) => const Icon(
              Icons.star,
              color: Colors.amber,
            ),
            itemPadding: const EdgeInsets.symmetric(horizontal: 5),
            itemCount: 5,
            itemSize: 50.0,
            direction: Axis.horizontal,
          ),
          const SizedBox(height: 16), // Added spacing between rating and card
          SizedBox(
            width: double.maxFinite,
            child: Card(
              margin: EdgeInsets.zero,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Komentar',
                      style: GlobalHelper.getTextTheme(
                        context,
                        appTextStyle: AppTextStyle.TITLE_MEDIUM,
                      )?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      notifier.booking?.comment ?? '-',
                      style: GlobalHelper.getTextTheme(
                        context,
                        appTextStyle: AppTextStyle.TITLE_MEDIUM,
                      )?.copyWith(fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      );
    } else if (notifier.role == ROLE_DRIVER &&
        notifier.booking?.status != STATUS_PAID &&
        notifier.booking?.status != STATUS_CANCELLED) {
      return ElevatedButton(
        onPressed: () => _onPressUpdateStatus(),
        child: Text((notifier.booking?.status == STATUS_DRIVER_PICKUP)
            ? 'Sampai titik jemput'
            : (notifier.booking?.status == STATUS_DRIVER_DELIVER)
                ? 'Sampai Tujuan'
                : (notifier.booking?.status == STATUS_ARRIVED)
                    ? 'Sudah dibayar'
                    : ''),
        style:
            ElevatedButton.styleFrom(minimumSize: Size(double.maxFinite, 48)),
      );
    } else {
      return SizedBox();
    }
  }

  _itemMapLayout(
      BuildContext context, IconData iconData, String title, String value) {
    return Row(
      children: [
        Icon(
          iconData,
          size: 20,
          color: GlobalHelper.getColorScheme(context).onSurfaceVariant,
        ),
        SizedBox(
          width: 5,
        ),
        Column(
          children: [
            Text(
              title,
              style: GlobalHelper.getTextTheme(context,
                      appTextStyle: AppTextStyle.BODY_SMALL)
                  ?.copyWith(
                      color: GlobalHelper.getColorScheme(context)
                          .onSurfaceVariant),
            ),
            Text(
              value,
              style: GlobalHelper.getTextTheme(context,
                  appTextStyle: AppTextStyle.BODY_MEDIUM),
            ),
          ],
        )
      ],
    );
  }

  _onPressMapFullScreen(BuildContext context) async {
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

  _onPressRating(BuildContext context) async {
    await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => RatingScreen(
            param1: param1,
          ),
        ));
    notifier.init();
  }
}
