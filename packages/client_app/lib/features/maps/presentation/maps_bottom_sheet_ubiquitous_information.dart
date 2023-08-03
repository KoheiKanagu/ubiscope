// ignore_for_file: lines_longer_than_80_chars

import 'package:client_app/features/event/application/beacon_providers.dart';
import 'package:client_app/features/event/application/wifi_providers.dart';
import 'package:client_app/features/event_details/application/event_details_page_route.dart';
import 'package:client_app/features/maps/application/maps_bottom_sheet_providers.dart';
import 'package:client_app/features/maps/presentation/maps_bottom_sheet.dart';
import 'package:client_app/features/maps/presentation/maps_page_body.dart';
import 'package:collection/collection.dart';
import 'package:core/common_widgets/measurement_type_chip.dart';
import 'package:core/models/measurement_results_data.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MapsBottomSheetUbiquitousInformation extends HookConsumerWidget {
  const MapsBottomSheetUbiquitousInformation({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DraggableScrollableSheet(
      key: const GlobalObjectKey(
        'MapsBottomSheetUbiquitousInformation_DraggableScrollableSheet',
      ),
      controller: ref
          .watch(
            mapsBottomSheetControllerProvider(
              MapsBottomSheetType.ubiquitousInformation,
            ),
          )
          .controller,
      initialChildSize: MapsPageBody.sheetSize,
      minChildSize: MapsPageBody.sheetSize,
      maxChildSize: MapsPageBody.sheetSize + 0.2,
      snap: true,
      snapSizes: const [
        MapsPageBody.sheetSize,
        MapsPageBody.sheetSize + 0.2,
      ],
      builder: (_, controller) {
        return MapsBottomSheet(
          controller,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Tap to see details.',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                ),
                const Gap(8),
                Wrap(
                  spacing: 4,
                  children: MeasurementType.values
                      .whereNot((e) => e == MeasurementType.unknown)
                      .whereNot(
                        (e) => e == MeasurementType.magnetic,
                      ) // TODO
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
          ),
        );
      },
    );
  }
}
