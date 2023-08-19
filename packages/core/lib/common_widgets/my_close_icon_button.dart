import 'package:flutter/material.dart';

class MyCloseIconButton extends StatelessWidget {
  const MyCloseIconButton({
    super.key,
    this.onPressed,
  });

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton.filledTonal(
      onPressed: onPressed,
      icon: const Icon(Icons.close),
      visualDensity: VisualDensity.compact,
      style: IconButton.styleFrom(
        shape: const CircleBorder(),
      ),
    );
  }
}
