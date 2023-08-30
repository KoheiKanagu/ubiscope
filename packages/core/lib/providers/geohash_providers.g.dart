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
    Query<MeasurementPoint> query,
  ) : this._internal(
          (ref) => _geohashMeasurementPointSnapshotCache(
            ref as _GeohashMeasurementPointSnapshotCacheRef,
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
          query: query,
        );

  _GeohashMeasurementPointSnapshotCacheProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.query,
  }) : super.internal();

  final Query<MeasurementPoint> query;

  @override
  Override overrideWith(
    Stream<QuerySnapshot<MeasurementPoint>> Function(
            _GeohashMeasurementPointSnapshotCacheRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: _GeohashMeasurementPointSnapshotCacheProvider._internal(
        (ref) => create(ref as _GeohashMeasurementPointSnapshotCacheRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        query: query,
      ),
    );
  }

  @override
  AutoDisposeStreamProviderElement<QuerySnapshot<MeasurementPoint>>
      createElement() {
    return _GeohashMeasurementPointSnapshotCacheProviderElement(this);
  }

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

mixin _GeohashMeasurementPointSnapshotCacheRef
    on AutoDisposeStreamProviderRef<QuerySnapshot<MeasurementPoint>> {
  /// The parameter `query` of this provider.
  Query<MeasurementPoint> get query;
}

class _GeohashMeasurementPointSnapshotCacheProviderElement
    extends AutoDisposeStreamProviderElement<QuerySnapshot<MeasurementPoint>>
    with _GeohashMeasurementPointSnapshotCacheRef {
  _GeohashMeasurementPointSnapshotCacheProviderElement(super.provider);

  @override
  Query<MeasurementPoint> get query =>
      (origin as _GeohashMeasurementPointSnapshotCacheProvider).query;
}

String _$geohashMeasurementPointSnapshotsHash() =>
    r'0122693347207e8233a2fd28ae3e2d8848b7dec6';

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
    required Query<MeasurementPoint> baseQuery,
    required String? level,
    required String? levelShort,
    required GeoPoint center,
    required double radiusKm,
  }) : this._internal(
          (ref) => geohashMeasurementPointSnapshots(
            ref as GeohashMeasurementPointSnapshotsRef,
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
          baseQuery: baseQuery,
          level: level,
          levelShort: levelShort,
          center: center,
          radiusKm: radiusKm,
        );

  GeohashMeasurementPointSnapshotsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.baseQuery,
    required this.level,
    required this.levelShort,
    required this.center,
    required this.radiusKm,
  }) : super.internal();

  final Query<MeasurementPoint> baseQuery;
  final String? level;
  final String? levelShort;
  final GeoPoint center;
  final double radiusKm;

  @override
  Override overrideWith(
    List<QueryDocumentSnapshot<MeasurementPoint>> Function(
            GeohashMeasurementPointSnapshotsRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GeohashMeasurementPointSnapshotsProvider._internal(
        (ref) => create(ref as GeohashMeasurementPointSnapshotsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        baseQuery: baseQuery,
        level: level,
        levelShort: levelShort,
        center: center,
        radiusKm: radiusKm,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<List<QueryDocumentSnapshot<MeasurementPoint>>>
      createElement() {
    return _GeohashMeasurementPointSnapshotsProviderElement(this);
  }

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

mixin GeohashMeasurementPointSnapshotsRef
    on AutoDisposeProviderRef<List<QueryDocumentSnapshot<MeasurementPoint>>> {
  /// The parameter `baseQuery` of this provider.
  Query<MeasurementPoint> get baseQuery;

  /// The parameter `level` of this provider.
  String? get level;

  /// The parameter `levelShort` of this provider.
  String? get levelShort;

  /// The parameter `center` of this provider.
  GeoPoint get center;

  /// The parameter `radiusKm` of this provider.
  double get radiusKm;
}

class _GeohashMeasurementPointSnapshotsProviderElement
    extends AutoDisposeProviderElement<
        List<QueryDocumentSnapshot<MeasurementPoint>>>
    with GeohashMeasurementPointSnapshotsRef {
  _GeohashMeasurementPointSnapshotsProviderElement(super.provider);

  @override
  Query<MeasurementPoint> get baseQuery =>
      (origin as GeohashMeasurementPointSnapshotsProvider).baseQuery;
  @override
  String? get level =>
      (origin as GeohashMeasurementPointSnapshotsProvider).level;
  @override
  String? get levelShort =>
      (origin as GeohashMeasurementPointSnapshotsProvider).levelShort;
  @override
  GeoPoint get center =>
      (origin as GeohashMeasurementPointSnapshotsProvider).center;
  @override
  double get radiusKm =>
      (origin as GeohashMeasurementPointSnapshotsProvider).radiusKm;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
