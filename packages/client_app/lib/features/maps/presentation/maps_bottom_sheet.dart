import 'package:client_app/features/events/application/beacon_providers.dart';
import 'package:client_app/features/events/application/wifi_providers.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MapsBottomSheet extends HookConsumerWidget {
  const MapsBottomSheet({
    super.key,
    required this.controller,
  });

  final ScrollController? controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Material(
      elevation: 24,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16),
        ),
      ),
      child: ListView(
        controller: controller,
        padding: EdgeInsets.zero,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 12,
            ),
            child: Center(
              child: Container(
                height: 4,
                width: 32,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              final result = await ref
                  .read(wiFiScanControllerProvider.notifier)
                  .checkPermission();
              logger.d('Permission.location.status: $result');

              final result2 = await ref
                  .read(beaconScanControllerProvider.notifier)
                  .checkPermission();
              logger.d('Permission.bluetooth.status: $result2');
            },
            child: const Text('checkPermission'),
          ),
          ElevatedButton(
            onPressed: () async {
              await ref
                  .read(wiFiScanControllerProvider.notifier)
                  .requestPermission();
              await ref
                  .read(beaconScanControllerProvider.notifier)
                  .requestPermission();
            },
            child: const Text('requestPermission'),
          ),
          ElevatedButton(
            onPressed: () async {
              await ref.read(wiFiScanControllerProvider.notifier).start();
              await ref
                  .read(beaconScanControllerProvider.notifier)
                  .start(uuid: 'E02CC25E-0049-4185-832C-3A65DB755D01');
              logger.d('startScan');
            },
            child: const Text('startScan'),
          ),
          ElevatedButton(
            onPressed: () {
              ref.read(wiFiScanControllerProvider.notifier).stop();
              ref.read(beaconScanControllerProvider.notifier).stop();
            },
            child: const Text('stopScan'),
          ),
          ElevatedButton(
            onPressed: () async {
              final result = await ref
                  .read(wiFiScanControllerProvider.notifier)
                  .isScanThrottleEnabled();
              logger.d('isScanThrottleEnabled: $result');
            },
            child: const Text('isScanThrottleEnabled'),
          ),
          ...ref.watch(beaconScanControllerProvider).map(
                (e) => ListTile(
                  title: Column(
                    children: [
                      Text('uuid: ${e.uuid}'),
                      Text('major: ${e.major}'),
                      Text('minor: ${e.minor}'),
                      Text('rssi: ${e.rssi}'),
                      Text(
                        'timestamp: ${e.timestamp}',
                      ),
                    ],
                  ),
                ),
              ),
          ...ref.watch(wiFiScanControllerProvider).map(
                (e) => ListTile(
                  title: Column(
                    children: [
                      Text('ssid: ${e.ssid}'),
                      Text('bssid: ${e.bssid}'),
                      Text('rssi: ${e.rssi}'),
                      Text('frequency: ${e.frequency}'),
                      Text('capabilities: ${e.capabilities}'),
                      Text('centerFreq0: ${e.centerFreq0}'),
                      Text('centerFreq1: ${e.centerFreq1}'),
                      Text('channelWidth: ${e.channelWidth}'),
                      Text(
                        'timestamp: ${e.timestamp}',
                      ),
                    ],
                  ),
                ),
              ),
        ],
      ),
    );
  }
}
