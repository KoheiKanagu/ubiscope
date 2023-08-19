// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: require_trailing_commas, non_constant_identifier_names, cast_nullable_to_non_nullable, lines_longer_than_80_chars, unnecessary_null_checks, strict_raw_type

part of 'maps_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$mapsMeasurementPointMarkersHash() =>
    r'68ee88b5bf07e7528aa66cdeefa0033079956a73';

/// See also [mapsMeasurementPointMarkers].
@ProviderFor(mapsMeasurementPointMarkers)
final mapsMeasurementPointMarkersProvider =
    AutoDisposeProvider<Set<Marker>>.internal(
  mapsMeasurementPointMarkers,
  name: r'mapsMeasurementPointMarkersProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$mapsMeasurementPointMarkersHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef MapsMeasurementPointMarkersRef = AutoDisposeProviderRef<Set<Marker>>;
String _$mapsControllerHash() => r'9a2cb6add78b1f8b8f78f09f82b04cf22eee2b76';

/// See also [MapsController].
@ProviderFor(MapsController)
final mapsControllerProvider =
    NotifierProvider<MapsController, GoogleMapController?>.internal(
  MapsController.new,
  name: r'mapsControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$mapsControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$MapsController = Notifier<GoogleMapController?>;
String _$mapsAimedPointControllerHash() =>
    r'7af5b4fe8c49f9a6a5634cd0ced81a54075cf248';

/// See also [MapsAimedPointController].
@ProviderFor(MapsAimedPointController)
final mapsAimedPointControllerProvider = AutoDisposeNotifierProvider<
    MapsAimedPointController,
    ({
      String? level,
      String? levelShort,
      GeoPoint point,
      double radiusKm
    })?>.internal(
  MapsAimedPointController.new,
  name: r'mapsAimedPointControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$mapsAimedPointControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$MapsAimedPointController = AutoDisposeNotifier<
    ({String? level, String? levelShort, GeoPoint point, double radiusKm})?>;
String _$mapsSelectedMeasurementPointIdHash() =>
    r'81301a4e1a34bf1ad1939a84ec148f879457444f';

/// See also [MapsSelectedMeasurementPointId].
@ProviderFor(MapsSelectedMeasurementPointId)
final mapsSelectedMeasurementPointIdProvider = AutoDisposeNotifierProvider<
    MapsSelectedMeasurementPointId, String?>.internal(
  MapsSelectedMeasurementPointId.new,
  name: r'mapsSelectedMeasurementPointIdProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$mapsSelectedMeasurementPointIdHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$MapsSelectedMeasurementPointId = AutoDisposeNotifier<String?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
