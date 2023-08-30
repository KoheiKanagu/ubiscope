import 'dart:async';

import 'package:client_app/features/configure/application/package_info_providers.dart';
import 'package:client_app/my_app.dart';
import 'package:core/core.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.transparent,
    ),
  );
  await SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.edgeToEdge,
  );

  final (
    firebaseApp,
    _,
    packageInfo,
    deviceInfo,
    sharedPreferences,
  ) = (
    await Firebase.initializeApp(),
    await MobileAds.instance.initialize(),
    await PackageInfo.fromPlatform(),
    await DeviceInfoPlugin().deviceInfo,
    await SharedPreferences.getInstance(),
  );

  final container = ProviderContainer(
    observers: [
      ProviderLogger(),
    ],
    overrides: [
      firebaseAppProvider.overrideWithValue(
        firebaseApp,
      ),
      packageInfoProvider.overrideWithValue(
        packageInfo,
      ),
      deviceInfoPluginProvider.overrideWithValue(
        deviceInfo,
      ),
      sharedPreferencesInstanceProvider.overrideWithValue(
        sharedPreferences,
      ),
    ],
  );

  await Future.wait(
    [
      container
          .read(firebaseCrashlyticsProvider)
          .setCrashlyticsCollectionEnabled(
            kReleaseMode,
          ),
      switch (AppEnv.current) {
        AppEnv.dev => FirebaseAppCheck.instance.activate(
            androidProvider: AndroidProvider.debug,
            appleProvider: AppleProvider.debug,
          ),
        AppEnv.prod => FirebaseAppCheck.instance.activate(
            // ignore: avoid_redundant_argument_values
            androidProvider: AndroidProvider.playIntegrity,
            appleProvider: AppleProvider.appAttest,
          ),
      },
    ],
  );

  FlutterError.onError =
      container.read(firebaseCrashlyticsProvider).recordFlutterFatalError;

  PlatformDispatcher.instance.onError = (error, stack) {
    container.read(firebaseCrashlyticsProvider).recordError(
          error,
          stack,
          fatal: true,
        );

    return true;
  };

  switch (container.read(packageInfoNameProvider)) {
    case 'dev.kingu.ubiscope.app.dev' when AppEnv.current == AppEnv.dev:
      logger.d('dev.kingu.ubiscope.app.dev');

    case 'dev.kingu.ubiscope.app' when AppEnv.current == AppEnv.prod:
      logger.d('dev.kingu.ubiscope.app');

    case _:
      throw Exception(
        "packageInfoNameProvider doesn't match currentAppEnv",
      );
  }

  setupFirebaseUIAuth(firebaseApp);

  runApp(
    UncontrolledProviderScope(
      container: container,
      child: const MyApp(),
    ),
  );
}
