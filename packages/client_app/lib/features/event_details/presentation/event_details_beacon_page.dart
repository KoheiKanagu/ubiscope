import 'package:client_app/features/event/application/beacon_providers.dart';
import 'package:collection/collection.dart';
import 'package:core/models/measurement_results_data.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EventDetailsBeaconPage extends HookConsumerWidget {
  const EventDetailsBeaconPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final values = ref
        .watch(beaconScanControllerProvider)
        .sorted((a, b) => b.rssi.compareTo(a.rssi));

    final scheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text('${values.length} ${MeasurementType.ibeacon.unit}'),
            Text(values.firstOrNull?.timestamp ?? ''),
          ],
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final e = values[index];

          return ListTile(
            visualDensity: VisualDensity.compact,
            tileColor: index.isEven ? scheme.onPrimary : scheme.background,
            title: Text(
              '${e.uuid}:${e.major}:${e.minor}',
            ),
            subtitle: Text(
              'accuracy: ${e.accuracy}',
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
