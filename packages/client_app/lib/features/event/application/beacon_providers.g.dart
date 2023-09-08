// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: require_trailing_commas, non_constant_identifier_names, cast_nullable_to_non_nullable, lines_longer_than_80_chars, unnecessary_null_checks, strict_raw_type

part of 'beacon_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$beaconHostApiHash() => r'87cceef80290a6e4a8fafb1b0762f1dd0609288b';

/// See also [_beaconHostApi].
@ProviderFor(_beaconHostApi)
final _beaconHostApiProvider = Provider<BeaconHostApi>.internal(
  _beaconHostApi,
  name: r'_beaconHostApiProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$beaconHostApiHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _BeaconHostApiRef = ProviderRef<BeaconHostApi>;
String _$beaconScanPermissionControllerHash() =>
    r'fe2e7843b4f7810800a0ab6d26f4346fe11cac35';

/// See also [BeaconScanPermissionController].
@ProviderFor(BeaconScanPermissionController)
final beaconScanPermissionControllerProvider = AutoDisposeNotifierProvider<
    BeaconScanPermissionController, PermissionStatus>.internal(
  BeaconScanPermissionController.new,
  name: r'beaconScanPermissionControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$beaconScanPermissionControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$BeaconScanPermissionController
    = AutoDisposeNotifier<PermissionStatus>;
String _$beaconScanControllerHash() =>
    r'67cc91ace5d2585d4920ff294590c206e4c5ae48';

/// See also [BeaconScanController].
@ProviderFor(BeaconScanController)
final beaconScanControllerProvider =
    NotifierProvider<BeaconScanController, List<Beacon>>.internal(
  BeaconScanController.new,
  name: r'beaconScanControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$beaconScanControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$BeaconScanController = Notifier<List<Beacon>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
