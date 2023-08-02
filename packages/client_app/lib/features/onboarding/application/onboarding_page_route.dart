import 'package:client_app/features/onboarding/presentation/onboarding_page.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

part 'onboarding_page_route.g.dart';

@TypedGoRoute<OnboardingPageRoute>(
  path: OnboardingPageRoute.path,
)
class OnboardingPageRoute extends GoRouteData {
  const OnboardingPageRoute();

  static const path = '/onboarding';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const OnboardingPage();
  }
}
