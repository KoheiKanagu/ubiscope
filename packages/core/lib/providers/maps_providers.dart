import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:core/core.dart';
import 'package:core/gen/assets.gen.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'maps_providers.g.dart';

@Riverpod(
  keepAlive: true,
)
class MapsController extends _$MapsController {
  static const initialCameraPosition = CameraPosition(
    target: LatLng(34.70196275349318, 135.49936682409276),
    zoom: 18,
  );

  @override
  GoogleMapController? build() {
    return null;
  }

  // ignore: use_setters_to_change_properties
  void onMapCreated(GoogleMapController controller) {
    state = controller;
  }

  Future<void> enableNightMode() async {
    final style = await rootBundle.loadString(
      'packages/core/${Assets.googleMaps.mapStyleNight}',
    );
    await state?.setMapStyle(style);
  }

  Future<void> disableNightMode() async {
    await state?.setMapStyle(null);
  }
}

@riverpod
class MapsAimedPointController extends _$MapsAimedPointController {
  @override
  ({
    String? level,
    String? levelShort,
    GeoPoint point,
    double radiusKm,
  })? build() {
    return null;
  }

  Future<void> onIndoorEvent() async {
    final activeLevelName =
        await ref.read(mapsControllerProvider)?.getActiveLevelName();

    final activeLevelShortName =
        await ref.read(mapsControllerProvider)?.getActiveLevelShortName();

    if (state != null) {
      final newState = (
        level: activeLevelName,
        levelShort: activeLevelShortName,
        point: state!.point,
        radiusKm: state!.radiusKm,
      );

      if (state != newState) {
        state = newState;
      }
    }

    ref.read(mapsSelectedMeasurementPointIdProvider.notifier).unselect(
          markerDeleted: true,
        );
  }

  Future<void> aim(
    LatLng? latLng,
  ) async {
    final maps = ref.read(mapsControllerProvider);
    if (maps == null || latLng == null) {
      return;
    }

    state = (
      level: await maps.getActiveLevelName(),
      levelShort: await maps.getActiveLevelShortName(),
      point: GeoPoint(latLng.latitude, latLng.longitude),
      radiusKm: await maps.getVisibleRegionRadiusKm(),
    );
  }
}

@riverpod
Set<Marker> mapsMeasurementPointMarkers(
  MapsMeasurementPointMarkersRef ref,
) {
  return ref
      .watch(measurementPointAroundSnapshotsProvider)
      .map(
        (e) => Marker(
          markerId: MarkerId(e.id),
          position: LatLng(
            e.data().location.geopoint.latitude,
            e.data().location.geopoint.longitude,
          ),
          infoWindow: InfoWindow(
            title: e.id,
          ),
          onTap: () {
            ref
                .read(mapsSelectedMeasurementPointIdProvider.notifier)
                .onTapMarker(e.id);
          },
          icon: e.data().measuredTypesCompleted.isEmpty
              ? BitmapDescriptor.defaultMarker
              : BitmapDescriptor.defaultMarkerWithHue(
                  BitmapDescriptor.hueGreen,
                ),
        ),
      )
      .toSet();
}

@riverpod
class MapsSelectedMeasurementPointId extends _$MapsSelectedMeasurementPointId {
  @override
  String? build() {
    return null;
  }

  // ignore: use_setters_to_change_properties
  void onTapMarker(String? id) {
    state = id;
  }

  void unselect({
    bool markerDeleted = false,
  }) {
    if (state != null) {
      /// マーカーが削除済みだった場合PlatformExceptionが発生するので抑制する
      if (!markerDeleted) {
        /// マーカータップで開いたInfoWindowを閉じる
        ref.read(mapsControllerProvider)?.hideMarkerInfoWindow(
              MarkerId(state!),
            );
      }
    }

    state = null;
  }
}
