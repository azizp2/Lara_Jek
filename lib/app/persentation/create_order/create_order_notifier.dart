import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:lara_jek/app/domain/entity/booking.dart';
import 'package:lara_jek/app/domain/entity/location.dart';
import 'package:lara_jek/app/use_case/booking/booking_check_price.dart';
import 'package:lara_jek/app/use_case/booking/booking_create.dart';
import 'package:lara_jek/core/provider/app_provider.dart';

class CreateOrderNotifier extends AppProvider {
  final BookingCreateUseCase _bookingCreateUseCase;
  final BookingCheckPriceUseCase _bookingCheckPriceUseCase;

  CreateOrderNotifier(
      this._bookingCreateUseCase, this._bookingCheckPriceUseCase) {
    init();
  }

  int _isSuccessId = -1;
  bool _isLoadingPrice = false;

  MapController _mapController = MapController.cyclOSMLayer(
    initPosition: GeoPoint(latitude: 0.0, longitude: 0.0),
  );

  LocationEntity? _locationOrigin;
  LocationEntity? _locationDestination;

  RoadInfo? _road;
  int? _price;

  int get isSuccessId => _isSuccessId;
  bool get isLoadingPrice => _isLoadingPrice;
  MapController get mapController => _mapController;
  LocationEntity? get locationOrigin => _locationOrigin;
  LocationEntity? get locationDestination => _locationDestination;
  double? get distance => _road?.distance;
  double? get timeEstimate => _road?.duration;
  int? get price => _price;

  set locationOrigin(LocationEntity? param) {
    if (_locationOrigin != null)
      _mapController.removeMarker(GeoPoint(
          latitude: _locationOrigin!.latitude,
          longitude: _locationOrigin!.longitude));
    _locationOrigin = param;
    setMarker(_locationOrigin!, 0);
    notifyListeners();
  }

  set locationDestination(LocationEntity? param) {
    if (_locationDestination != null)
      _mapController.removeMarker(GeoPoint(
          latitude: _locationDestination!.latitude,
          longitude: _locationDestination!.longitude));
    _locationDestination = param;
    setMarker(_locationDestination!, 1);
    notifyListeners();
  }

  @override
  Future<void> init() async {}

  setRoute() async {
    _mapController.clearAllRoads();

    _road = await _mapController.drawRoad(
        GeoPoint(
            latitude: _locationOrigin!.latitude,
            longitude: _locationOrigin!.longitude),
        GeoPoint(
            latitude: _locationDestination!.latitude,
            longitude: _locationDestination!.longitude),
        intersectPoint: [
          GeoPoint(
              latitude: _locationOrigin!.latitude,
              longitude: _locationOrigin!.longitude),
          GeoPoint(
              latitude: _locationDestination!.latitude,
              longitude: _locationDestination!.longitude),
        ],
        roadOption: RoadOption(
          roadColor: Colors.blue,
          roadBorderColor: Colors.blue,
          roadWidth: 100,
          roadBorderWidth: 10,
        ));

    _getPrice();
  }

  _getPrice() async {
    _isLoadingPrice = true;
    notifyListeners();
    final response =
        await _bookingCheckPriceUseCase(param: _road?.distance ?? 0.0);
    if (response.success) {
      _price = response.data!;
    } else {
      snackBarMessage = response.message;
    }
    _isLoadingPrice = false;
    notifyListeners();
  }

  setMarker(LocationEntity param, int flag) {
    _mapController.addMarker(
        GeoPoint(latitude: param.latitude, longitude: param.longitude),
        iconAnchor: IconAnchor(anchor: Anchor.top),
        markerIcon: MarkerIcon(
          iconWidget:
              (flag == 1) ? _getDestinationMarker() : _getOriginMarker(),
        ));

    if (_locationOrigin != null && _locationDestination != null) setRoute();
  }

  _getOriginMarker() {
    return Container(
      key: ValueKey('origin_marker'),
      child: Icon(
        Icons.location_pin,
        color: Colors.green,
        size: 20,
      ),
    );
  }

  _getDestinationMarker() {
    return Container(
      key: ValueKey('desktination_marker'),
      child: Icon(
        Icons.location_pin,
        color: Colors.red,
        size: 20,
      ),
    );
  }

  create() async {
    showLoading();
    final param = BookingCreateParamEntity(
        latitudeOrigin: _locationOrigin!.latitude,
        longitudeOrigin: _locationOrigin!.longitude,
        addressOrigin: _locationOrigin!.address,
        latitudeDestination: _locationDestination!.latitude,
        longitudeDestination: _locationDestination!.longitude,
        addressDestination: _locationDestination!.address,
        distance: distance!,
        timeEstimate: timeEstimate!.round());
    final response = await _bookingCreateUseCase(param: param);
    if (response.success) {
      _isSuccessId = response.data!;
    } else {
      snackBarMessage = response.message;
    }
    hideLoading();
  }
}
