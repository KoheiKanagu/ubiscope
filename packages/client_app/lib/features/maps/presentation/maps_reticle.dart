import 'dart:math';

import 'package:flutter/material.dart';

class MapsReticle extends StatelessWidget {
  const MapsReticle(
    this.pixelsPerMeter, {
    super.key,
  });

  static const range = [5, 10, 15, 20];

  final double pixelsPerMeter;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: pixelsPerMeter,
            height: 2,
            color: Theme.of(context).colorScheme.primary,
          ),
          Container(
            width: 2,
            height: pixelsPerMeter,
            color: Theme.of(context).colorScheme.primary,
          ),
          ...range.map(
            (e) {
              final radius = pixelsPerMeter * e;

              // Do not display the reticle if it does not fit on the screen
              if (min(constraints.maxHeight, constraints.maxWidth) < radius) {
                return const SizedBox.shrink();
              }

              return IgnorePointer(
                child: Container(
                  width: radius,
                  height: radius,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context)
                          .colorScheme
                          .primary
                          .withOpacity(0.5),
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    '${e}m',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Theme.of(context)
                              .colorScheme
                              .primary
                              .withOpacity(0.8),
                        ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
