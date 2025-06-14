import 'package:flutter/material.dart';
import 'package:lara_jek/app/persentation/create_order/create_order_screen.dart';
import 'package:lara_jek/app/persentation/d_home/d_home_notifier.dart';
import 'package:lara_jek/app/persentation/detail_order/detail_order_screen.dart';
import 'package:lara_jek/app/persentation/history/history_screen.dart';
import 'package:lara_jek/app/persentation/login/login_screen.dart';
import 'package:lara_jek/core/helper/global_helper.dart';
import 'package:lara_jek/core/widget/app_widget.dart';

// ignore: must_be_immutable
class DHomeScreen extends AppWidget<DHomeNotifier, void, void> {
  DHomeScreen({super.key});

  @override
  Widget bodyBuild(BuildContext context) {
    return ListView(
      children: [
        _headerLayout(context),
        SizedBox(
          height: 20,
        ),
        _historyOrderLayout(context)
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

  Widget _headerLayout(BuildContext context) {
    final color = GlobalHelper.getColorScheme(context);
    final text = GlobalHelper.getTextTheme(context);

    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [color.primary, color.primary.withOpacity(0.85)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius:
              const BorderRadius.vertical(bottom: Radius.circular(20)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Brand name "Lara Jek"
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Lara Jek',
                  style: text?.copyWith(
                    fontSize: 26,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                    letterSpacing: 1.2,
                  ),
                ),
                IconButton(
                  onPressed: () => _onPressLogout(),
                  icon: const Icon(Icons.logout, color: Colors.white),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Top Row (Profile & Logout)
            Row(
              children: [
                CircleAvatar(
                  radius: 28,
                  backgroundColor: Colors.white.withOpacity(0.2),
                  backgroundImage: NetworkImage(notifier.photoUrl),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(notifier.name,
                          style: text?.copyWith(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      const SizedBox(height: 4),
                      Text(notifier.vehicleNumber,
                          style: text?.copyWith(
                              color: Colors.white70, fontSize: 14))
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 24),

            // Stats
            Row(
              children: [
                _dashboardTile(
                  icon: Icons.attach_money,
                  label: 'Pendapatan',
                  value: 'Rp 150.000',
                  color: Colors.green,
                ),
                const SizedBox(width: 12),
                _dashboardTile(
                  icon: Icons.delivery_dining,
                  label: 'Order Hari Ini',
                  value: '8',
                  color: Colors.orange,
                ),
              ],
            ),

            const SizedBox(height: 24),

            // Status Switch
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Icon(Icons.wifi_tethering, color: Colors.grey[700]),
                  const SizedBox(width: 8),
                  Text(
                    'Status Driver',
                    style: text?.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black87,
                    ),
                  ),
                  Expanded(
                    child: SizedBox(),
                  ),
                  Text(
                    notifier.isOnline ? 'Online' : 'Offline',
                    style: text?.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: notifier.isOnline ? Colors.green : Colors.red,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Switch.adaptive(
                    value: notifier.isOnline,
                    onChanged: (val) {
                      notifier.isOnline = val;
                    },
                    activeColor: Colors.green,
                    activeTrackColor: Colors.green.withOpacity(0.2),
                    inactiveThumbColor: Colors.red,
                    inactiveTrackColor: Colors.red.withOpacity(0.2),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

// Custom tile widget
  Widget _dashboardTile({
    required IconData icon,
    required String label,
    required String value,
    required Color color,
  }) {
    return Expanded(
      child: Container(
        height: 90,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              offset: Offset(0, 4),
            )
          ],
        ),
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Icon(icon, size: 24, color: color),
                SizedBox(width: 8),
                Expanded(
                  child: Text(label,
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black54,
                          fontWeight: FontWeight.w500)),
                )
              ],
            ),
            SizedBox(height: 8),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(value,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87)),
            )
          ],
        ),
      ),
    );
  }

  _historyOrderLayout(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
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
              itemCount: 5,
              itemBuilder: (context, index) {
                return _itemHistoryLayout(context);
              })
        ],
      ),
    );
  }

  _itemHistoryLayout(BuildContext context) {
    return InkWell(
      onTap: () => _onPressItemHistory(context, 0),
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
                        color: GlobalHelper.getColorScheme(context)
                            .onSurfaceVariant,
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
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => DetailOrderScreen(param1: id)));
  }

  _onPressLogout() {
    notifier.logout();
  }
}
