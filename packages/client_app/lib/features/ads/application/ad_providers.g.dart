// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: require_trailing_commas, non_constant_identifier_names, cast_nullable_to_non_nullable, lines_longer_than_80_chars, unnecessary_null_checks, strict_raw_type

part of 'ad_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$bannerAdUnitIdHash() => r'bf7f03d870c5bf1c2101ded0c65e8e9f0d7f3fab';

/// See also [bannerAdUnitId].
@ProviderFor(bannerAdUnitId)
final bannerAdUnitIdProvider = AutoDisposeProvider<String>.internal(
  bannerAdUnitId,
  name: r'bannerAdUnitIdProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$bannerAdUnitIdHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef BannerAdUnitIdRef = AutoDisposeProviderRef<String>;
String _$bannerAdSizeHash() => r'66ed204c04e1eff53f402214f31324eba3870534';

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

/// See also [bannerAdSize].
@ProviderFor(bannerAdSize)
const bannerAdSizeProvider = BannerAdSizeFamily();

/// See also [bannerAdSize].
class BannerAdSizeFamily
    extends Family<AsyncValue<AnchoredAdaptiveBannerAdSize>> {
  /// See also [bannerAdSize].
  const BannerAdSizeFamily();

  /// See also [bannerAdSize].
  BannerAdSizeProvider call(
    Orientation orientation,
    int width,
  ) {
    return BannerAdSizeProvider(
      orientation,
      width,
    );
  }

  @override
  BannerAdSizeProvider getProviderOverride(
    covariant BannerAdSizeProvider provider,
  ) {
    return call(
      provider.orientation,
      provider.width,
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
  String? get name => r'bannerAdSizeProvider';
}

/// See also [bannerAdSize].
class BannerAdSizeProvider
    extends AutoDisposeFutureProvider<AnchoredAdaptiveBannerAdSize> {
  /// See also [bannerAdSize].
  BannerAdSizeProvider(
    Orientation orientation,
    int width,
  ) : this._internal(
          (ref) => bannerAdSize(
            ref as BannerAdSizeRef,
            orientation,
            width,
          ),
          from: bannerAdSizeProvider,
          name: r'bannerAdSizeProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$bannerAdSizeHash,
          dependencies: BannerAdSizeFamily._dependencies,
          allTransitiveDependencies:
              BannerAdSizeFamily._allTransitiveDependencies,
          orientation: orientation,
          width: width,
        );

  BannerAdSizeProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.orientation,
    required this.width,
  }) : super.internal();

  final Orientation orientation;
  final int width;

  @override
  Override overrideWith(
    FutureOr<AnchoredAdaptiveBannerAdSize> Function(BannerAdSizeRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: BannerAdSizeProvider._internal(
        (ref) => create(ref as BannerAdSizeRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        orientation: orientation,
        width: width,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<AnchoredAdaptiveBannerAdSize>
      createElement() {
    return _BannerAdSizeProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BannerAdSizeProvider &&
        other.orientation == orientation &&
        other.width == width;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, orientation.hashCode);
    hash = _SystemHash.combine(hash, width.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin BannerAdSizeRef
    on AutoDisposeFutureProviderRef<AnchoredAdaptiveBannerAdSize> {
  /// The parameter `orientation` of this provider.
  Orientation get orientation;

  /// The parameter `width` of this provider.
  int get width;
}

class _BannerAdSizeProviderElement
    extends AutoDisposeFutureProviderElement<AnchoredAdaptiveBannerAdSize>
    with BannerAdSizeRef {
  _BannerAdSizeProviderElement(super.provider);

  @override
  Orientation get orientation => (origin as BannerAdSizeProvider).orientation;
  @override
  int get width => (origin as BannerAdSizeProvider).width;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
