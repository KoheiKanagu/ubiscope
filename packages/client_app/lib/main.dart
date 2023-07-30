import 'dart:async';

import 'package:client_app/constants/firebase_providers.dart';
import 'package:client_app/features/configure/application/package_info_providers.dart';
import 'package:client_app/my_app.dart';
import 'package:client_app/routing/initial_location_type.dart';
import 'package:core/core.dart';
import 'package:core/providers/device_info/device_info_providers.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:device_preview/device_preview.dart';
import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final (_, _, packageInfo, deviceInfo) = (
    await Firebase.initializeApp(),
    await MobileAds.instance.initialize(),
    await PackageInfo.fromPlatform(),
    await DeviceInfoPlugin().deviceInfo,
  );

  final container = ProviderContainer(
    observers: [
      ProviderLogger(),
    ],
    overrides: [
      packageInfoProvider.overrideWithValue(
        packageInfo,
      ),
      deviceInfoPluginProvider.overrideWithValue(
        deviceInfo,
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
      if (AppEnv.current.isProd) FirebaseAppCheck.instance.activate(),
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

  logger.d('check auth');
  final isSignedIn =
      (await container.read(firebaseAuthProvider).authStateChanges().first) !=
          null;
  logger.d('check auth: $isSignedIn');

  runApp(
    UncontrolledProviderScope(
      container: container,
      child: DevicePreview(
        // ignore: avoid_redundant_argument_values
        enabled: kDebugMode,
        devices: [
          Devices.ios.iPhoneSE,
          Devices.ios.iPhone13ProMax,
          Devices.android.mediumPhone.copyWith(
            pixelRatio: 3,
            name: 'Pixel 4',
            screenSize: const Size(1140 / 3, 2280 / 3),
          ),
          Devices.ios.iPhoneSE.copyWith(
            pixelRatio: 3,
            name: 'iPhone 8 Plus',
            screenSize: const Size(1242 / 3, 2208 / 3),
          ),
        ],
        builder: (_) => MyApp(
          initialLocationType: InitialLocationType.build(
            isSignedIn: isSignedIn,
          ),
        ),
      ),
    ),
  );
}
