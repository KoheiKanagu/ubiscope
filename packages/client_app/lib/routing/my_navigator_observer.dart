import 'package:client_app/constants/firebase_providers.dart';
import 'package:core/utils/provider_logger.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/widgets.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'my_navigator_observer.g.dart';

@riverpod
MyNavigatorObserver myNavigatorObserver(MyNavigatorObserverRef ref) =>
    MyNavigatorObserver(
      ref.watch(firebaseCrashlyticsProvider),
    );

class MyNavigatorObserver extends NavigatorObserver {
  MyNavigatorObserver(
    this.firebaseCrashlytics,
  );

  final FirebaseCrashlytics firebaseCrashlytics;

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    _setCustomKey(
      route: route,
      previousRoute: previousRoute,
      didPush: false,
    );
  }

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    _setCustomKey(
      route: route,
      previousRoute: previousRoute,
      didPush: true,
    );
  }

  void _setCustomKey({
    required Route<dynamic> route,
    required Route<dynamic>? previousRoute,
    required bool didPush,
  }) {
    final routeString = '${route.settings.name}: ${route.settings.arguments}';
    final previousRouteString =
        '${previousRoute?.settings.name}: ${previousRoute?.settings.arguments}';
    final didPushString = didPush ? 'didPush' : 'didPop';

    logger.d('route: $routeString');
    firebaseCrashlytics.setCustomKey('route', routeString);

    logger.d('previousRoute: $previousRoute');
    firebaseCrashlytics.setCustomKey('previousRoute', previousRouteString);

    logger.d('navigate: $didPushString');
    firebaseCrashlytics.setCustomKey('navigate', didPushString);
  }
}
