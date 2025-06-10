import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:lara_jek/app/persentation/create_order/create_order_notifier.dart';
import 'package:lara_jek/app/persentation/map/map_screen.dart';
import 'package:lara_jek/core/helper/global_helper.dart';
import 'package:lara_jek/core/widget/app_widget.dart';

// ignore: must_be_immutable
class CreateOrderScreen extends AppWidget<CreateOrderNotifier, void, void> {
  CreateOrderScreen({super.key});

  @override
  AppBar? appBarBuild(BuildContext context) {
    return AppBar(
      title: const Text('Buat Pesanan'),
    );
  }

  @override

  /// Builds the body of the CreateOrderScreen, consisting of a ListView
  /// that contains the route layout widget.
  ///
  /// The ListView displays the travel details in a Card widget
  /// structured by the `_routeLayout` method.
  ///
  /// Returns a [Widget] that represents the body content of the screen.

  Widget bodyBuild(BuildContext context) {
    return ListView(
      children: [
        _routeLayout(context),
        const SizedBox(
          height: 10,
        ),
        _mapLayout(context),
        const SizedBox(
          height: 10,
        ),
        _summaryLayout(context),
        const SizedBox(
          height: 10,
        ),
        _footerLayout(context)
      ],
    );
  }

  _routeLayout(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20),
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
              height: 10,
            ),
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      width: 10,
                      height: 10,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.green),
                    ),
                    Container(
                      width: 2,
                      height: 80,
                      color:
                          GlobalHelper.getColorScheme(context).outlineVariant,
                    ),
                    Container(
                      width: 10,
                      height: 10,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.red),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Lokasi Jemput',
                                    style: GlobalHelper.getTextTheme(context,
                                            appTextStyle:
                                                AppTextStyle.BODY_SMALL)
                                        ?.copyWith(
                                            color: GlobalHelper.getColorScheme(
                                                    context)
                                                .onSurfaceVariant),
                                  ),
                                  Text(
                                    'Lokasi aifias09fdkasofjnas faisdf jadsiofjasjfiaosjfisaojf aoifjoia faoisjf oiasj fiasjoija dsifjosafj oisajfisaojf iaojfiasjfisadjfijas fiojsafoajfiaj foiasjfiosjdfo ia',
                                    style: GlobalHelper.getTextTheme(context,
                                            appTextStyle:
                                                AppTextStyle.BODY_SMALL)
                                        ?.copyWith(fontWeight: FontWeight.bold)
                                        ?.copyWith(
                                            color: GlobalHelper.getColorScheme(
                                                    context)
                                                .onSurfaceVariant),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            IconButton(
                                onPressed: () => _onPressOgiginMap(context),
                                icon: const Icon(Icons.map))
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Lokasi Tujuan',
                                    style: GlobalHelper.getTextTheme(context,
                                            appTextStyle:
                                                AppTextStyle.BODY_SMALL)
                                        ?.copyWith(
                                            color: GlobalHelper.getColorScheme(
                                                    context)
                                                .onSurfaceVariant),
                                  ),
                                  Text(
                                    'Lokasi aifias09fdkasofjnas faisdf jadsiofjasjfiaosjfisaojf aoifjoia faoisjf oiasj fiasjoija dsifjosafj oisajfisaojf iaojfiasjfisadjfijas fiojsafoajfiaj foiasjfiosjdfo ia',
                                    style: GlobalHelper.getTextTheme(context,
                                            appTextStyle:
                                                AppTextStyle.BODY_SMALL)
                                        ?.copyWith(fontWeight: FontWeight.bold)
                                        ?.copyWith(
                                            color: GlobalHelper.getColorScheme(
                                                    context)
                                                .onSurfaceVariant),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            IconButton(
                                onPressed: () => {},
                                icon: const Icon(Icons.map))
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  _mapLayout(BuildContext context) {
    return Card(
      child: Container(
        height: 300,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: OSMFlutter(
              controller: notifier.mapController,
              osmOption: OSMOption(
                userTrackingOption: UserTrackingOption(
                    enableTracking: true, unFollowUser: false),
                userLocationMarker: UserLocationMaker(
                    personMarker: MarkerIcon(
                      icon: Icon(
                        Icons.location_history,
                        size: 40,
                        color: GlobalHelper.getColorScheme(context).primary,
                      ),
                    ),
                    directionArrowMarker: MarkerIcon(
                      icon: Icon(
                        Icons.location_history,
                        size: 40,
                        color: GlobalHelper.getColorScheme(context).primary,
                      ),
                    )),
                zoomOption: const ZoomOption(
                    initZoom: 11,
                    minZoomLevel: 5,
                    maxZoomLevel: 14,
                    stepZoom: 1.0),
              )),
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
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                    child: _itemSummaryLayout(context, Icons.payment_outlined,
                        'Biaya', 'Rp. 40.000')),
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

  _footerLayout(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: FilledButton(onPressed: () => {}, child: Text('Pesan Seakrang')),
    );
  }

  _onPressOgiginMap(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const MapScreen()));
  }
}
