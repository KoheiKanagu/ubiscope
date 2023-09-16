import 'dart:math';

import 'package:client_app/features/ads/presentation/my_banner_ad.dart';
import 'package:client_app/features/maps/application/maps_page_providers.dart';
import 'package:client_app/features/maps/presentation/maps_bottom_sheet.dart';
import 'package:client_app/features/maps/presentation/maps_reticle.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MapsPageBody extends HookConsumerWidget {
  const MapsPageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 1 meter is how many pixels
    final pixelsPerMeter = useState<double>(0);

    final cameraTarget = useState<LatLng?>(null);

    return LayoutBuilder(
      builder: (context, constraints) => Stack(
        children: [
          GoogleMap(
            initialCameraPosition: MapsController.initialCameraPosition,
            indoorViewEnabled: true,
            myLocationButtonEnabled: false,
            onMapCreated: (maps) {
              cameraTarget.value = MapsController.initialCameraPosition.target;
              ref.read(mapsControllerProvider.notifier).onMapCreated(maps);
            },
            onIndoorBuildingFocused: () => ref
                .read(mapsAimedPointControllerProvider.notifier)
                .onIndoorEvent(),
            onIndoorLevelActivated: () => ref
                .read(mapsAimedPointControllerProvider.notifier)
                .onIndoorEvent(),
            padding: EdgeInsets.only(
              bottom: constraints.maxHeight *
                  ref.watch(mapsBottomSheetSizeProvider),
              left: MediaQuery.viewPaddingOf(context).left,
              right: MediaQuery.viewPaddingOf(context).right,
            ),
            markers: ref.watch(mapsMeasurementPointMarkersProvider),
            onCameraIdle: () async {
              await ref
                  .read(mapsAimedPointControllerProvider.notifier)
                  .aim(cameraTarget.value);
            },
            onCameraMove: (camera) async {
              final maps = ref.read(mapsControllerProvider)!;

              final mapsHeight = constraints.maxHeight *
                  (1 - ref.read(mapsBottomSheetSizeProvider));
              final mapsWidth = constraints.maxWidth;
              final diagonal = sqrt(pow(mapsHeight, 2) + pow(mapsWidth, 2));

              final radiusKm = await maps.getVisibleRegionRadiusKm();
              final px = diagonal / radiusKm / 1000;
              pixelsPerMeter.value = px;

              cameraTarget.value = camera.target;
            },
            onTap: (_) {
              ref
                  .read(mapsSelectedMeasurementPointIdProvider.notifier)
                  .onTapMarker(null);
            },
          ),
          SizedBox(
            height: constraints.maxHeight *
                (1 - ref.watch(mapsBottomSheetSizeProvider)),
            child: Center(
              child: MapsReticle(
                pixelsPerMeter.value,
              ),
            ),
          ),
          Positioned(
            bottom:
                constraints.maxHeight * ref.watch(mapsBottomSheetSizeProvider) +
                    32,
            left: MediaQuery.viewPaddingOf(context).left + 16,
            child: MyOutlinedElevatedButton(
              child: const Icon(
                Icons.pin_drop,
              ),
              onPressed: () {
                ref.read(measurementPointControllerProvider).addAimedPoint();
              },
            ),
          ),
          const MapsBottomSheet(),
          const MyBannerAd(),
        ],
      ),
    );
  }
}
