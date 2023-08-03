import 'package:client_app/features/event/application/event_page_route.dart';
import 'package:client_app/features/event/application/event_providers.dart';
import 'package:client_app/features/maps/presentation/maps_page_body.dart';
import 'package:client_app/features/maps/presentation/maps_page_floating_action_button.dart';
import 'package:core/core.dart';
import 'package:core/providers/maps_providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MapsPage extends HookConsumerWidget {
  const MapsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    switch (Theme.of(context).brightness) {
      case Brightness.light:
        ref.watch(mapsControllerProvider.notifier).disableNightMode();
      case Brightness.dark:
        ref.watch(mapsControllerProvider.notifier).enableNightMode();
    }

    ref.listen(
      eventPermissionStatusProvider,
      (_, next) {
        if (!next) {
          const EventSettingsPageRoute().push<void>(context);
        }
      },
    );

    return const Scaffold(
      floatingActionButton: MapsPageFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndTop,
      body: MapsPageBody(),
    );
  }
}
