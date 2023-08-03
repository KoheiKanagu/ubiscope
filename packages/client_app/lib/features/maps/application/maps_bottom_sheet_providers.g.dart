// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: require_trailing_commas, non_constant_identifier_names, cast_nullable_to_non_nullable, lines_longer_than_80_chars

part of 'maps_bottom_sheet_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$mapsBottomSheetControllerHash() =>
    r'1dba9c151dc75ce1cde205666d6b52e93ad22939';

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

typedef MapsBottomSheetControllerRef
    = AutoDisposeProviderRef<MapsBottomSheetController>;

/// See also [mapsBottomSheetController].
@ProviderFor(mapsBottomSheetController)
const mapsBottomSheetControllerProvider = MapsBottomSheetControllerFamily();

/// See also [mapsBottomSheetController].
class MapsBottomSheetControllerFamily
    extends Family<MapsBottomSheetController> {
  /// See also [mapsBottomSheetController].
  const MapsBottomSheetControllerFamily();

  /// See also [mapsBottomSheetController].
  MapsBottomSheetControllerProvider call(
    MapsBottomSheetType type,
  ) {
    return MapsBottomSheetControllerProvider(
      type,
    );
  }

  @override
  MapsBottomSheetControllerProvider getProviderOverride(
    covariant MapsBottomSheetControllerProvider provider,
  ) {
    return call(
      provider.type,
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
  String? get name => r'mapsBottomSheetControllerProvider';
}

/// See also [mapsBottomSheetController].
class MapsBottomSheetControllerProvider
    extends AutoDisposeProvider<MapsBottomSheetController> {
  /// See also [mapsBottomSheetController].
  MapsBottomSheetControllerProvider(
    this.type,
  ) : super.internal(
          (ref) => mapsBottomSheetController(
            ref,
            type,
          ),
          from: mapsBottomSheetControllerProvider,
          name: r'mapsBottomSheetControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$mapsBottomSheetControllerHash,
          dependencies: MapsBottomSheetControllerFamily._dependencies,
          allTransitiveDependencies:
              MapsBottomSheetControllerFamily._allTransitiveDependencies,
        );

  final MapsBottomSheetType type;

  @override
  bool operator ==(Object other) {
    return other is MapsBottomSheetControllerProvider && other.type == type;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, type.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
