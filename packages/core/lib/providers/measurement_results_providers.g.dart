// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: require_trailing_commas, non_constant_identifier_names, cast_nullable_to_non_nullable, lines_longer_than_80_chars, unnecessary_null_checks, strict_raw_type

part of 'measurement_results_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$measurementResultsCollectionReferenceHash() =>
    r'f2c449bd6439f9c437160909d023de9d95f43732';

/// See also [measurementResultsCollectionReference].
@ProviderFor(measurementResultsCollectionReference)
final measurementResultsCollectionReferenceProvider =
    AutoDisposeProvider<CollectionReference<MeasurementResults>>.internal(
  measurementResultsCollectionReference,
  name: r'measurementResultsCollectionReferenceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$measurementResultsCollectionReferenceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef MeasurementResultsCollectionReferenceRef
    = AutoDisposeProviderRef<CollectionReference<MeasurementResults>>;
String _$measurementResultsAggregateQueryHash() =>
    r'c28a078d4df7894028b07d9191a13b53065da095';

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

typedef MeasurementResultsAggregateQueryRef
    = AutoDisposeProviderRef<AggregateQuery>;

/// See also [measurementResultsAggregateQuery].
@ProviderFor(measurementResultsAggregateQuery)
const measurementResultsAggregateQueryProvider =
    MeasurementResultsAggregateQueryFamily();

/// See also [measurementResultsAggregateQuery].
class MeasurementResultsAggregateQueryFamily extends Family<AggregateQuery> {
  /// See also [measurementResultsAggregateQuery].
  const MeasurementResultsAggregateQueryFamily();

  /// See also [measurementResultsAggregateQuery].
  MeasurementResultsAggregateQueryProvider call({
    required String datasetId,
    required MeasurementType type,
  }) {
    return MeasurementResultsAggregateQueryProvider(
      datasetId: datasetId,
      type: type,
    );
  }

  @override
  MeasurementResultsAggregateQueryProvider getProviderOverride(
    covariant MeasurementResultsAggregateQueryProvider provider,
  ) {
    return call(
      datasetId: provider.datasetId,
      type: provider.type,
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
  String? get name => r'measurementResultsAggregateQueryProvider';
}

/// See also [measurementResultsAggregateQuery].
class MeasurementResultsAggregateQueryProvider
    extends AutoDisposeProvider<AggregateQuery> {
  /// See also [measurementResultsAggregateQuery].
  MeasurementResultsAggregateQueryProvider({
    required this.datasetId,
    required this.type,
  }) : super.internal(
          (ref) => measurementResultsAggregateQuery(
            ref,
            datasetId: datasetId,
            type: type,
          ),
          from: measurementResultsAggregateQueryProvider,
          name: r'measurementResultsAggregateQueryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$measurementResultsAggregateQueryHash,
          dependencies: MeasurementResultsAggregateQueryFamily._dependencies,
          allTransitiveDependencies:
              MeasurementResultsAggregateQueryFamily._allTransitiveDependencies,
        );

  final String datasetId;
  final MeasurementType type;

  @override
  bool operator ==(Object other) {
    return other is MeasurementResultsAggregateQueryProvider &&
        other.datasetId == datasetId &&
        other.type == type;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, datasetId.hashCode);
    hash = _SystemHash.combine(hash, type.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$measurementResultsAggregateQuerySnapshotHash() =>
    r'778e6533744b3a0fc4b048d54c973b0b72202a24';
typedef MeasurementResultsAggregateQuerySnapshotRef
    = AutoDisposeFutureProviderRef<AggregateQuerySnapshot>;

/// See also [measurementResultsAggregateQuerySnapshot].
@ProviderFor(measurementResultsAggregateQuerySnapshot)
const measurementResultsAggregateQuerySnapshotProvider =
    MeasurementResultsAggregateQuerySnapshotFamily();

/// See also [measurementResultsAggregateQuerySnapshot].
class MeasurementResultsAggregateQuerySnapshotFamily
    extends Family<AsyncValue<AggregateQuerySnapshot>> {
  /// See also [measurementResultsAggregateQuerySnapshot].
  const MeasurementResultsAggregateQuerySnapshotFamily();

  /// See also [measurementResultsAggregateQuerySnapshot].
  MeasurementResultsAggregateQuerySnapshotProvider call({
    required String datasetId,
    required MeasurementType type,
  }) {
    return MeasurementResultsAggregateQuerySnapshotProvider(
      datasetId: datasetId,
      type: type,
    );
  }

  @override
  MeasurementResultsAggregateQuerySnapshotProvider getProviderOverride(
    covariant MeasurementResultsAggregateQuerySnapshotProvider provider,
  ) {
    return call(
      datasetId: provider.datasetId,
      type: provider.type,
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
  String? get name => r'measurementResultsAggregateQuerySnapshotProvider';
}

/// See also [measurementResultsAggregateQuerySnapshot].
class MeasurementResultsAggregateQuerySnapshotProvider
    extends AutoDisposeFutureProvider<AggregateQuerySnapshot> {
  /// See also [measurementResultsAggregateQuerySnapshot].
  MeasurementResultsAggregateQuerySnapshotProvider({
    required this.datasetId,
    required this.type,
  }) : super.internal(
          (ref) => measurementResultsAggregateQuerySnapshot(
            ref,
            datasetId: datasetId,
            type: type,
          ),
          from: measurementResultsAggregateQuerySnapshotProvider,
          name: r'measurementResultsAggregateQuerySnapshotProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$measurementResultsAggregateQuerySnapshotHash,
          dependencies:
              MeasurementResultsAggregateQuerySnapshotFamily._dependencies,
          allTransitiveDependencies:
              MeasurementResultsAggregateQuerySnapshotFamily
                  ._allTransitiveDependencies,
        );

  final String datasetId;
  final MeasurementType type;

  @override
  bool operator ==(Object other) {
    return other is MeasurementResultsAggregateQuerySnapshotProvider &&
        other.datasetId == datasetId &&
        other.type == type;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, datasetId.hashCode);
    hash = _SystemHash.combine(hash, type.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$measurementResultsRecentHash() =>
    r'9c6c36e1255b50cc2dfa8c6db9e2e41a47dcb851';
typedef MeasurementResultsRecentRef
    = AutoDisposeFutureProviderRef<QuerySnapshot<MeasurementResults>>;

/// See also [measurementResultsRecent].
@ProviderFor(measurementResultsRecent)
const measurementResultsRecentProvider = MeasurementResultsRecentFamily();

/// See also [measurementResultsRecent].
class MeasurementResultsRecentFamily
    extends Family<AsyncValue<QuerySnapshot<MeasurementResults>>> {
  /// See also [measurementResultsRecent].
  const MeasurementResultsRecentFamily();

  /// See also [measurementResultsRecent].
  MeasurementResultsRecentProvider call({
    required String datasetId,
    required MeasurementType type,
  }) {
    return MeasurementResultsRecentProvider(
      datasetId: datasetId,
      type: type,
    );
  }

  @override
  MeasurementResultsRecentProvider getProviderOverride(
    covariant MeasurementResultsRecentProvider provider,
  ) {
    return call(
      datasetId: provider.datasetId,
      type: provider.type,
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
  String? get name => r'measurementResultsRecentProvider';
}

/// See also [measurementResultsRecent].
class MeasurementResultsRecentProvider
    extends AutoDisposeFutureProvider<QuerySnapshot<MeasurementResults>> {
  /// See also [measurementResultsRecent].
  MeasurementResultsRecentProvider({
    required this.datasetId,
    required this.type,
  }) : super.internal(
          (ref) => measurementResultsRecent(
            ref,
            datasetId: datasetId,
            type: type,
          ),
          from: measurementResultsRecentProvider,
          name: r'measurementResultsRecentProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$measurementResultsRecentHash,
          dependencies: MeasurementResultsRecentFamily._dependencies,
          allTransitiveDependencies:
              MeasurementResultsRecentFamily._allTransitiveDependencies,
        );

  final String datasetId;
  final MeasurementType type;

  @override
  bool operator ==(Object other) {
    return other is MeasurementResultsRecentProvider &&
        other.datasetId == datasetId &&
        other.type == type;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, datasetId.hashCode);
    hash = _SystemHash.combine(hash, type.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$measurementResultsControllerHash() =>
    r'598a0d9b47e4459a2b2d5450fff8e707a04d2054';

/// See also [measurementResultsController].
@ProviderFor(measurementResultsController)
final measurementResultsControllerProvider =
    AutoDisposeProvider<MeasurementResultsController>.internal(
  measurementResultsController,
  name: r'measurementResultsControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$measurementResultsControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef MeasurementResultsControllerRef
    = AutoDisposeProviderRef<MeasurementResultsController>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
