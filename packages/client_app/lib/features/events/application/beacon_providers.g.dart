// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

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
String _$beaconScanControllerHash() =>
    r'075efb74b22286b1dc19ccdd9c752adc643f724e';

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
