import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

part 'splash_screen.g.dart';

@TypedGoRoute<SplashScreenRoute>(
  path: SplashScreenRoute.path,
)
class SplashScreenRoute extends GoRouteData {
  const SplashScreenRoute();

  static const path = '/';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '𝕌𝕓𝕚𝕤𝕔𝕠𝕡𝕖',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                    fontSize: 64,
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                  ),
            ),
            const Gap(8),
            const CircularProgressIndicator.adaptive(),
          ],
        ),
      ),
    );
  }
}
