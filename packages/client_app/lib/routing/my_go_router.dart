import 'package:client_app/constants/firebase_providers.dart';
import 'package:client_app/features/maps/application/maps_page_route.dart'
    as maps_page_route;
import 'package:client_app/features/settings/application/settings_page_route.dart'
    as settings_page_route;
import 'package:client_app/routing/initial_location_type.dart';
import 'package:client_app/routing/my_navigator_observer.dart';
import 'package:core/core.dart';
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
      ...maps_page_route.$appRoutes,
      ...settings_page_route.$appRoutes,
    ],
    errorBuilder: (context, state) {
      logger.e(
        [
          'router error',
          'name: ${state.name}',
          'fullPath: ${state.fullPath}',
          'pathParameters: ${state.pathParameters}',
          'queryParameters: ${state.queryParameters}',
          'location: ${state.location}',
          'queryParametersAll: ${state.queryParametersAll}',
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
