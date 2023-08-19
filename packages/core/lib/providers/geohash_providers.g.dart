// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: require_trailing_commas, non_constant_identifier_names, cast_nullable_to_non_nullable, lines_longer_than_80_chars, unnecessary_null_checks, strict_raw_type

part of 'geohash_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$geohashMeasurementPointSnapshotCacheHash() =>
    r'01756464dec0a0e85379ded34e8c20a186a90ea7';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

typedef _GeohashMeasurementPointSnapshotCacheRef
    = AutoDisposeStreamProviderRef<QuerySnapshot<MeasurementPoint>>;

/// See also [_geohashMeasurementPointSnapshotCache].
@ProviderFor(_geohashMeasurementPointSnapshotCache)
const _geohashMeasurementPointSnapshotCacheProvider =
    _GeohashMeasurementPointSnapshotCacheFamily();

/// See also [_geohashMeasurementPointSnapshotCache].
class _GeohashMeasurementPointSnapshotCacheFamily
    extends Family<AsyncValue<QuerySnapshot<MeasurementPoint>>> {
  /// See also [_geohashMeasurementPointSnapshotCache].
  const _GeohashMeasurementPointSnapshotCacheFamily();

  /// See also [_geohashMeasurementPointSnapshotCache].
  _GeohashMeasurementPointSnapshotCacheProvider call(
    Query<MeasurementPoint> query,
  ) {
    return _GeohashMeasurementPointSnapshotCacheProvider(
      query,
    );
  }

  @override
  _GeohashMeasurementPointSnapshotCacheProvider getProviderOverride(
    covariant _GeohashMeasurementPointSnapshotCacheProvider provider,
  ) {
    return call(
      provider.query,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'_geohashMeasurementPointSnapshotCacheProvider';
}

/// See also [_geohashMeasurementPointSnapshotCache].
class _GeohashMeasurementPointSnapshotCacheProvider
    extends AutoDisposeStreamProvider<QuerySnapshot<MeasurementPoint>> {
  /// See also [_geohashMeasurementPointSnapshotCache].
  _GeohashMeasurementPointSnapshotCacheProvider(
    this.query,
  ) : super.internal(
          (ref) => _geohashMeasurementPointSnapshotCache(
            ref,
            query,
          ),
          from: _geohashMeasurementPointSnapshotCacheProvider,
          name: r'_geohashMeasurementPointSnapshotCacheProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$geohashMeasurementPointSnapshotCacheHash,
          dependencies:
              _GeohashMeasurementPointSnapshotCacheFamily._dependencies,
          allTransitiveDependencies: _GeohashMeasurementPointSnapshotCacheFamily
              ._allTransitiveDependencies,
        );

  final Query<MeasurementPoint> query;

  @override
  bool operator ==(Object other) {
    return other is _GeohashMeasurementPointSnapshotCacheProvider &&
        other.query == query;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, query.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$geohashMeasurementPointSnapshotsHash() =>
    r'0122693347207e8233a2fd28ae3e2d8848b7dec6';
typedef GeohashMeasurementPointSnapshotsRef
    = AutoDisposeProviderRef<List<QueryDocumentSnapshot<MeasurementPoint>>>;

/// See also [geohashMeasurementPointSnapshots].
@ProviderFor(geohashMeasurementPointSnapshots)
const geohashMeasurementPointSnapshotsProvider =
    GeohashMeasurementPointSnapshotsFamily();

/// See also [geohashMeasurementPointSnapshots].
class GeohashMeasurementPointSnapshotsFamily
    extends Family<List<QueryDocumentSnapshot<MeasurementPoint>>> {
  /// See also [geohashMeasurementPointSnapshots].
  const GeohashMeasurementPointSnapshotsFamily();

  /// See also [geohashMeasurementPointSnapshots].
  GeohashMeasurementPointSnapshotsProvider call({
    required Query<MeasurementPoint> baseQuery,
    required String? level,
    required String? levelShort,
    required GeoPoint center,
    required double radiusKm,
  }) {
    return GeohashMeasurementPointSnapshotsProvider(
      baseQuery: baseQuery,
      level: level,
      levelShort: levelShort,
      center: center,
      radiusKm: radiusKm,
    );
  }

  @override
  GeohashMeasurementPointSnapshotsProvider getProviderOverride(
    covariant GeohashMeasurementPointSnapshotsProvider provider,
  ) {
    return call(
      baseQuery: provider.baseQuery,
      level: provider.level,
      levelShort: provider.levelShort,
      center: provider.center,
      radiusKm: provider.radiusKm,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'geohashMeasurementPointSnapshotsProvider';
}

/// See also [geohashMeasurementPointSnapshots].
class GeohashMeasurementPointSnapshotsProvider
    extends AutoDisposeProvider<List<QueryDocumentSnapshot<MeasurementPoint>>> {
  /// See also [geohashMeasurementPointSnapshots].
  GeohashMeasurementPointSnapshotsProvider({
    required this.baseQuery,
    required this.level,
    required this.levelShort,
    required this.center,
    required this.radiusKm,
  }) : super.internal(
          (ref) => geohashMeasurementPointSnapshots(
            ref,
            baseQuery: baseQuery,
            level: level,
            levelShort: levelShort,
            center: center,
            radiusKm: radiusKm,
          ),
          from: geohashMeasurementPointSnapshotsProvider,
          name: r'geohashMeasurementPointSnapshotsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$geohashMeasurementPointSnapshotsHash,
          dependencies: GeohashMeasurementPointSnapshotsFamily._dependencies,
          allTransitiveDependencies:
              GeohashMeasurementPointSnapshotsFamily._allTransitiveDependencies,
        );

  final Query<MeasurementPoint> baseQuery;
  final String? level;
  final String? levelShort;
  final GeoPoint center;
  final double radiusKm;

  @override
  bool operator ==(Object other) {
    return other is GeohashMeasurementPointSnapshotsProvider &&
        other.baseQuery == baseQuery &&
        other.level == level &&
        other.levelShort == levelShort &&
        other.center == center &&
        other.radiusKm == radiusKm;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, baseQuery.hashCode);
    hash = _SystemHash.combine(hash, level.hashCode);
    hash = _SystemHash.combine(hash, levelShort.hashCode);
    hash = _SystemHash.combine(hash, center.hashCode);
    hash = _SystemHash.combine(hash, radiusKm.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
