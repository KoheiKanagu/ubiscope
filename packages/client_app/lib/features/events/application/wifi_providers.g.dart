// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, cast_nullable_to_non_nullable, lines_longer_than_80_chars

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
String _$wiFiScanControllerHash() =>
    r'8c7da57a5b93e327e321a03a6f855d09bfbc796c';

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
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
