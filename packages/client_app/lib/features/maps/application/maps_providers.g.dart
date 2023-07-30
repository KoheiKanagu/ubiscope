// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: require_trailing_commas, non_constant_identifier_names, cast_nullable_to_non_nullable, lines_longer_than_80_chars

part of 'maps_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$mapsControllerHash() => r'305f49af37ae23b1ebcdbd4deb95c042216f8bdd';

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
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
