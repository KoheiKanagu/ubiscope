// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

part of 'maps_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$mapsControllerHash() => r'94d8c9aa734273a6b01e8414f8cdb13e7c86f0a4';

/// See also [MapsController].
@ProviderFor(MapsController)
final mapsControllerProvider =
    NotifierProvider<MapsController, AsyncValue<GoogleMapController>>.internal(
  MapsController.new,
  name: r'mapsControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$mapsControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$MapsController = Notifier<AsyncValue<GoogleMapController>>;
String _$mapsActiveLevelNameControllerHash() =>
    r'e1e96f82b22c993ec2d2b9f3a22679c6c8e3bb02';

/// See also [MapsActiveLevelNameController].
@ProviderFor(MapsActiveLevelNameController)
final mapsActiveLevelNameControllerProvider = AutoDisposeNotifierProvider<
    MapsActiveLevelNameController,
    ({String? levelName, String? levelShortName})?>.internal(
  MapsActiveLevelNameController.new,
  name: r'mapsActiveLevelNameControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$mapsActiveLevelNameControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$MapsActiveLevelNameController
    = AutoDisposeNotifier<({String? levelName, String? levelShortName})?>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
