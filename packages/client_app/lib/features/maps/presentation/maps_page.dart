import 'package:animations/animations.dart';
import 'package:client_app/features/ads/presentation/my_banner_ad.dart';
import 'package:client_app/features/maps/application/maps_providers.dart';
import 'package:client_app/features/maps/presentation/maps_bottom_sheet.dart';
import 'package:client_app/features/settings/presentation/settings_page.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MapsPage extends HookConsumerWidget {
  const MapsPage({
    super.key,
  });

  static const double mapSize = 0.3;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    switch (Theme.of(context).brightness) {
      case Brightness.light:
        ref.watch(mapsControllerProvider.notifier).disableNightMode();
      case Brightness.dark:
        ref.watch(mapsControllerProvider.notifier).enableNightMode();
    }

    return Scaffold(
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const Gap(kToolbarHeight + 8),
          MyOutlineWidget(
            radius: 24,
            child: OpenContainer(
              closedShape: const CircleBorder(),
              closedElevation: 0,
              closedBuilder: (_, openContainer) => IconButton(
                onPressed: () => openContainer(),
                color: Theme.of(context).primaryColor,
                icon: const Icon(
                  Icons.settings,
                ),
              ),
              openBuilder: (_, __) => const SettingsPage(),
            ),
          ),
        ],
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
            const SafeArea(
              child: SizedBox(
                height: kToolbarHeight,
                child: MyBannerAd(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
