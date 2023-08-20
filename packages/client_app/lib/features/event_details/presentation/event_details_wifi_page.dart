import 'package:client_app/features/event/application/wifi_providers.dart';
import 'package:collection/collection.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EventDetailsWifiPage extends HookConsumerWidget {
  const EventDetailsWifiPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final values = ref
        .watch(wiFiScanControllerProvider)
        .sorted((a, b) => b.rssi.compareTo(a.rssi));

    final scheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text('${values.length} ${MeasurementType.wifi.unit}'),
            Text(values.firstOrNull?.timestamp ?? ''),
          ],
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final e = values[index];

          return ListTile(
            visualDensity: VisualDensity.compact,
            tileColor: index.isOdd
                ? scheme.outline.withOpacity(0.1)
                : scheme.background,
            title: Text(
              e.ssid,
            ),
            subtitle: Text(
              e.bssid,
            ),
            trailing: Text(
              'RSSI: ${e.rssi}',
            ),
          );
        },
        itemCount: values.length,
      ),
    );
  }
}
