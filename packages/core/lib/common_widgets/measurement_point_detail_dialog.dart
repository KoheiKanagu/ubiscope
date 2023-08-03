import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:core/core.dart';
import 'package:core/models/measurement_results.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intersperse/intersperse.dart';

class MeasurementPointDetailDialog extends StatelessWidget {
  const MeasurementPointDetailDialog({
    super.key,
    required this.totalDataCount,
    required this.measurementResults,
  });

  final int totalDataCount;

  final Iterable<MeasurementResults> measurementResults;

  @override
  Widget build(BuildContext context) {
    const padding = EdgeInsets.symmetric(
      horizontal: 16,
    );

    return SimpleDialog(
      surfaceTintColor: Theme.of(context).colorScheme.background,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Expanded(
                child: Text('Measured Data'),
              ),
              MyCloseIconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
          Text(
            'Total data count: $totalDataCount',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const Gap(8),
        ],
      ),
      contentPadding: const EdgeInsets.symmetric(
        vertical: 12,
      ),
      children: [
        const Text('Recent Results'),
        ...measurementResults
            .mapIndexed<Widget>(
              (index, e) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  (
                    'measuredAt',
                    e.measuredAt?.toDate().toIso8601String() ?? '',
                  ),
                  (
                    'measuredBy',
                    e.measuredBy,
                  ),
                  (
                    'data',
                    const JsonEncoder.withIndent('    ')
                        .convert(e.data.toJson()),
                  ),
                ]
                    .map(
                      (e) => <Widget>[
                        Text(
                          '${e.$1}:',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        Text(
                          e.$2,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    )
                    .intersperse([const Gap(8)])
                    .flattened
                    .toList(),
              ),
            )
            .intersperseOuter(const Divider()),
        const Text('and more...'),
      ]
          .map(
            (e) => e is Divider
                ? e
                : Padding(
                    padding: padding,
                    child: e,
                  ),
          )
          .toList(),
    );
  }
}
