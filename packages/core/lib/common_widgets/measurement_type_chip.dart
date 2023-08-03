import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';

class MeasurementTypeChip extends StatelessWidget {
  const MeasurementTypeChip(
    this.type, {
    super.key,
    this.onDeleted,
    required this.onPressed,
    this.subtitle,
  });

  final MeasurementType type;

  final VoidCallback onPressed;

  final VoidCallback? onDeleted;

  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    final color = type.color.computeLuminance() > 0.5
        ? Theme.of(context).colorScheme.onBackground
        : Theme.of(context).colorScheme.background;

    return InputChip(
      onPressed: onPressed,
      onDeleted: onDeleted == null
          ? null
          : () async {
              final result = await showOkCancelAlertDialog(
                context: context,
                title: 'Delete?',
                message:
                    // ignore: lines_longer_than_80_chars
                    'Do you want to delete the measurement results for ${type.label}?',
                isDestructiveAction: true,
              );

              if (result == OkCancelResult.ok) {
                onDeleted!();
              }
            },
      deleteIcon: const Icon(
        Icons.cancel,
        size: 18,
      ),
      deleteIconColor: color,
      label: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            type.label,
            style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: color,
                  fontWeight: FontWeight.bold,
                ),
          ),
          if (subtitle != null)
            Text(
              subtitle!,
              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    color: color,
                    fontWeight: FontWeight.bold,
                  ),
            ),
        ],
      ),
      backgroundColor: type.color,
    );
  }
}
