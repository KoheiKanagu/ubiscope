import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:client_app/features/event/application/beacon_providers.dart';
import 'package:client_app/features/event/application/wifi_providers.dart';
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
          trailing: ref.watch(wiFiScanPermissionControllerProvider) ==
                  PermissionStatus.granted
              ? permissionGrantedButton
              : ElevatedButton(
                  onPressed: () async {
                    final result = await ref
                        .read(wiFiScanPermissionControllerProvider.notifier)
                        .requestPermission();

                    if (result != PermissionStatus.granted) {
                      if (context.mounted) {
                        await showPermissionDeniedDialog(context);
                      }
                    }
                  },
                  child: const Text('Allow'),
                ),
        ),
        ListTile(
          title: const Text('Bluetooth'),
          trailing: ref.watch(beaconScanPermissionControllerProvider) ==
                  PermissionStatus.granted
              ? permissionGrantedButton
              : ElevatedButton(
                  onPressed: () async {
                    final result = await ref
                        .read(
                          beaconScanPermissionControllerProvider.notifier,
                        )
                        .requestPermission();

                    if (result != PermissionStatus.granted) {
                      if (context.mounted) {
                        await showPermissionDeniedDialog(context);
                      }
                    }
                  },
                  child: const Text('Allow'),
                ),
        ),
      ],
    );
  }

  Future<void> showPermissionDeniedDialog(BuildContext context) async {
    final result = await showModalActionSheet(
      context: context,
      title: 'Permission denied',
      message: 'Please allow the permission to use this app.',
      actions: [
        const SheetAction(
          label: 'Go to settings',
          key: OkCancelResult.ok,
          isDefaultAction: true,
        ),
      ],
    );

    if (result == OkCancelResult.ok) {
      await openAppSettings();
    }
  }
}
