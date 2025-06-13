import 'package:flutter/material.dart';
import 'package:lara_jek/app/domain/entity/booking.dart';
import 'package:lara_jek/app/persentation/c_home/c_home_notifier.dart';
import 'package:lara_jek/app/persentation/create_order/create_order_screen.dart';
import 'package:lara_jek/app/persentation/detail_order/detail_order_screen.dart';
import 'package:lara_jek/app/persentation/history/history_screen.dart';
import 'package:lara_jek/app/persentation/login/login_screen.dart';
import 'package:lara_jek/core/constant/constant.dart';
import 'package:lara_jek/core/helper/date_time_helper.dart';
import 'package:lara_jek/core/helper/global_helper.dart';
import 'package:lara_jek/core/helper/number_helper.dart';
import 'package:lara_jek/core/widget/app_widget.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';

class CHomeScreen extends AppWidget<CHomeNotifier, void, void> {
  @override
  Widget bodyBuild(BuildContext context) {
    return ListView(
      children: [
        _headerLayout(context),
        Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              _mapLayout(context),
              const SizedBox(height: 16),
              _createOrderLayout(context),
              const SizedBox(height: 16),
              _historyOrderLayout(context)
            ],
          ),
        )
      ],
    );
  }

  @override
  checkVariabelAfterUi(BuildContext context) {
    if (notifier.isLogout) {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
        (route) => false,
      );
    }
  }

  _headerLayout(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      decoration: BoxDecoration(
          color: GlobalHelper.getColorScheme(context).primary,
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(24))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Lara Jek",
                style: GlobalHelper.getTextTheme(context,
                        appTextStyle: AppTextStyle.HEADLINE_LARGE)
                    ?.copyWith(fontFamily: 'Poppins')
                    ?.copyWith(fontWeight: FontWeight.bold)
                    ?.copyWith(
                        color: GlobalHelper.getColorScheme(context).onPrimary),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Perjalanan Aman dan Nyaman',
                style: GlobalHelper.getTextTheme(context,
                        appTextStyle: AppTextStyle.BODY_MEDIUM)
                    ?.copyWith(
                        color: GlobalHelper.getColorScheme(context)
                            .onPrimary
                            .withOpacity(0.8)),
              )
            ],
          ),
          IconButton(
              onPressed: () => _onPressLogout(),
              icon: Icon(
                Icons.logout,
                color: GlobalHelper.getColorScheme(context).onPrimary,
              ))
        ],
      ),
    );
  }

  _mapLayout(BuildContext context) {
    return Container(
      height: 200,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: OSMFlutter(
            controller: notifier.mapController,
            osmOption: OSMOption(
                userTrackingOption: const UserTrackingOption(
                    enableTracking: true, unFollowUser: false),
                zoomOption: const ZoomOption(
                    initZoom: 14,
                    minZoomLevel: 14,
                    maxZoomLevel: 14,
                    stepZoom: 0),
                userLocationMarker: UserLocationMaker(
                    personMarker: MarkerIcon(
                        icon: Icon(Icons.location_history,
                            size: 40,
                            color:
                                GlobalHelper.getColorScheme(context).primary)),
                    directionArrowMarker: MarkerIcon(
                        icon: Icon(Icons.location_history,
                            size: 40,
                            color: GlobalHelper.getColorScheme(context)
                                .primary))))),
      ),
    );
  }

  _createOrderLayout(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      width: 10,
                      height: 10,
                      decoration: const BoxDecoration(
                          color: Colors.green, shape: BoxShape.circle),
                    ),
                    Container(
                      width: 2,
                      height: 40,
                      color:
                          GlobalHelper.getColorScheme(context).outlineVariant,
                    ),
                    Container(
                      width: 10,
                      height: 10,
                      decoration: const BoxDecoration(
                          color: Colors.red, shape: BoxShape.circle),
                    )
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: Column(
                  children: [
                    TextField(
                      style: GlobalHelper.getTextTheme(context,
                          appTextStyle: AppTextStyle.BODY_MEDIUM),
                      readOnly: true,
                      decoration: InputDecoration(
                          hintText: 'Lokasi Anda',
                          hintStyle: GlobalHelper.getTextTheme(context,
                                  appTextStyle: AppTextStyle.BODY_MEDIUM)
                              ?.copyWith(
                                  color: GlobalHelper.getColorScheme(context)
                                      .onSurfaceVariant)),
                      onTap: () => {},
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      style: GlobalHelper.getTextTheme(context,
                          appTextStyle: AppTextStyle.BODY_MEDIUM),
                      readOnly: true,
                      decoration: InputDecoration(
                          hintText: 'Lokasi Tujuan',
                          hintStyle: GlobalHelper.getTextTheme(context,
                                  appTextStyle: AppTextStyle.BODY_MEDIUM)
                              ?.copyWith(
                                  color: GlobalHelper.getColorScheme(context)
                                      .onSurfaceVariant)),
                      onTap: () => {},
                    )
                  ],
                ))
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            FilledButton(
                onPressed: () => _onPressCreateOrder(context),
                style: FilledButton.styleFrom(
                    minimumSize: const Size(double.maxFinite, 48)),
                child: const Text('Pesan Sekarang'))
          ],
        ),
      ),
    );
  }

  _historyOrderLayout(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Riwayat Perjalanan',
              style: GlobalHelper.getTextTheme(context,
                      appTextStyle: AppTextStyle.TITLE_LARGE)
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            TextButton(
                onPressed: () => _onPressAllHistory(context),
                child: Text(
                  'Lihat Semua',
                  style: GlobalHelper.getTextTheme(context,
                          appTextStyle: AppTextStyle.LABEL_LARGE)
                      ?.copyWith(
                          color: GlobalHelper.getColorScheme(context).primary)
                      ?.copyWith(fontWeight: FontWeight.bold),
                ))
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (context, index) => const SizedBox(
                  height: 12,
                ),
            itemCount: notifier.list.length,
            itemBuilder: (context, index) {
              final item = notifier.list[index];
              return _itemHistoryLayout(context, item);
            })
      ],
    );
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

  _onPressCreateOrder(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => CreateOrderScreen()));
  }

  _onPressAllHistory(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HistoryScreen()));
  }

  _onPressItemHistory(BuildContext context, int id) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => DetailOrderScreen(
                  param1: id,
                )));
  }

  _onPressLogout() {
    notifier.logout();
  }
}
