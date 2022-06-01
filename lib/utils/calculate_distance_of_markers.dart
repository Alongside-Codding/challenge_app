import 'dart:math';

import 'package:kt_dart/kt.dart';
import 'package:latlong2/latlong.dart';

KtList<double> calculateDistanceInMeter(
    KtList<LatLng> latlangs, LatLng myPosition) {
  double locationLatitude;
  double locationLongitude;
  double userlatitude;
  double userlongitude;

  const p = 0.017453292519943295;
  const c = cos;

  var res = latlangs.map(
    (latlng) {
      locationLatitude = latlng.latitude;
      locationLongitude = latlng.longitude;
      userlatitude = myPosition.latitude;
      userlongitude = myPosition.longitude;

      final a = 0.5 -
          c((locationLatitude - userlatitude) * p) / 2 +
          c(userlatitude * p) *
              c(locationLatitude * p) *
              (1 - c((userlongitude - locationLongitude) * p)) /
              2;
      return 12742 * asin(sqrt(a)) * 1000;
    },
  );

  return res;
}
