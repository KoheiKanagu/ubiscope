import 'package:client_app/features/maps/application/maps_page_route.dart'
    as maps_page_route;
import 'package:client_app/features/onboarding/application/onboarding_page_route.dart'
    as onboarding_page_route;
import 'package:client_app/features/settings/application/settings_page_route.dart'
    as settings_page_route;
import 'package:client_app/routing/initial_location_type.dart';
import 'package:client_app/routing/my_navigator_observer.dart';
import 'package:core/core.dart';
import 'package:core/features/auth/application/auth_page_route.dart'
    as auth_page_route;
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final myGoRouterProvider =
    Provider.family.autoDispose<GoRouter, InitialLocationType>(
  (ref, arg) => GoRouter(
    navigatorKey: rootNavigatorStateKey,
    routes: [
      ...auth_page_route.$appRoutes,
      ...maps_page_route.$appRoutes,
      ...settings_page_route.$appRoutes,
      ...onboarding_page_route.$appRoutes,
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
        state.error,
        StackTrace.current,
      );

      return const Scaffold(
        body: Center(
          child: Text('予期せぬエラーが発生しました。アプリを再起動してください。'),
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
    initialLocation: arg.location,
  ),
);
