import 'package:cloud_firestore/cloud_firestore.dart';
// ignore: implementation_imports
import 'package:geoflutterfire_plus/src/math.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

extension GoogleMapControllerExtension on GoogleMapController {
  Future<double> getVisibleRegionRadiusKm() async {
    final region = await getVisibleRegion();

    final radiusKm = distanceInKm(
          geopoint1: GeoPoint(
            region.southwest.latitude,
            region.southwest.longitude,
          ),
          geopoint2: GeoPoint(
            region.northeast.latitude,
            region.northeast.longitude,
          ),
        ) /
        2;

    return radiusKm;
  }
}
