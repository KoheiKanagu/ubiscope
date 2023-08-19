import 'dart:async';

import 'package:core/core.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'event_capturing_dialog_providers.g.dart';

@riverpod
class EventMeasurementResultsCounter extends _$EventMeasurementResultsCounter {
  @override
  Map<MeasurementType, int> build(
    String measurementPointId,
  ) {
    final measuredTypes = ref
            .watch(
              measurementPointSnapshotsProvider(measurementPointId),
            )
            .asData
            ?.value
            .data()
            ?.measuredTypes ??
        {};

    final timer = Timer.periodic(
      const Duration(seconds: 2),
      (timer) async {
        final newState = <MeasurementType, int>{};

        for (final e in measuredTypes.entries) {
          final type = e.key;
          final value = e.value;
          if (value == null) {
            continue;
          }

          final results = await ref
              .read(
                measurementResultsAggregateQueryProvider(
                  datasetId: value,
                  type: type,
                ),
              )
              .get();

          newState[type] = results.count;
        }

        state = newState;
      },
    );

    ref.onDispose(timer.cancel);

    return {};
  }
}
