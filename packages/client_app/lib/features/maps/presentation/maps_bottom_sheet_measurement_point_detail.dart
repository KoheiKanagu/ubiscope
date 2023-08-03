// ignore_for_file: lines_longer_than_80_chars

import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:client_app/features/event/application/event_providers.dart';
import 'package:client_app/features/event/presentation/event_capturing_dialog.dart';
import 'package:client_app/features/maps/application/maps_bottom_sheet_providers.dart';
import 'package:client_app/features/maps/presentation/maps_bottom_sheet.dart';
import 'package:client_app/features/maps/presentation/maps_page_body.dart';
import 'package:collection/collection.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:share_plus/share_plus.dart';

class MapsBottomSheetMeasurementPointDetail extends HookConsumerWidget {
  const MapsBottomSheetMeasurementPointDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(
      mapsSelectedMeasurementPointIdProvider,
      (_, next) async {
        /// measurementPointDetail以外を閉じる
        /// measurementPointDetailは直後に開く可能性があるので無駄にアニメーションしないようにするためignore
        for (final e in MapsBottomSheetType.values.whereNot(
          (element) => element == MapsBottomSheetType.measurementPointDetail,
        )) {
          await ref
              .read(
                mapsBottomSheetControllerProvider(e),
              )
              .close();
        }

        final controller = ref.read(
          mapsBottomSheetControllerProvider(
            MapsBottomSheetType.measurementPointDetail,
          ),
        );

        if (next != null) {
          await controller.open();
        } else {
          await controller.close();
        }
      },
    );

    final selectedPointId =
        ref.watch(mapsSelectedMeasurementPointIdProvider) ?? '';
    final selectedPoint =
        ref.watch(measurementPointSnapshotsProvider(selectedPointId));

    final measuredTypes =
        selectedPoint.asData?.value.data()?.measuredTypes ?? {};
    final measuredTypesCompleted =
        selectedPoint.asData?.value.data()?.measuredTypesCompleted ?? [];

    return DraggableScrollableSheet(
      key: const GlobalObjectKey(
        'MapsBottomSheetMeasurementPointDetail_DraggableScrollableSheet',
      ),
      controller: ref
          .watch(
            mapsBottomSheetControllerProvider(
              MapsBottomSheetType.measurementPointDetail,
            ),
          )
          .controller,
      initialChildSize: 0,
      minChildSize: 0,
      maxChildSize: MapsPageBody.sheetSize + 0.2,
      snap: true,
      builder: (_, controller) {
        return MapsBottomSheet(
          controller,
          onClose: () {
            ref
                .read(mapsSelectedMeasurementPointIdProvider.notifier)
                .unselect();
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                        children: measuredTypesCompleted
                            .map(
                              (e) => MeasurementTypeChip(
                                e,
                                subtitle: switch ((
                                  measuredTypes[e],
                                  e,
                                )) {
                                  (final String id, final MeasurementType e) =>
                                    '${ref.watch(
                                          measurementResultsAggregateQuerySnapshotProvider(
                                            datasetId: id,
                                            type: e,
                                          ),
                                        ).asData?.value.count ?? '...'} ${e.unit}',
                                  (_, _) => null,
                                },
                                onDeleted: () {
                                  ref
                                      .read(measurementPointControllerProvider)
                                      .deleteMeasuredType(
                                        selectedPointId,
                                        type: e,
                                      );
                                },
                                onPressed: () async {
                                  final datasetId = measuredTypes[e];
                                  if (datasetId == null) {
                                    return;
                                  }

                                  final (results, count) = (
                                    await ref
                                        .read(
                                          measurementResultsRecentProvider(
                                            datasetId: datasetId,
                                            type: e,
                                          ).future,
                                        )
                                        .then(
                                          (value) =>
                                              value.docs.map((e) => e.data()),
                                        ),
                                    await ref
                                        .read(
                                          measurementResultsAggregateQueryProvider(
                                            datasetId: datasetId,
                                            type: e,
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
                              ),
                            )
                            .toList(),
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
                        await ref
                            .read(measurementPointControllerProvider)
                            .delete(
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
          ),
        );
      },
    );
  }
}
