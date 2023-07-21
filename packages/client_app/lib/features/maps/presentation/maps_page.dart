import 'package:client_app/features/maps/application/maps_providers.dart';
import 'package:client_app/features/maps/presentation/maps_bottom_sheet.dart';
import 'package:client_app/features/settings/application/settings_page_route.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MapsPage extends HookConsumerWidget {
  const MapsPage({
    super.key,
  });

  static const double mapSize = 0.3;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.small(
        onPressed: () {
          const SettingsPageRoute().push<void>(context);
        },
        child: const Icon(
          Icons.settings,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndTop,
      body: LayoutBuilder(
        builder: (context, constraints) => Stack(
          children: [
            GoogleMap(
              initialCameraPosition: MapsController.initialCameraPosition,
              indoorViewEnabled: true,
              myLocationButtonEnabled: false,
              onMapCreated:
                  ref.read(mapsControllerProvider.notifier).onMapCreated,
              onIndoorBuildingFocused: () => ref
                  .read(mapsActiveLevelNameControllerProvider.notifier)
                  .onIndoorEvent(),
              onIndoorLevelActivated: () => ref
                  .read(mapsActiveLevelNameControllerProvider.notifier)
                  .onIndoorEvent(),
              padding: EdgeInsets.only(
                bottom: constraints.maxHeight * mapSize,
              ),
            ),
            DraggableScrollableSheet(
              initialChildSize: mapSize,
              minChildSize: mapSize,
              maxChildSize: 1 - mapSize,
              snap: true,
              builder: (_, controller) {
                return MapsBottomSheet(
                  controller: controller,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
