import 'dart:ui';

import 'package:flutter/material.dart';

/// referenced [【Flutter】glassmorphismを作成した](https://zenn.dev/al_rosa/articles/70c2e647e88f56)
class MyGlassContainer extends StatelessWidget {
  const MyGlassContainer({
    super.key,
    required this.child,
    this.radius = 16,
  });

  final Widget child;

  final double radius;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(
        Radius.circular(radius),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 8,
          sigmaY: 8,
        ),
        child: CustomPaint(
          painter: _GradientPainter(
            strokeWidth: 1,
            radius: radius,
            gradient: RadialGradient(
              radius: 1.6,
              center: Alignment.topLeft,
              colors: [
                Theme.of(context).colorScheme.onSurface.withOpacity(0.3),
                Theme.of(context).colorScheme.onSurface.withOpacity(0.05),
              ],
            ),
          ),
          child: DecoratedBox(
            decoration: ShapeDecoration(
              gradient: RadialGradient(
                radius: 1.6,
                center: Alignment.topLeft,
                colors: [
                  Theme.of(context)
                      .colorScheme
                      .onPrimaryContainer
                      .withOpacity(0.1),
                  Theme.of(context)
                      .colorScheme
                      .onPrimaryContainer
                      .withOpacity(0.05),
                ],
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(radius),
                ),
              ),
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}

class _GradientPainter extends CustomPainter {
  _GradientPainter({
    required this.strokeWidth,
    required this.radius,
    required this.gradient,
  });

  final Paint _paint = Paint();

  final double radius;

  final double strokeWidth;

  final Gradient gradient;

  @override
  void paint(Canvas canvas, Size size) {
    final outerRect = Offset.zero & size;
    final outerRRect = RRect.fromRectAndRadius(
      outerRect,
      Radius.circular(radius),
    );

    final innerRect = Rect.fromLTWH(
      strokeWidth,
      strokeWidth,
      size.width - strokeWidth * 2,
      size.height - strokeWidth * 2,
    );
    final innerRRect = RRect.fromRectAndRadius(
      innerRect,
      Radius.circular(radius - strokeWidth),
    );

    _paint.shader = gradient.createShader(outerRect);

    final path1 = Path()..addRRect(outerRRect);
    final path2 = Path()..addRRect(innerRRect);
    final path = Path.combine(
      PathOperation.difference,
      path1,
      path2,
    );
    canvas.drawPath(path, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => oldDelegate != this;
}
