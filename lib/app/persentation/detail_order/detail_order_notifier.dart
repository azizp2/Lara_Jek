import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:lara_jek/app/domain/entity/booking.dart';
import 'package:lara_jek/app/use_case/booking/booking_cancel.dart';
import 'package:lara_jek/app/use_case/booking/booking_get_by_id.dart';
import 'package:lara_jek/app/use_case/booking/booking_update_status.dart';
import 'package:lara_jek/app/use_case/tracking/tracking_get_by_id.dart';
import 'package:lara_jek/core/constant/constant.dart';
import 'package:lara_jek/core/helper/shared_preferences_helper.dart';
import 'package:lara_jek/core/provider/app_provider.dart';

class DetailOrderNotifier extends AppProvider {
  final int _id;
  final BookingGetByIdUseCase _bookingGetByIdUseCase;
  final BookingUpdateStatusUseCase _bookingUpdateStatusUseCase;
  final BookingCancelUseCase _bookingCancelUseCase;
  final TrackingGetByIdUseCase _trackingGetByIdUseCase;

  DetailOrderNotifier(
    this._id,
    this._bookingGetByIdUseCase,
    this._bookingUpdateStatusUseCase,
    this._bookingCancelUseCase,
    this._trackingGetByIdUseCase,
  ) {
    init();
  }

  MapController _mapController = MapController.cyclOSMLayer(
    initPosition: GeoPoint(latitude: 0.0, longitude: 0.0),
  );
  MapController _mapFullScreenController = MapController.cyclOSMLayer(
    initPosition: GeoPoint(latitude: 0.0, longitude: 0.0),
  );

  bool _isDisposed = false;
  bool _isShowDialog = false;
  BookingEntity? _booking;
  String _role = '';
  GeoPoint? _driverLocation;
  bool _isTrackingActive = false;

  bool get isDisposed => _isDisposed;
  bool get isShowDialog => _isShowDialog;
  BookingEntity? get booking => _booking;
  String get role => _role;
  GeoPoint? get driverLocation => _driverLocation;
  MapController get mapController => _mapController;
  MapController get mapFullScreenController => _mapFullScreenController;

  set isShowDialog(bool param) => _isShowDialog = param;

  @override
  Future<void> init() async {
    if (errorMessage.isEmpty) await _getDetailUser();
    await _getBooking();
  }

  @override
  void dispose() {
    _isDisposed = true;
    _isTrackingActive = false;
    _mapController.dispose();
    _mapFullScreenController.dispose();
    super.dispose();
  }

  _getBooking() async {
    if (_isDisposed) return;

    showLoading();
    try {
      final response = await _bookingGetByIdUseCase(param: _id);

      if (response.success) {
        final previousStatus = _booking?.status;
        _booking = response.data;

        // Hanya refresh jika status berubah
        if (previousStatus != _booking?.status) {
          notifyListeners();
        }

        if (_booking?.status == STATUS_FINDING_DRIVER) {
          // Refresh otomatis hanya untuk FINDING_DRIVER
          hideLoading();
          await Future.delayed(const Duration(seconds: 10));
          if (!_isDisposed) _getBooking();
        } else {
          hideLoading();
          // Mulai tracking jika status sesuai
          if ((_booking?.status == STATUS_DRIVER_PICKUP ||
                  _booking?.status == STATUS_DRIVER_DELIVER) &&
              !_isTrackingActive) {
            _isTrackingActive = true;
            _getTrackingDriver();
          }
        }
      } else {
        errorMessage = response.message;
        hideLoading();
      }
    } catch (e) {
      if (!_isDisposed) {
        errorMessage = 'Gagal memuat data booking';
        hideLoading();
      }
    }
  }

  _getTrackingDriver() async {
    if (_isDisposed || !_isTrackingActive) return;

    try {
      final response = await _trackingGetByIdUseCase(param: _id);
      if (response.success && response.data != null) {
        final newLocation = GeoPoint(
          latitude: response.data!.latitude,
          longitude: response.data!.longitude,
        );

        // Hanya update jika lokasi berubah
        if (_driverLocation == null ||
            _driverLocation!.latitude != newLocation.latitude ||
            _driverLocation!.longitude != newLocation.longitude) {
          if (_driverLocation != null) {
            await _mapController.removeMarker(_driverLocation!);
          }

          _driverLocation = newLocation;
          await setRoute();
          notifyListeners();
        }

        // Hanya refresh jika status masih perlu tracking
        if (!_isDisposed &&
            _isTrackingActive &&
            (_booking?.status == STATUS_DRIVER_PICKUP ||
                _booking?.status == STATUS_DRIVER_DELIVER)) {
          await Future.delayed(const Duration(seconds: 15));
          if (!_isDisposed) _getTrackingDriver();
        }
      }
    } catch (e) {
      debugPrint('Tracking error: $e');
      // Coba lagi setelah delay jika masih perlu tracking
      if (!_isDisposed && _isTrackingActive) {
        await Future.delayed(const Duration(seconds: 15));
        if (!_isDisposed) _getTrackingDriver();
      }
    }
  }

  _getDetailUser() async {
    if (_isDisposed) return;

    showLoading();
    try {
      _role = await SharedPreferencesHelper.getString(PREF_ROLE) ?? '';
      notifyListeners();
    } finally {
      if (!_isDisposed) hideLoading();
    }
  }

  setRoute() async {
    if (_booking == null || _isDisposed) return;

    try {
      if (_booking?.status == STATUS_DRIVER_PICKUP && _driverLocation != null) {
        await _updateMapForPickup();
      } else if (_booking!.status == STATUS_DRIVER_DELIVER &&
          _driverLocation != null) {
        await _updateMapForDelivery();
      } else {
        await _updateMapForDefaultRoute();
      }

      if (_isShowDialog) {
        if (_booking?.status == STATUS_DRIVER_PICKUP &&
            _driverLocation != null) {
          await _updateFullScreenMapForPickup();
        } else if (_booking!.status == STATUS_DRIVER_DELIVER &&
            _driverLocation != null) {
          await _updateFullScreenMapForDelivery();
        } else {
          await _updateFullScreenMapForDefaultRoute();
        }
      }
    } catch (e) {
      debugPrint('Error updating map: $e');
    }
  }

  Future<void> _updateMapForPickup() async {
    await _mapController.clearAllRoads();
    await _mapController.drawRoad(
      _driverLocation!,
      GeoPoint(
        latitude: _booking!.latitudeOrigin,
        longitude: _booking!.longitudeOrigin,
      ),
      roadOption: RoadOption(
        roadColor: Colors.blue,
        roadWidth: 100,
        roadBorderWidth: 10,
        roadBorderColor: Colors.blue,
        zoomInto: true,
      ),
    );

    await _updateMapMarkers(
      driverLocation: _driverLocation,
      origin: GeoPoint(
        latitude: _booking!.latitudeOrigin,
        longitude: _booking!.longitudeOrigin,
      ),
    );
  }

  Future<void> _updateMapForDelivery() async {
    await _mapController.clearAllRoads();
    await _mapController.drawRoad(
      _driverLocation!,
      GeoPoint(
        latitude: _booking!.latitudeDestination,
        longitude: _booking!.longitudeDestination,
      ),
      roadOption: RoadOption(
        roadColor: Colors.blue,
        roadWidth: 100,
        roadBorderWidth: 10,
        roadBorderColor: Colors.blue,
        zoomInto: true,
      ),
    );

    await _updateMapMarkers(
      driverLocation: _driverLocation,
      destination: GeoPoint(
        latitude: _booking!.latitudeDestination,
        longitude: _booking!.longitudeDestination,
      ),
    );
  }

  Future<void> _updateMapForDefaultRoute() async {
    await _mapController.clearAllRoads();
    await _mapController.drawRoad(
      GeoPoint(
        latitude: _booking!.latitudeOrigin,
        longitude: _booking!.longitudeOrigin,
      ),
      GeoPoint(
        latitude: _booking!.latitudeDestination,
        longitude: _booking!.longitudeDestination,
      ),
      roadOption: RoadOption(
        roadColor: Colors.blue,
        roadWidth: 100,
        roadBorderWidth: 10,
        roadBorderColor: Colors.blue,
        zoomInto: true,
      ),
    );

    await _updateMapMarkers(
      origin: GeoPoint(
        latitude: _booking!.latitudeOrigin,
        longitude: _booking!.longitudeOrigin,
      ),
      destination: GeoPoint(
        latitude: _booking!.latitudeDestination,
        longitude: _booking!.longitudeDestination,
      ),
    );
  }

  Future<void> _updateFullScreenMapForPickup() async {
    await _mapFullScreenController.clearAllRoads();
    await _mapFullScreenController.drawRoad(
      _driverLocation!,
      GeoPoint(
        latitude: _booking!.latitudeOrigin,
        longitude: _booking!.longitudeOrigin,
      ),
      roadOption: RoadOption(
        roadColor: Colors.blue,
        roadWidth: 100,
        roadBorderWidth: 10,
        roadBorderColor: Colors.blue,
        zoomInto: true,
      ),
    );

    await _updateFullScreenMapMarkers(
      driverLocation: _driverLocation,
      origin: GeoPoint(
        latitude: _booking!.latitudeOrigin,
        longitude: _booking!.longitudeOrigin,
      ),
    );
  }

  Future<void> _updateFullScreenMapForDelivery() async {
    await _mapFullScreenController.clearAllRoads();
    await _mapFullScreenController.drawRoad(
      _driverLocation!,
      GeoPoint(
        latitude: _booking!.latitudeDestination,
        longitude: _booking!.longitudeDestination,
      ),
      roadOption: RoadOption(
        roadColor: Colors.blue,
        roadWidth: 100,
        roadBorderWidth: 10,
        roadBorderColor: Colors.blue,
        zoomInto: true,
      ),
    );

    await _updateFullScreenMapMarkers(
      driverLocation: _driverLocation,
      destination: GeoPoint(
        latitude: _booking!.latitudeDestination,
        longitude: _booking!.longitudeDestination,
      ),
    );
  }

  Future<void> _updateFullScreenMapForDefaultRoute() async {
    await _mapFullScreenController.clearAllRoads();
    await _mapFullScreenController.drawRoad(
      GeoPoint(
        latitude: _booking!.latitudeOrigin,
        longitude: _booking!.longitudeOrigin,
      ),
      GeoPoint(
        latitude: _booking!.latitudeDestination,
        longitude: _booking!.longitudeDestination,
      ),
      roadOption: RoadOption(
        roadColor: Colors.blue,
        roadWidth: 100,
        roadBorderWidth: 10,
        roadBorderColor: Colors.blue,
        zoomInto: true,
      ),
    );

    await _updateFullScreenMapMarkers(
      origin: GeoPoint(
        latitude: _booking!.latitudeOrigin,
        longitude: _booking!.longitudeOrigin,
      ),
      destination: GeoPoint(
        latitude: _booking!.latitudeDestination,
        longitude: _booking!.longitudeDestination,
      ),
    );
  }

  Future<void> _updateMapMarkers({
    GeoPoint? driverLocation,
    GeoPoint? origin,
    GeoPoint? destination,
  }) async {
    if (driverLocation != null) {
      await _mapController.addMarker(
        driverLocation,
        iconAnchor: IconAnchor(anchor: Anchor.top),
        markerIcon: MarkerIcon(
          iconWidget: _getDriverMarker(),
        ),
      );
    }

    if (origin != null) {
      await _mapController.addMarker(
        origin,
        iconAnchor: IconAnchor(anchor: Anchor.top),
        markerIcon: MarkerIcon(
          iconWidget: _getOriginMarker(),
        ),
      );
    }

    if (destination != null) {
      await _mapController.addMarker(
        destination,
        iconAnchor: IconAnchor(anchor: Anchor.top),
        markerIcon: MarkerIcon(
          iconWidget: _getDestinationMarker(),
        ),
      );
    }
  }

  Future<void> _updateFullScreenMapMarkers({
    GeoPoint? driverLocation,
    GeoPoint? origin,
    GeoPoint? destination,
  }) async {
    if (driverLocation != null) {
      await _mapFullScreenController.addMarker(
        driverLocation,
        iconAnchor: IconAnchor(anchor: Anchor.top),
        markerIcon: MarkerIcon(
          iconWidget: _getDriverMarker(),
        ),
      );
    }

    if (origin != null) {
      await _mapFullScreenController.addMarker(
        origin,
        iconAnchor: IconAnchor(anchor: Anchor.top),
        markerIcon: MarkerIcon(
          iconWidget: _getOriginMarker(),
        ),
      );
    }

    if (destination != null) {
      await _mapFullScreenController.addMarker(
        destination,
        iconAnchor: IconAnchor(anchor: Anchor.top),
        markerIcon: MarkerIcon(
          iconWidget: _getDestinationMarker(),
        ),
      );
    }
  }

  _getDriverMarker() {
    return Container(
      key: ValueKey('driver_marker'),
      child: Icon(
        Icons.drive_eta,
        color: Colors.green,
        size: 20,
      ),
    );
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
      key: ValueKey('destination_marker'),
      child: Icon(
        Icons.location_pin,
        color: Colors.red,
        size: 20,
      ),
    );
  }

  updateStatus() async {
    if (_isDisposed) return;

    showLoading();
    try {
      final status = (_booking?.status == STATUS_DRIVER_PICKUP)
          ? STATUS_DRIVER_DELIVER
          : (_booking?.status == STATUS_DRIVER_DELIVER)
              ? STATUS_ARRIVED
              : (_booking?.status == STATUS_ARRIVED)
                  ? STATUS_PAID
                  : '';

      if (status.isEmpty) return;

      final param = BookingStatusParamEntity(id: _id, status: status);
      final response = await _bookingUpdateStatusUseCase(param: param);

      if (response.success && !_isDisposed) {
        await _getBooking();
      } else if (!_isDisposed) {
        snackBarMessage = response.message;
      }
    } catch (e) {
      if (!_isDisposed) {
        snackBarMessage = 'Gagal memperbarui status';
      }
    } finally {
      if (!_isDisposed) hideLoading();
    }
  }

  cancel() async {
    if (_isDisposed) return;

    showLoading();
    try {
      final response = await _bookingCancelUseCase(param: _id);

      if (response.success && !_isDisposed) {
        // Hentikan tracking jika aktif
        _isTrackingActive = false;
        await _getBooking();
      } else if (!_isDisposed) {
        snackBarMessage = response.message;
      }
    } catch (e) {
      if (!_isDisposed) {
        snackBarMessage = 'Terjadi kesalahan saat membatalkan pesanan';
      }
    } finally {
      if (!_isDisposed) hideLoading();
    }
  }
}

// // import 'package:flutter/material.dart';
// // import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
// // import 'package:lara_jek/app/domain/entity/booking.dart';
// // import 'package:lara_jek/app/use_case/booking/booking_cancel.dart';
// // import 'package:lara_jek/app/use_case/booking/booking_get_by_id.dart';
// // import 'package:lara_jek/app/use_case/booking/booking_update_status.dart';
// // import 'package:lara_jek/app/use_case/booking/tracking_get_by_id.dart';
// // import 'package:lara_jek/core/constant/constant.dart';
// // import 'package:lara_jek/core/helper/shared_preferences_helper.dart';
// // import 'package:lara_jek/core/provider/app_provider.dart';

// // class DetailOrderNotifier extends AppProvider {
// //   final int _id;
// //   final BookingGetByIdUseCase _bookingGetByIdUseCase;
// //   final BookingUpdateStatusUseCase _bookingUpdateStatusUseCase;
// //   final BookingCancelUseCase _bookingCancelUseCase;
// //   final TrackingGetByIdUseCase _trackingGetByIdUseCase;

// //   DetailOrderNotifier(
// //       this._id,
// //       this._bookingGetByIdUseCase,
// //       this._bookingUpdateStatusUseCase,
// //       this._bookingCancelUseCase,
// //       this._trackingGetByIdUseCase) {
// //     init();
// //   }

// //   MapController _mapController = MapController.cyclOSMLayer(
// //       initPosition: GeoPoint(latitude: 0.0, longitude: 0.0));
// //   MapController _mapFullScreenController = MapController.cyclOSMLayer(
// //       initPosition: GeoPoint(latitude: 0.0, longitude: 0.0));

// //   bool _isDisposed = false;
// //   bool _isShowDialog = false;
// //   BookingEntity? _booking;
// //   String _role = '';
// //   GeoPoint? _driverLocation;

// //   bool get isDisposed => _isDisposed;

// //   bool get isShowDialog => _isShowDialog;
// //   BookingEntity? get booking => _booking;
// //   String get role => _role;
// //   GeoPoint? get driverLocation => _driverLocation;
// //   MapController get mapController => _mapController;
// //   MapController get mapFullScreenController => _mapFullScreenController;

// //   set isShowDialog(bool param) => _isShowDialog = param;

// //   @override
// //   Future<void> init() async {
// //     await _getBooking();
// //     if (errorMessage.isEmpty) await _getDetailUser();
// //   }

// //   @override
// //   void dispose() {
// //     _isDisposed = true;
// //     _mapController.dispose();
// //     _mapFullScreenController.dispose();
// //     super.dispose();
// //   }

// //   _getBooking() async {
// //     showLoading();
// //     final response = await _bookingGetByIdUseCase(param: _id);
// //     if (response.success) {
// //       _booking = response.data;
// //       if (_booking?.status == STATUS_FINDING_DRIVER) {
// //         hideLoading();
// //         await Future.delayed(Duration(seconds: 10));
// //         _getBooking();
// //       } else if (_booking?.status == STATUS_DRIVER_PICKUP ||
// //           _booking?.status == STATUS_DRIVER_DELIVER) {
// //         hideLoading();
// //         _getTrackingDriver();
// //       }
// //     } else {
// //       errorMessage = response.message;
// //       hideLoading();
// //     }
// //   }

// //   _getTrackingDriver() async {
// //     final response = await _trackingGetByIdUseCase(param: _id);
// //     if (response.success) {
// //       if (_driverLocation == null) {
// //         _mapController.removeMarker(GeoPoint(
// //             latitude: _driverLocation!.latitude,
// //             longitude: _driverLocation!.longitude));
// //       }
// //       _driverLocation = GeoPoint(
// //           latitude: response.data!.latitude,
// //           longitude: response.data!.longitude);

// //       if (_mapController.isAllLayersVisible) {
// //         setRoute();
// //       }
// //     }

// //     Future.delayed(Duration(seconds: 15));
// //     if (response.data?.status != _booking?.status) {
// //       init();
// //     } else if (!isDispose &&
// //         (response.data?.status == STATUS_DRIVER_PICKUP ||
// //             response.data?.status == STATUS_DRIVER_DELIVER)) {
// //       _getTrackingDriver();
// //     }
// //   }

// //   _getDetailUser() async {
// //     showLoading();

// //     _role = await SharedPreferencesHelper.getString(PREF_ROLE) ?? '';

// //     hideLoading();
// //   }

// //   setRoute() async {
// //     if (_booking != null) {
// //       if (_booking?.status == STATUS_DRIVER_PICKUP && _driverLocation != null) {
// //         await _mapController.clearAllRoads();
// //         await _mapController.drawRoad(
// //             GeoPoint(
// //                 latitude: _driverLocation!.latitude,
// //                 longitude: _driverLocation!.longitude),
// //             GeoPoint(
// //                 latitude: _booking!.latitudeOrigin,
// //                 longitude: _booking!.longitudeOrigin),
// //             intersectPoint: [
// //               GeoPoint(
// //                   latitude: _driverLocation!.latitude,
// //                   longitude: _driverLocation!.longitude),
// //               GeoPoint(
// //                   latitude: _booking!.latitudeOrigin,
// //                   longitude: _booking!.longitudeOrigin)
// //             ],
// //             roadOption: RoadOption(
// //                 roadColor: Colors.blue,
// //                 roadWidth: 100,
// //                 roadBorderWidth: 10,
// //                 roadBorderColor: Colors.blue,
// //                 zoomInto: true));

// //         await _mapController.addMarker(
// //             GeoPoint(
// //                 latitude: _driverLocation!.latitude,
// //                 longitude: _driverLocation!.longitude),
// //             iconAnchor: IconAnchor(anchor: Anchor.top),
// //             markerIcon: MarkerIcon(
// //               iconWidget: _getDriverMarker(),
// //             ));

// //         await _mapController.addMarker(
// //             GeoPoint(
// //                 latitude: _booking!.latitudeOrigin,
// //                 longitude: _booking!.longitudeOrigin),
// //             iconAnchor: IconAnchor(anchor: Anchor.top),
// //             markerIcon: MarkerIcon(
// //               iconWidget: _getOriginMarker(),
// //             ));
// //       } else if (_booking!.status == STATUS_DRIVER_DELIVER &&
// //           _driverLocation != null) {
// //         await _mapController.clearAllRoads();
// //         await _mapController.drawRoad(
// //             GeoPoint(
// //                 latitude: _driverLocation!.latitude,
// //                 longitude: _driverLocation!.longitude),
// //             GeoPoint(
// //                 latitude: _booking!.latitudeDestination,
// //                 longitude: _booking!.longitudeDestination),
// //             intersectPoint: [
// //               GeoPoint(
// //                   latitude: _driverLocation!.latitude,
// //                   longitude: _driverLocation!.longitude),
// //               GeoPoint(
// //                   latitude: _booking!.latitudeDestination,
// //                   longitude: _booking!.longitudeDestination)
// //             ],
// //             roadOption: RoadOption(
// //                 roadColor: Colors.blue,
// //                 roadWidth: 100,
// //                 roadBorderWidth: 10,
// //                 roadBorderColor: Colors.blue,
// //                 zoomInto: true));

// //         await _mapController.addMarker(
// //             GeoPoint(
// //                 latitude: _driverLocation!.latitude,
// //                 longitude: _driverLocation!.longitude),
// //             iconAnchor: IconAnchor(anchor: Anchor.top),
// //             markerIcon: MarkerIcon(
// //               iconWidget: _getDriverMarker(),
// //             ));

// //         await _mapController.addMarker(
// //             GeoPoint(
// //                 latitude: _booking!.latitudeDestination,
// //                 longitude: _booking!.longitudeDestination),
// //             iconAnchor: IconAnchor(anchor: Anchor.top),
// //             markerIcon: MarkerIcon(
// //               iconWidget: _getDestinationMarker(),
// //             ));
// //       } else {
// //         await _mapController.clearAllRoads();
// //         await _mapController.drawRoad(
// //             GeoPoint(
// //                 latitude: _booking!.latitudeOrigin,
// //                 longitude: _booking!.longitudeOrigin),
// //             GeoPoint(
// //                 latitude: _booking!.latitudeDestination,
// //                 longitude: _booking!.longitudeDestination),
// //             intersectPoint: [
// //               GeoPoint(
// //                   latitude: _booking!.latitudeOrigin,
// //                   longitude: _booking!.longitudeOrigin),
// //               GeoPoint(
// //                   latitude: _booking!.latitudeDestination,
// //                   longitude: _booking!.longitudeDestination)
// //             ],
// //             roadOption: RoadOption(
// //                 roadColor: Colors.blue,
// //                 roadWidth: 100,
// //                 roadBorderWidth: 10,
// //                 roadBorderColor: Colors.blue,
// //                 zoomInto: true));

// //         await _mapController.addMarker(
// //             GeoPoint(
// //                 latitude: _booking!.latitudeOrigin,
// //                 longitude: _booking!.longitudeOrigin),
// //             iconAnchor: IconAnchor(anchor: Anchor.top),
// //             markerIcon: MarkerIcon(
// //               iconWidget: _getOriginMarker(),
// //             ));

// //         await _mapController.addMarker(
// //             GeoPoint(
// //                 latitude: _booking!.latitudeDestination,
// //                 longitude: _booking!.longitudeDestination),
// //             iconAnchor: IconAnchor(anchor: Anchor.top),
// //             markerIcon: MarkerIcon(
// //               iconWidget: _getDestinationMarker(),
// //             ));
// //       }
// //       if (_isShowDialog) {
// //         if (_booking?.status == STATUS_DRIVER_PICKUP &&
// //             _driverLocation != null) {
// //           await _mapFullScreenController.clearAllRoads();
// //           await _mapFullScreenController.drawRoad(
// //               GeoPoint(
// //                   latitude: _driverLocation!.latitude,
// //                   longitude: _driverLocation!.longitude),
// //               GeoPoint(
// //                   latitude: _booking!.latitudeOrigin,
// //                   longitude: _booking!.longitudeOrigin),
// //               intersectPoint: [
// //                 GeoPoint(
// //                     latitude: _driverLocation!.latitude,
// //                     longitude: _driverLocation!.longitude),
// //                 GeoPoint(
// //                     latitude: _booking!.latitudeOrigin,
// //                     longitude: _booking!.longitudeOrigin)
// //               ],
// //               roadOption: RoadOption(
// //                   roadColor: Colors.blue,
// //                   roadWidth: 100,
// //                   roadBorderWidth: 10,
// //                   roadBorderColor: Colors.blue,
// //                   zoomInto: true));

// //           await _mapFullScreenController.addMarker(
// //               GeoPoint(
// //                   latitude: _driverLocation!.latitude,
// //                   longitude: _driverLocation!.longitude),
// //               iconAnchor: IconAnchor(anchor: Anchor.top),
// //               markerIcon: MarkerIcon(
// //                 iconWidget: _getDriverMarker(),
// //               ));

// //           await _mapFullScreenController.addMarker(
// //               GeoPoint(
// //                   latitude: _booking!.latitudeOrigin,
// //                   longitude: _booking!.longitudeOrigin),
// //               iconAnchor: IconAnchor(anchor: Anchor.top),
// //               markerIcon: MarkerIcon(
// //                 iconWidget: _getOriginMarker(),
// //               ));
// //         } else if (_booking!.status == STATUS_DRIVER_DELIVER &&
// //             _driverLocation != null) {
// //           await _mapFullScreenController.clearAllRoads();
// //           await _mapFullScreenController.drawRoad(
// //               GeoPoint(
// //                   latitude: _driverLocation!.latitude,
// //                   longitude: _driverLocation!.longitude),
// //               GeoPoint(
// //                   latitude: _booking!.latitudeDestination,
// //                   longitude: _booking!.longitudeDestination),
// //               intersectPoint: [
// //                 GeoPoint(
// //                     latitude: _driverLocation!.latitude,
// //                     longitude: _driverLocation!.longitude),
// //                 GeoPoint(
// //                     latitude: _booking!.latitudeDestination,
// //                     longitude: _booking!.longitudeDestination)
// //               ],
// //               roadOption: RoadOption(
// //                   roadColor: Colors.blue,
// //                   roadWidth: 100,
// //                   roadBorderWidth: 10,
// //                   roadBorderColor: Colors.blue,
// //                   zoomInto: true));

// //           await _mapFullScreenController.addMarker(
// //               GeoPoint(
// //                   latitude: _driverLocation!.latitude,
// //                   longitude: _driverLocation!.longitude),
// //               iconAnchor: IconAnchor(anchor: Anchor.top),
// //               markerIcon: MarkerIcon(
// //                 iconWidget: _getDriverMarker(),
// //               ));

// //           await _mapFullScreenController.addMarker(
// //               GeoPoint(
// //                   latitude: _booking!.latitudeDestination,
// //                   longitude: _booking!.longitudeDestination),
// //               iconAnchor: IconAnchor(anchor: Anchor.top),
// //               markerIcon: MarkerIcon(
// //                 iconWidget: _getDestinationMarker(),
// //               ));
// //         } else {
// //           await _mapFullScreenController.clearAllRoads();
// //           await _mapFullScreenController.drawRoad(
// //               GeoPoint(
// //                   latitude: _booking!.latitudeOrigin,
// //                   longitude: _booking!.longitudeOrigin),
// //               GeoPoint(
// //                   latitude: _booking!.latitudeDestination,
// //                   longitude: _booking!.longitudeDestination),
// //               intersectPoint: [
// //                 GeoPoint(
// //                     latitude: _booking!.latitudeOrigin,
// //                     longitude: _booking!.longitudeOrigin),
// //                 GeoPoint(
// //                     latitude: _booking!.latitudeDestination,
// //                     longitude: _booking!.longitudeDestination)
// //               ],
// //               roadOption: RoadOption(
// //                   roadColor: Colors.blue,
// //                   roadWidth: 100,
// //                   roadBorderWidth: 10,
// //                   roadBorderColor: Colors.blue,
// //                   zoomInto: true));

// //           await _mapFullScreenController.addMarker(
// //               GeoPoint(
// //                   latitude: _booking!.latitudeOrigin,
// //                   longitude: _booking!.longitudeOrigin),
// //               iconAnchor: IconAnchor(anchor: Anchor.top),
// //               markerIcon: MarkerIcon(
// //                 iconWidget: _getOriginMarker(),
// //               ));

// //           await _mapFullScreenController.addMarker(
// //               GeoPoint(
// //                   latitude: _booking!.latitudeDestination,
// //                   longitude: _booking!.longitudeDestination),
// //               iconAnchor: IconAnchor(anchor: Anchor.top),
// //               markerIcon: MarkerIcon(
// //                 iconWidget: _getDestinationMarker(),
// //               ));
// //         }
// //       }
// //     }
// //   }

// //   _getDriverMarker() {
// //     return Container(
// //       key: ValueKey('driver_marker'),
// //       child: Icon(
// //         Icons.drive_eta,
// //         color: Colors.green,
// //         size: 20,
// //       ),
// //     );
// //   }

// //   _getOriginMarker() {
// //     return Container(
// //       key: ValueKey('origin_marker'),
// //       child: Icon(
// //         Icons.location_pin,
// //         color: Colors.green,
// //         size: 20,
// //       ),
// //     );
// //   }

// //   _getDestinationMarker() {
// //     return Container(
// //       key: ValueKey('destination_marker'),
// //       child: Icon(
// //         Icons.location_pin,
// //         color: Colors.red,
// //         size: 20,
// //       ),
// //     );
// //   }

// //   updateStatus() async {
// //     showLoading();
// //     final status = (_booking?.status == STATUS_DRIVER_PICKUP)
// //         ? STATUS_DRIVER_DELIVER
// //         : (_booking?.status == STATUS_DRIVER_DELIVER)
// //             ? STATUS_ARRIVED
// //             : (_booking?.status == STATUS_ARRIVED)
// //                 ? STATUS_PAID
// //                 : '';
// //     final param = BookingStatusParamEntity(id: _id, status: status);
// //     final response = await _bookingUpdateStatusUseCase(param: param);
// //     if (response.success) {
// //       hideLoading();
// //       init();
// //     } else {
// //       snackBarMessage = response.message;
// //       hideLoading();
// //     }
// //   }

// //   cancel() async {
// //     showLoading();
// //     final response = await _bookingCancelUseCase(param: _id);

// //     if (response.success) {
// //       hideLoading();
// //       init();
// //     } else {
// //       snackBarMessage = response.message;
// //       hideLoading();
// //     }
// //   }
// }
