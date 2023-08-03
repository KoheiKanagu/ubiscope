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

    return Container(
      width: size.width,
      height: size.height,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Theme.of(context).colorScheme.outline,
            width: 1.7,
            strokeAlign: BorderSide.strokeAlignOutside,
          ),
          borderRadius: borderRadius,
        ),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Theme.of(context).colorScheme.background,
              width: 1.5,
              strokeAlign: BorderSide.strokeAlignOutside,
            ),
            borderRadius: borderRadius,
          ),
          padding: EdgeInsets.zero,
          minimumSize: size,
          maximumSize: size,
          fixedSize: size,
          elevation: 4,
        ),
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
