import 'package:flutter/material.dart';

class MyOutlineWidget extends StatelessWidget {
  const MyOutlineWidget({
    super.key,
    required this.child,
    this.radius = 0,
  });

  final Widget child;

  final double radius;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 8,
      shape: radius > 0 ? const CircleBorder() : null,
      child: DecoratedBox(
        decoration: ShapeDecoration(
          color: Theme.of(context).colorScheme.background,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Theme.of(context).colorScheme.surface,
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(radius),
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
