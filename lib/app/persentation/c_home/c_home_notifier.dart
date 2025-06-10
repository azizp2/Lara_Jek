import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:lara_jek/core/provider/app_provider.dart';

class CHomeNotifier extends AppProvider {
  MapController _mapController = MapController.cyclOSMLayer(
      initPosition: GeoPoint(latitude: 0.0, longitude: 0.0));

  MapController get mapController => _mapController;

  @override
  Future<void> init() async {}
}
