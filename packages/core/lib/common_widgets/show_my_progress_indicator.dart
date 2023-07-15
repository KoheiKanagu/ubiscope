import 'dart:async';

import 'package:flutter/material.dart';

void showMyProgressIndicator(BuildContext context) {
  unawaited(
    showDialog<void>(
      context: context,
      builder: (context) => const AlertDialog.adaptive(
        title: Center(
          child: CircularProgressIndicator.adaptive(),
        ),
      ),
      barrierDismissible: false,
    ),
  );
}
