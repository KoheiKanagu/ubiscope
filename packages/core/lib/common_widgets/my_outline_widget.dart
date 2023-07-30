import 'package:flutter/material.dart';

class MyOutlineWidget extends StatelessWidget {
  const MyOutlineWidget({
    super.key,
    required this.child,
    this.shape,
  });

  final Widget child;

  final CircleBorder? shape;

  @override
  Widget build(BuildContext context) {
    final side = BorderSide(
      color: Theme.of(context).colorScheme.surface,
      width: 1.5,
    );

    return Material(
      elevation: 8,
      shape: shape,
      child: DecoratedBox(
        decoration: ShapeDecoration(
          color: Theme.of(context).colorScheme.background,
          shape: shape?.copyWith(
                side: side,
              ) ??
              RoundedRectangleBorder(
                side: side,
              ),
          shadows: [
            BoxShadow(
              color: Theme.of(context).colorScheme.outline,
              spreadRadius: 0.5,
            ),
          ],
        ),
        child: child,
      ),
    );
  }
}
