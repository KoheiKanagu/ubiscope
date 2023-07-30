// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: require_trailing_commas, non_constant_identifier_names, cast_nullable_to_non_nullable, lines_longer_than_80_chars

part of 'ad_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$bannerAdControllerHash() =>
    r'e2d7fcc1d9482323e236079fe3a7ae3a4cdb1d66';

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
    extends BuildlessAutoDisposeNotifier<AsyncValue<BannerAd>> {
  late final Orientation orientation;
  late final int width;

  AsyncValue<BannerAd> build(
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
class BannerAdControllerProvider extends AutoDisposeNotifierProviderImpl<
    BannerAdController, AsyncValue<BannerAd>> {
  /// See also [BannerAdController].
  BannerAdControllerProvider(
    this.orientation,
    this.width,
  ) : super.internal(
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
        );

  final Orientation orientation;
  final int width;

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

  @override
  AsyncValue<BannerAd> runNotifierBuild(
    covariant BannerAdController notifier,
  ) {
    return notifier.build(
      orientation,
      width,
    );
  }
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
