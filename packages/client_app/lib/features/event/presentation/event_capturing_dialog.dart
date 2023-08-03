import 'dart:async';

import 'package:action_slider/action_slider.dart';
import 'package:client_app/features/event/application/event_capturing_dialog_providers.dart';
import 'package:client_app/features/event/application/event_providers.dart';
import 'package:clock/clock.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

Future<void> showEventCapturingDialog({
  required BuildContext context,
  required String measurementPointId,
}) =>
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => EventCapturingDialog(
        measurementPointId: measurementPointId,
      ),
    );

class EventCapturingDialog extends HookConsumerWidget {
  EventCapturingDialog({
    super.key,
    required this.measurementPointId,
  }) {
    startTime = clock.now();
  }

  late final DateTime startTime;

  final String measurementPointId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final elapsed = clock.now().difference(startTime);

    final measuredTypesCount = ref.watch(
      eventMeasurementResultsCounterProvider(measurementPointId),
    );

    return SimpleDialog(
      title: const Text(
        'Measuring...',
      ),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 16,
      ),
      children: [
        Text('Elapsed Time: $elapsed'),
        const Gap(16),
        Container(
          width: 0,
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
          ),
          child: ActionSlider.standard(
            action: (controller) async {
              controller.success();
              await Future<void>.delayed(const Duration(milliseconds: 500));
              ref.read(eventControllerProvider).stopCaptures();

              if (context.mounted) {
                GoRouter.of(context).pop();
              }
            },
            backgroundColor: Theme.of(context).colorScheme.errorContainer,
            toggleColor: Theme.of(context).colorScheme.error,
            icon: Icon(
              Icons.stop,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
            successIcon: Icon(
              Icons.check,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
            sliderBehavior: SliderBehavior.stretch,
            child: const Text('Stop'),
          ),
        ),
        const Gap(16),
        const Text('Count of measured results recorded in the database.'),
        const Gap(8),
        ...measuredTypesCount.entries.map(
          (e) {
            final type = e.key;
            final value = e.value;

            return SizedBox(
              width: 0,
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      type.label,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                  Text(
                    '$value ${type.unit}',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
