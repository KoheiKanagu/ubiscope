import 'package:client_app/gen/assets.gen.dart';
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
  AsyncValue<GoogleMapController> build() {
    return const AsyncValue.loading();
  }

  void onMapCreated(GoogleMapController controller) {
    state = AsyncValue.data(controller);
  }

  Future<void> enableNightMode() async {
    final style = await rootBundle.loadString(
      Assets.googleMaps.mapStyleNight,
    );
    await state.asData?.value.setMapStyle(style);
  }

  Future<void> disableNightMode() async {
    await state.asData?.value.setMapStyle(null);
  }
}

@riverpod
class MapsActiveLevelNameController extends _$MapsActiveLevelNameController {
  @override
  ({
    String? levelName,
    String? levelShortName,
  })? build() {
    return null;
  }

  Future<void> onIndoorEvent() async {
    final activeLevelName = await ref
        .read(mapsControllerProvider)
        .asData
        ?.value
        .getActiveLevelName();

    final activeLevelShortName = await ref
        .read(mapsControllerProvider)
        .asData
        ?.value
        .getActiveLevelShortName();

    state = (
      levelName: activeLevelName,
      levelShortName: activeLevelShortName,
    );
  }
}
