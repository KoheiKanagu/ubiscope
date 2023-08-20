import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:client_app/features/event/application/event_providers.dart';
import 'package:client_app/features/event/presentation/event_capturing_dialog.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:share_plus/share_plus.dart';

class MapsBottomSheetMeasurementPointDetail extends HookConsumerWidget {
  const MapsBottomSheetMeasurementPointDetail(
    this.selectedPointId, {
    super.key,
  });

  final String selectedPointId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedPoint = ref
        .watch(measurementPointSnapshotsProvider(selectedPointId))
        .asData
        ?.value
        .data();

    final measuredTypesCompleted = selectedPoint?.measuredTypesCompleted ?? {};

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Column(
        children: [
          Visibility(
            visible: measuredTypesCompleted.isNotEmpty,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Types with completed measurements.'),
                const Gap(8),
                Wrap(
                  spacing: 4,
                  children: measuredTypesCompleted.entries.map(
                    (e) {
                      final type = e.key;
                      final datasetId = e.value;

                      return MeasurementTypeChip(
                        type,
                        subtitle: '${ref.watch(
                              measurementResultsAggregateQuerySnapshotProvider(
                                datasetId: datasetId,
                                type: type,
                              ),
                            ).asData?.value.count ?? '...'} ${type.unit}',
                        onDeleted: () {
                          ref
                              .read(measurementPointControllerProvider)
                              .deleteMeasuredType(
                                selectedPointId,
                                type: type,
                              );
                        },
                        onPressed: () async {
                          final (results, count) = (
                            await ref
                                .read(
                                  measurementResultsRecentProvider(
                                    datasetId: datasetId,
                                    type: type,
                                  ).future,
                                )
                                .then(
                                  (value) => value.docs.map((e) => e.data()),
                                ),
                            await ref
                                .read(
                                  measurementResultsAggregateQueryProvider(
                                    datasetId: datasetId,
                                    type: type,
                                  ),
                                )
                                .get()
                                .then((value) => value.count),
                          );

                          if (!context.mounted) {
                            return;
                          }

                          await showDialog<void>(
                            context: context,
                            builder: (context) {
                              return MeasurementPointDetailDialog(
                                totalDataCount: count,
                                measurementResults: results,
                              );
                            },
                          );
                        },
                      );
                    },
                  ).toList(),
                ),
                const Divider(),
              ],
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: MyOutlinedButton(
              label: 'Start measurement',
              onPressed: () async {
                final result = await showOkCancelAlertDialog(
                  context: context,
                  title: 'Do you want to start the measurement?',
                  okLabel: 'Start',
                );

                if (result == OkCancelResult.ok && context.mounted) {
                  ref.read(eventControllerProvider).startCaptures(
                        measurementPointId: selectedPointId,
                      );
                  await showEventCapturingDialog(
                    context: context,
                    measurementPointId: selectedPointId,
                  );
                }
              },
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: MyOutlinedButton(
              onPressed: () {
                Share.share(selectedPointId);
              },
              label: 'Share ID',
            ),
          ),
          const Divider(),
          SizedBox(
            width: double.infinity,
            child: MyOutlinedButton(
              destructive: true,
              onPressed: () async {
                final result = await showOkCancelAlertDialog(
                  context: context,
                  title: 'Do you want to delete the measurement point?',
                  okLabel: 'Delete',
                  isDestructiveAction: true,
                );

                if (result == OkCancelResult.ok) {
                  await ref.read(measurementPointControllerProvider).delete(
                        selectedPointId,
                      );
                  ref
                      .read(
                        mapsSelectedMeasurementPointIdProvider.notifier,
                      )
                      .unselect(
                        markerDeleted: true,
                      );
                }
              },
              label: 'Delete',
            ),
          ),
        ],
      ),
    );
  }
}
