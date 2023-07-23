import 'package:client_app/features/wifi/application/wifi_providers.dart';
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
            },
            child: const Text('checkPermission'),
          ),
          ElevatedButton(
            onPressed: () async {
              final result = await ref
                  .read(wiFiScanControllerProvider.notifier)
                  .requestPermission();
              logger.d('requestPermission: $result');
            },
            child: const Text('requestPermission'),
          ),
          ElevatedButton(
            onPressed: () async {
              final result = await ref
                  .read(wiFiScanControllerProvider.notifier)
                  .startScan();
              logger.d('startScan: $result');
            },
            child: const Text('startScan'),
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
                    ],
                  ),
                ),
              ),
        ],
      ),
    );
  }
}
