import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:weather_app/utils/const.dart';

Future<LocationData?> getLocation() async {
  Location location = Location();

  bool _serviceEnabled;
  PermissionStatus _permissionGranted;
  LocationData _locationData;

  _serviceEnabled = await location.serviceEnabled();
  if (!_serviceEnabled) {
    _serviceEnabled = await location.requestService();
    if (!_serviceEnabled) {
      return null;
    }
  }

  _permissionGranted = await location.hasPermission();
  if (_permissionGranted == PermissionStatus.denied) {
    _permissionGranted = await location.requestPermission();
    if (_permissionGranted != PermissionStatus.granted) {
      ScaffoldMessenger.of(navigatorKey.currentState!.context)
          .showSnackBar(const SnackBar(
        content: Text("Go to settings and allow location"),
        behavior: SnackBarBehavior.floating,
      ));
      return null;
    }
  }
  _locationData = await location.getLocation();
  return _locationData;
}
