import 'package:flutter/material.dart';

class MyOutlinedWidget extends StatelessWidget {
  const MyOutlinedWidget({
    super.key,
    required this.child,
    this.shape,
  });

  final Widget child;

  final ShapeBorder? shape;

  @override
  Widget build(BuildContext context) {
    final side = BorderSide(
      color: Theme.of(context).colorScheme.surface,
      width: 1.5,
    );

    return DecoratedBox(
      decoration: ShapeDecoration(
        shape: shape ??
            RoundedRectangleBorder(
              side: side,
            ),
        shadows: [
          BoxShadow(
            color: Theme.of(context).colorScheme.shadow.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 4,
          ),
        ],
      ),
      child: DecoratedBox(
        decoration: ShapeDecoration(
          color: Theme.of(context).colorScheme.background,
          shape: switch (shape) {
            final CircleBorder e => e.copyWith(
                side: side,
              ),
            final e => e ??
                RoundedRectangleBorder(
                  side: side,
                ),
          },
          shadows: [
            BoxShadow(
              color: Theme.of(context).colorScheme.outline,
              spreadRadius: 0.2,
            ),
          ],
        ),
        child: child,
      ),
    );
  }
}
