import 'package:client_app/features/event/application/beacon_providers.dart';
import 'package:client_app/features/event/application/wifi_providers.dart';
import 'package:client_app/features/event_details/application/event_details_page_route.dart';
import 'package:collection/collection.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MapsBottomSheetUbiquitousInformation extends HookConsumerWidget {
  const MapsBottomSheetUbiquitousInformation({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Tap to see details.'),
          const Gap(8),
          Wrap(
            spacing: 4,
            children: MeasurementType.values
                .whereNot((e) => e == MeasurementType.unknown)
                .whereNot(
                  (e) => e == MeasurementType.magnetic,
                ) // TODO(kingu): remove this when implemented
                .map(
                  (e) => MeasurementTypeChip(
                    e,
                    onPressed: () {
                      EventDetailsPageRoute(e).push<void>(context);
                    },
                    subtitle: switch (e) {
                      MeasurementType.wifi =>
                        '${ref.watch(wiFiScanControllerProvider).length} '
                            '${e.unit}',
                      MeasurementType.ibeacon =>
                        '${ref.watch(beaconScanControllerProvider).length} '
                            '${e.unit}',
                      _ => null,
                    },
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
