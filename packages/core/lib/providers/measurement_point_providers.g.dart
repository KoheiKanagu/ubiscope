// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: require_trailing_commas, non_constant_identifier_names, cast_nullable_to_non_nullable, lines_longer_than_80_chars, unnecessary_null_checks, strict_raw_type

part of 'measurement_point_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$measurementPointCollectionReferenceHash() =>
    r'e3b98de815fe38d3813d22eb42a7bfde66bce43c';

/// See also [measurementPointCollectionReference].
@ProviderFor(measurementPointCollectionReference)
final measurementPointCollectionReferenceProvider =
    AutoDisposeProvider<CollectionReference<MeasurementPoint>>.internal(
  measurementPointCollectionReference,
  name: r'measurementPointCollectionReferenceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$measurementPointCollectionReferenceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef MeasurementPointCollectionReferenceRef
    = AutoDisposeProviderRef<CollectionReference<MeasurementPoint>>;
String _$measurementPointSnapshotsHash() =>
    r'bad260d1e54f2ce5f9f59b9e66fe10401b8bf650';

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

/// See also [measurementPointSnapshots].
@ProviderFor(measurementPointSnapshots)
const measurementPointSnapshotsProvider = MeasurementPointSnapshotsFamily();

/// See also [measurementPointSnapshots].
class MeasurementPointSnapshotsFamily
    extends Family<AsyncValue<DocumentSnapshot<MeasurementPoint>>> {
  /// See also [measurementPointSnapshots].
  const MeasurementPointSnapshotsFamily();

  /// See also [measurementPointSnapshots].
  MeasurementPointSnapshotsProvider call(
    String documentId,
  ) {
    return MeasurementPointSnapshotsProvider(
      documentId,
    );
  }

  @override
  MeasurementPointSnapshotsProvider getProviderOverride(
    covariant MeasurementPointSnapshotsProvider provider,
  ) {
    return call(
      provider.documentId,
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
  String? get name => r'measurementPointSnapshotsProvider';
}

/// See also [measurementPointSnapshots].
class MeasurementPointSnapshotsProvider
    extends AutoDisposeStreamProvider<DocumentSnapshot<MeasurementPoint>> {
  /// See also [measurementPointSnapshots].
  MeasurementPointSnapshotsProvider(
    String documentId,
  ) : this._internal(
          (ref) => measurementPointSnapshots(
            ref as MeasurementPointSnapshotsRef,
            documentId,
          ),
          from: measurementPointSnapshotsProvider,
          name: r'measurementPointSnapshotsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$measurementPointSnapshotsHash,
          dependencies: MeasurementPointSnapshotsFamily._dependencies,
          allTransitiveDependencies:
              MeasurementPointSnapshotsFamily._allTransitiveDependencies,
          documentId: documentId,
        );

  MeasurementPointSnapshotsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.documentId,
  }) : super.internal();

  final String documentId;

  @override
  Override overrideWith(
    Stream<DocumentSnapshot<MeasurementPoint>> Function(
            MeasurementPointSnapshotsRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MeasurementPointSnapshotsProvider._internal(
        (ref) => create(ref as MeasurementPointSnapshotsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        documentId: documentId,
      ),
    );
  }

  @override
  AutoDisposeStreamProviderElement<DocumentSnapshot<MeasurementPoint>>
      createElement() {
    return _MeasurementPointSnapshotsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MeasurementPointSnapshotsProvider &&
        other.documentId == documentId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, documentId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin MeasurementPointSnapshotsRef
    on AutoDisposeStreamProviderRef<DocumentSnapshot<MeasurementPoint>> {
  /// The parameter `documentId` of this provider.
  String get documentId;
}

class _MeasurementPointSnapshotsProviderElement
    extends AutoDisposeStreamProviderElement<DocumentSnapshot<MeasurementPoint>>
    with MeasurementPointSnapshotsRef {
  _MeasurementPointSnapshotsProviderElement(super.provider);

  @override
  String get documentId =>
      (origin as MeasurementPointSnapshotsProvider).documentId;
}

String _$measurementPointAroundSnapshotsHash() =>
    r'17820cd63abf029f798337d77a85226c213dcb49';

/// See also [measurementPointAroundSnapshots].
@ProviderFor(measurementPointAroundSnapshots)
final measurementPointAroundSnapshotsProvider =
    AutoDisposeProvider<List<QueryDocumentSnapshot<MeasurementPoint>>>.internal(
  measurementPointAroundSnapshots,
  name: r'measurementPointAroundSnapshotsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$measurementPointAroundSnapshotsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef MeasurementPointAroundSnapshotsRef
    = AutoDisposeProviderRef<List<QueryDocumentSnapshot<MeasurementPoint>>>;
String _$measurementPointAroundHash() =>
    r'01cd59b8f54145bc676400367222c97540035489';

/// See also [measurementPointAround].
@ProviderFor(measurementPointAround)
final measurementPointAroundProvider =
    AutoDisposeProvider<List<MeasurementPoint>>.internal(
  measurementPointAround,
  name: r'measurementPointAroundProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$measurementPointAroundHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef MeasurementPointAroundRef
    = AutoDisposeProviderRef<List<MeasurementPoint>>;
String _$measurementPointControllerHash() =>
    r'e432c0437e477bee519d2a60c5fc93ebfc87d02a';

/// See also [measurementPointController].
@ProviderFor(measurementPointController)
final measurementPointControllerProvider =
    AutoDisposeProvider<MeasurementPointController>.internal(
  measurementPointController,
  name: r'measurementPointControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$measurementPointControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef MeasurementPointControllerRef
    = AutoDisposeProviderRef<MeasurementPointController>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
