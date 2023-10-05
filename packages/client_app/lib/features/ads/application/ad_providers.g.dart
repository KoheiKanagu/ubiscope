// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: require_trailing_commas, non_constant_identifier_names, cast_nullable_to_non_nullable, lines_longer_than_80_chars, unnecessary_null_checks, strict_raw_type

part of 'ad_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$bannerAdControllerHash() =>
    r'a1396b0b4c0f25795dbfbaddb188586cd3478393';

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

abstract class _$BannerAdController
    extends BuildlessAutoDisposeAsyncNotifier<BannerAd> {
  late final Orientation orientation;
  late final int width;

  Future<BannerAd> build(
    Orientation orientation,
    int width,
  );
}

/// See also [BannerAdController].
@ProviderFor(BannerAdController)
const bannerAdControllerProvider = BannerAdControllerFamily();

/// See also [BannerAdController].
class BannerAdControllerFamily extends Family<AsyncValue<BannerAd>> {
  /// See also [BannerAdController].
  const BannerAdControllerFamily();

  /// See also [BannerAdController].
  BannerAdControllerProvider call(
    Orientation orientation,
    int width,
  ) {
    return BannerAdControllerProvider(
      orientation,
      width,
    );
  }

  @override
  BannerAdControllerProvider getProviderOverride(
    covariant BannerAdControllerProvider provider,
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
  String? get name => r'bannerAdControllerProvider';
}

/// See also [BannerAdController].
class BannerAdControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<BannerAdController, BannerAd> {
  /// See also [BannerAdController].
  BannerAdControllerProvider(
    Orientation orientation,
    int width,
  ) : this._internal(
          () => BannerAdController()
            ..orientation = orientation
            ..width = width,
          from: bannerAdControllerProvider,
          name: r'bannerAdControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$bannerAdControllerHash,
          dependencies: BannerAdControllerFamily._dependencies,
          allTransitiveDependencies:
              BannerAdControllerFamily._allTransitiveDependencies,
          orientation: orientation,
          width: width,
        );

  BannerAdControllerProvider._internal(
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
  Future<BannerAd> runNotifierBuild(
    covariant BannerAdController notifier,
  ) {
    return notifier.build(
      orientation,
      width,
    );
  }

  @override
  Override overrideWith(BannerAdController Function() create) {
    return ProviderOverride(
      origin: this,
      override: BannerAdControllerProvider._internal(
        () => create()
          ..orientation = orientation
          ..width = width,
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
  AutoDisposeAsyncNotifierProviderElement<BannerAdController, BannerAd>
      createElement() {
    return _BannerAdControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BannerAdControllerProvider &&
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

mixin BannerAdControllerRef on AutoDisposeAsyncNotifierProviderRef<BannerAd> {
  /// The parameter `orientation` of this provider.
  Orientation get orientation;

  /// The parameter `width` of this provider.
  int get width;
}

class _BannerAdControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<BannerAdController,
        BannerAd> with BannerAdControllerRef {
  _BannerAdControllerProviderElement(super.provider);

  @override
  Orientation get orientation =>
      (origin as BannerAdControllerProvider).orientation;
  @override
  int get width => (origin as BannerAdControllerProvider).width;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
