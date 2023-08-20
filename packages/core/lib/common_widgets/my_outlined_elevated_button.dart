import 'package:core/core.dart';
import 'package:flutter/material.dart';

class MyOutlinedElevatedButton extends StatelessWidget {
  const MyOutlinedElevatedButton({
    super.key,
    required this.child,
    this.onPressed,
  });

  final Widget child;

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(8);
    const size = Size.square(48);

    return MyGlassContainer(
      radius: borderRadius.topLeft.x,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius,
          ),
          shadowColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          surfaceTintColor: Colors.transparent,
          padding: EdgeInsets.zero,
          minimumSize: size,
          maximumSize: size,
          fixedSize: size,
          elevation: 0,
        ),
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
