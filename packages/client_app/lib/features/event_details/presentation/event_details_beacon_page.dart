import 'package:client_app/features/event/application/beacon_providers.dart';
import 'package:client_app/gen/message.g.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EventDetailsBeaconPage extends HookConsumerWidget {
  const EventDetailsBeaconPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final valuesState = useState(
      <Beacon>[],
    );

    ref.listen(
      beaconScanControllerProvider,
      (previous, next) {
        final newBeacons = [
          ...next,
          ...valuesState.value,
        ];

        valuesState.value = newBeacons.take(100).toList();
      },
    );

    final scheme = Theme.of(context).colorScheme;
    final values = valuesState.value;

    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text(values.firstOrNull?.timestamp ?? ''),
            const Text('Recently observed Beacons'),
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
              '${e.uuid}:${e.major}:${e.minor}',
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('accuracy: ${e.accuracy}'),
                Text('timestamp: ${e.timestamp}'),
              ],
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
