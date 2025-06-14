import 'package:flutter/material.dart';
import 'package:lara_jek/app/domain/entity/location.dart';
import 'package:location_picker_flutter_map/location_picker_flutter_map.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBarBuild(context),
      body: _bodyBuil(context),
    );
  }

  _appBarBuild(BuildContext context) {
    return AppBar(
      title: Text('Ambil Lokasi '),
    );
  }

  _bodyBuil(BuildContext context) {
    return SafeArea(
      child: FlutterLocationPicker(
          initZoom: 11,
          minZoomLevel: 5,
          maxZoomLevel: 16,
          trackMyPosition: true,
          searchBarBackgroundColor: Colors.white,
          mapLanguage: 'id',
          selectLocationButtonText: 'Pilih Lokasi',
          onPicked: (pickedData) {
            final result = LocationEntity(
                address: pickedData.address,
                latitude: pickedData.latLong.latitude,
                longitude: pickedData.latLong.longitude);
            Navigator.pop(context, result);
          }),
    );
  }
}
