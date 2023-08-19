import 'dart:io';

import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:client_app/features/event/application/beacon_providers.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EventSettingsBeacon extends HookConsumerWidget {
  const EventSettingsBeacon({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Text(
            'Information about the beacon to be detected is required',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        ListTile(
          title: Text(
            Platform.isIOS ? 'UUID (Required)' : 'UUID',
          ),
          subtitle: Text(
            ref.watch(sharedPreferencesBeaconScanUuidProvider) ?? 'Not set',
          ),
          trailing: const Icon(
            Icons.mode_edit,
          ),
          onTap: () async {
            final results = await showTextInputDialog(
              context: context,
              title: 'UUID',
              message: Platform.isIOS
                  ? 'Required'
                  : 'If not set, all beacons will be detected',
              textFields: [
                DialogTextField(
                  initialText:
                      ref.read(sharedPreferencesBeaconScanUuidProvider),
                  hintText: 'XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX',
                  autocorrect: false,
                ),
              ],
            );

            final value = results?.first;
            if (value == null) {
              // Cancel
              return;
            }

            await ref
                .read(sharedPreferencesControllerProvider.notifier)
                .setBeaconScanUuid(value.isEmpty ? null : value);
            await ref.read(beaconScanControllerProvider.notifier).stop();
          },
        ),
        ListTile(
          title: const Text('Major'),
          subtitle: Text(
            ref.watch(sharedPreferencesBeaconScanMajorProvider)?.toString() ??
                'Not set',
          ),
          trailing: const Icon(
            Icons.mode_edit,
          ),
          onTap: () async {
            final results = await showTextInputDialog(
              context: context,
              title: 'Major',
              message: 'If not set, all beacons will be detected',
              textFields: [
                DialogTextField(
                  initialText: ref
                      .read(sharedPreferencesBeaconScanMajorProvider)
                      ?.toString(),
                  keyboardType: TextInputType.number,
                  autocorrect: false,
                ),
              ],
            );

            final value = results?.first;
            if (value == null) {
              // Cancel
              return;
            }

            await ref
                .read(sharedPreferencesControllerProvider.notifier)
                .setBeaconScanMajor(int.tryParse(value));
            await ref.read(beaconScanControllerProvider.notifier).stop();
          },
        ),
        ListTile(
          title: const Text('Minor'),
          subtitle: Text(
            ref.watch(sharedPreferencesBeaconScanMinorProvider)?.toString() ??
                'Not set',
          ),
          trailing: const Icon(
            Icons.mode_edit,
          ),
          onTap: () async {
            final results = await showTextInputDialog(
              context: context,
              title: 'Minor',
              message: 'If not set, all beacons will be detected',
              textFields: [
                DialogTextField(
                  initialText: ref
                      .read(sharedPreferencesBeaconScanMinorProvider)
                      ?.toString(),
                  keyboardType: TextInputType.number,
                  autocorrect: false,
                ),
              ],
            );

            final value = results?.first;
            if (value == null) {
              // Cancel
              return;
            }

            await ref
                .read(sharedPreferencesControllerProvider.notifier)
                .setBeaconScanMinor(int.tryParse(value));
            await ref.read(beaconScanControllerProvider.notifier).stop();
          },
        ),
      ],
    );
  }
}
