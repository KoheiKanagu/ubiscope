import 'package:core/core.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SignInPage extends HookConsumerWidget {
  const SignInPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SignInScreen(
      auth: ref.watch(firebaseAuthProvider),
    );
  }
}
