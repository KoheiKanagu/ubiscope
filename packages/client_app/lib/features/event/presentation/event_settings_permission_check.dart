import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:client_app/features/event/application/beacon_providers.dart';
import 'package:client_app/features/event/application/wifi_providers.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:permission_handler/permission_handler.dart';

class EventSettingsPermissionCheck extends HookConsumerWidget {
  const EventSettingsPermissionCheck({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const permissionGrantedButton = ElevatedButton(
      onPressed: null,
      child: Text('Permission granted'),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Text(
            'Ubiscope requires the following permissions to be used:',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        ListTile(
          title: const Text('Location'),
          trailing: switch (ref.watch(wiFiScanPermissionControllerProvider)) {
            PermissionStatus.granted => permissionGrantedButton,
            final e => ElevatedButton(
                onPressed: () async {
                  logger.d('request Location permission: $e');

                  final result = await showOkAlertDialog(
                    context: context,
                    title: 'Location permission',
                    message:
                        // ignore: lines_longer_than_80_chars
                        'Location permission is required to detect beacons around you.',
                    okLabel: 'Next',
                  );
                  if (result == OkCancelResult.cancel) {
                    return;
                  }

                  await ref
                      .read(wiFiScanPermissionControllerProvider.notifier)
                      .requestPermission();
                },
                child: const Text('Allow'),
              ),
          },
        ),
        ListTile(
          title: const Text('Bluetooth'),
          trailing: switch (ref.watch(beaconScanPermissionControllerProvider)) {
            PermissionStatus.granted => permissionGrantedButton,
            final e => ElevatedButton(
                onPressed: () async {
                  logger.d('request Bluetooth permission: $e');

                  final result = await showOkAlertDialog(
                    context: context,
                    title: 'Bluetooth permission',
                    message:
                        // ignore: lines_longer_than_80_chars
                        'Bluetooth permission is required to detect beacons around you.',
                    okLabel: 'Next',
                  );
                  if (result == OkCancelResult.cancel) {
                    return;
                  }

                  await ref
                      .read(
                        beaconScanPermissionControllerProvider.notifier,
                      )
                      .requestPermission();
                },
                child: const Text('Allow'),
              ),
          },
        ),
      ],
    );
  }
}
