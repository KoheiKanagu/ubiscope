import 'package:client_app/features/event/application/event_page_route.dart'
    as event_page_router;
import 'package:client_app/features/event/application/event_providers.dart';
import 'package:client_app/features/event_details/application/event_details_page_route.dart'
    as event_details_page_router;
import 'package:client_app/features/maps/application/maps_page_route.dart'
    as maps_page_route;
import 'package:client_app/features/onboarding/application/onboarding_page_route.dart'
    as onboarding_page_route;
import 'package:client_app/features/settings/application/settings_page_route.dart'
    as settings_page_route;
import 'package:client_app/routing/my_navigator_observer.dart';
import 'package:client_app/routing/splash_screen.dart' as splash_screen;
import 'package:core/core.dart' hide User;
import 'package:core/features/auth/application/auth_page_route.dart'
    as auth_page_route;
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'my_go_router.g.dart';

@riverpod
GoRouter myGoRouter(
  MyGoRouterRef ref,
) =>
    GoRouter(
      navigatorKey: rootNavigatorStateKey,
      routes: [
        ...splash_screen.$appRoutes,
        ...auth_page_route.$appRoutes,
        ...maps_page_route.$appRoutes,
        ...settings_page_route.$appRoutes,
        ...onboarding_page_route.$appRoutes,
        ...event_page_router.$appRoutes,
        ...event_details_page_router.$appRoutes,
      ],
      errorBuilder: (context, state) {
        logger.e(
          [
            'router error',
            'name: ${state.name}',
            'fullPath: ${state.fullPath}',
            'pathParameters: ${state.pathParameters}',
            'queryParameters: ${state.uri.queryParameters}',
            'location: ${state.uri}',
            'queryParametersAll: ${state.uri.queryParametersAll}',
          ],
          error: state.error,
          stackTrace: StackTrace.current,
        );

        return const Scaffold(
          body: Center(
            child: Text(
              'An unexpected error has occurred. Please restart the app.',
            ),
          ),
        );
      },
      observers: [
        ref.watch(myNavigatorObserverProvider),
        FirebaseAnalyticsObserver(
          analytics: ref.watch(firebaseAnalyticsProvider),
        ),
      ],
      debugLogDiagnostics: kDebugMode,
      refreshListenable: ref.watch(firebaseUserUidValueNotifierProvider),
      initialLocation: splash_screen.SplashScreenRoute.path,
      redirect: (context, state) {
        return ref.read(firebaseUserControllerProvider).map(
              data: (v) {
                final user = v.asData?.value;
                if (user == null) {
                  return const onboarding_page_route.OnboardingPageRoute()
                      .location;
                }

                final canStart = ref.read(eventCanStartProvider);
                if (!canStart) {
                  return const maps_page_route.MapsEventSettingsPageRoute()
                      .location;
                }

                if (state.fullPath ==
                        onboarding_page_route.OnboardingPageRoute.path ||
                    state.fullPath == splash_screen.SplashScreenRoute.path) {
                  return const maps_page_route.MapsPageRoute().location;
                }

                return null;
              },
              error: (_) => throw Exception('user controller error'),
              loading: (_) => const splash_screen.SplashScreenRoute().location,
            );
      },
    );
