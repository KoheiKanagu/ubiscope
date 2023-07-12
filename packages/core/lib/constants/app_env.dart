import 'package:flutter/foundation.dart';

enum AppEnv {
  dev,
  prod,
  ;

  static const _value = String.fromEnvironment(
    'APP_ENV',
    defaultValue: 'unknownEnv',
  );

  static AppEnv get current {
    switch (_value) {
      case 'dev':
        return dev;
      case 'prod':
        return prod;
    }
    throw Exception('undefined appenv');
  }

  bool get isProd => this == AppEnv.prod;

  static const devicePreview = bool.fromEnvironment(
    'APP_DEVICE_PREVIEW',
    defaultValue: kDebugMode,
  );

  static const isFirebaseEmulator = bool.fromEnvironment(
    'APP_IS_FIREBASE_EMULATOR',
  );
}
