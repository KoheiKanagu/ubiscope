import 'package:core/core.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            const SignInPageRoute().push<void>(context);
          },
          child: const Text('Sign In'),
        ),
      ),
    );
  }
}
