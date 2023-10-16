import 'dart:developer';
import 'dart:math' as math;

import 'package:core/core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roggle/roggle.dart';

class ProviderLogger extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderBase<dynamic> provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    if (provider.name == 'beaconScanControllerProvider' ||
        provider.name == 'wiFiScanControllerProvider' ||
        provider.name == 'mapsBottomSheetSizeProvider') {
      return;
    }

    if (provider.name == 'mapsMeasurementPointMarkersProvider' ||
        provider.name == 'measurementPointAroundSnapshotsProvider' ||
        provider.name == 'geohashMeasurementPointSnapshotsProvider') {
      final value = newValue.toString();
      logger.d(
        {
          'name': provider.name,
          'runtimeType': provider.runtimeType,
          'newValue':
              'newValue: ${value.substring(0, math.min(value.length, 256))}...',
        },
      );
      return;
    }

    logger.d(
      {
        'name': provider.name,
        'runtimeType': provider.runtimeType,
        'newValue': newValue,
      },
    );
  }

  @override
  void providerDidFail(
    ProviderBase<Object?> provider,
    Object error,
    StackTrace stackTrace,
    ProviderContainer container,
  ) {
    logger.e(
      {
        'name': provider.name,
        'runtimeType': provider.runtimeType,
        'error': error,
        'stackTrace': stackTrace,
      },
    );
  }
}

final singlePrettyPrinter = SinglePrettyPrinter();

final logger = Roggle.crashlytics(
  printer: CrashlyticsPrinter(
    errorLevel: Level.warning,
    onError: (event) {
      final fatal = switch (event.level) {
        Level.error || Level.fatal => true,
        _ => false,
      };

      if (kReleaseMode) {
        FirebaseCrashlytics.instance.recordError(
          event.exception,
          event.stack,
          fatal: fatal,
        );
      }

      if (!AppEnv.current.isProd) {
        log(
          singlePrettyPrinter
              .log(
                LogEvent(
                  event.level,
                  event.exception,
                  error: event.exception,
                  stackTrace: event.stack,
                ),
              )
              .join('\n'),
        );
      }
    },
    onLog: (event) {
      if (kReleaseMode) {
        FirebaseCrashlytics.instance.log(event.message);
      }

      if (!AppEnv.current.isProd) {
        log(
          singlePrettyPrinter
              .log(LogEvent(event.level, event.message))
              .join('\n'),
        );
      }
    },
  ),
);
