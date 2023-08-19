import 'dart:io';

import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:client_app/features/event/application/event_providers.dart';
import 'package:client_app/features/event/presentation/event_settings_beacon.dart';
import 'package:client_app/features/event/presentation/event_settings_permission_check.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EventSettingsPage extends HookConsumerWidget {
  const EventSettingsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return WillPopScope(
      onWillPop: () async {
        final permission = ref.read(eventPermissionStatusProvider);
        if (!permission) {
          await showOkAlertDialog(
            context: context,
            title: 'Permission Required',
            message: 'Please allow all permissions to use this app.',
          );
          return false;
        }

        final uuid = ref.read(sharedPreferencesBeaconScanUuidProvider);
        if (Platform.isIOS && (uuid?.isEmpty ?? true)) {
          await showOkAlertDialog(
            context: context,
            title: 'Beacon UUID Required',
            message: 'Please set a beacon UUID to use this app.',
          );
          return false;
        }

        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Event Settings'),
        ),
        body: ListView(
          children: const [
            EventSettingsPermissionCheck(),
            Divider(),
            EventSettingsBeacon(),
          ],
        ),
      ),
    );
  }
}
