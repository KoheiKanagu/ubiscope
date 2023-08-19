// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: require_trailing_commas, non_constant_identifier_names, cast_nullable_to_non_nullable, lines_longer_than_80_chars, unnecessary_null_checks, strict_raw_type

part of 'wifi_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$wiFiHostApiHash() => r'f691eefc4b1965df91014dd5270348db43b216b5';

/// See also [_wiFiHostApi].
@ProviderFor(_wiFiHostApi)
final _wiFiHostApiProvider = Provider<WiFiHostApi>.internal(
  _wiFiHostApi,
  name: r'_wiFiHostApiProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$wiFiHostApiHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _WiFiHostApiRef = ProviderRef<WiFiHostApi>;
String _$wiFiScanPermissionControllerHash() =>
    r'ecf547ab05646f7836a42f1ddf522da7f366ed3b';

/// See also [WiFiScanPermissionController].
@ProviderFor(WiFiScanPermissionController)
final wiFiScanPermissionControllerProvider = AutoDisposeNotifierProvider<
    WiFiScanPermissionController, PermissionStatus>.internal(
  WiFiScanPermissionController.new,
  name: r'wiFiScanPermissionControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$wiFiScanPermissionControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$WiFiScanPermissionController = AutoDisposeNotifier<PermissionStatus>;
String _$wiFiScanControllerHash() =>
    r'af039bdc0e6bac35e2c77067066f67dc267c019b';

/// See also [WiFiScanController].
@ProviderFor(WiFiScanController)
final wiFiScanControllerProvider =
    NotifierProvider<WiFiScanController, List<WiFi>>.internal(
  WiFiScanController.new,
  name: r'wiFiScanControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$wiFiScanControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$WiFiScanController = Notifier<List<WiFi>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
