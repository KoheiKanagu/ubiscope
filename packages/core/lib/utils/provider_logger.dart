import 'package:core/constants/app_env.dart';
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
      final bool fatal;

      switch (event.level) {
        case Level.verbose:
        case Level.debug:
        case Level.info:
        case Level.warning:
        case Level.nothing:
          fatal = false;
        case Level.error:
        case Level.wtf:
          fatal = true;
      }

      if (kReleaseMode) {
        FirebaseCrashlytics.instance.recordError(
          event.exception,
          event.stack,
          fatal: fatal,
        );
      }

      if (!currentAppEnv.isProd) {
        // ignore: avoid_print
        print(
          singlePrettyPrinter
              .log(
                LogEvent(
                  event.level,
                  event.exception,
                  event.exception,
                  event.stack,
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

      if (!currentAppEnv.isProd) {
        // ignore: avoid_print
        print(
          singlePrettyPrinter
              .log(LogEvent(event.level, event.message))
              .join('\n'),
        );
      }
    },
  ),
);
