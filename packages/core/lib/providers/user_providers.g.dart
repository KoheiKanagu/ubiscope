// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: require_trailing_commas, non_constant_identifier_names, cast_nullable_to_non_nullable, lines_longer_than_80_chars, unnecessary_null_checks, strict_raw_type

part of 'user_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userCollectionReferenceHash() =>
    r'f2b106f5d2c8a2e681f631ff34499c8a4734896c';

/// See also [userCollectionReference].
@ProviderFor(userCollectionReference)
final userCollectionReferenceProvider =
    AutoDisposeProvider<CollectionReference<User>>.internal(
  userCollectionReference,
  name: r'userCollectionReferenceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$userCollectionReferenceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef UserCollectionReferenceRef
    = AutoDisposeProviderRef<CollectionReference<User>>;
String _$userDocumentSnapshotHash() =>
    r'449e1f6f5775bffea1b396dbdf90f29056ab5bb7';

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

typedef UserDocumentSnapshotRef
    = AutoDisposeStreamProviderRef<DocumentSnapshot<User>>;

/// See also [userDocumentSnapshot].
@ProviderFor(userDocumentSnapshot)
const userDocumentSnapshotProvider = UserDocumentSnapshotFamily();

/// See also [userDocumentSnapshot].
class UserDocumentSnapshotFamily
    extends Family<AsyncValue<DocumentSnapshot<User>>> {
  /// See also [userDocumentSnapshot].
  const UserDocumentSnapshotFamily();

  /// See also [userDocumentSnapshot].
  UserDocumentSnapshotProvider call(
    String uid,
  ) {
    return UserDocumentSnapshotProvider(
      uid,
    );
  }

  @override
  UserDocumentSnapshotProvider getProviderOverride(
    covariant UserDocumentSnapshotProvider provider,
  ) {
    return call(
      provider.uid,
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
  String? get name => r'userDocumentSnapshotProvider';
}

/// See also [userDocumentSnapshot].
class UserDocumentSnapshotProvider
    extends AutoDisposeStreamProvider<DocumentSnapshot<User>> {
  /// See also [userDocumentSnapshot].
  UserDocumentSnapshotProvider(
    this.uid,
  ) : super.internal(
          (ref) => userDocumentSnapshot(
            ref,
            uid,
          ),
          from: userDocumentSnapshotProvider,
          name: r'userDocumentSnapshotProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$userDocumentSnapshotHash,
          dependencies: UserDocumentSnapshotFamily._dependencies,
          allTransitiveDependencies:
              UserDocumentSnapshotFamily._allTransitiveDependencies,
        );

  final String uid;

  @override
  bool operator ==(Object other) {
    return other is UserDocumentSnapshotProvider && other.uid == uid;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, uid.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$userControllerAwaitHash() =>
    r'3314f5275249db7510d9c01f3bdb936040c818c5';

/// See also [userControllerAwait].
@ProviderFor(userControllerAwait)
final userControllerAwaitProvider = AutoDisposeFutureProvider<User>.internal(
  userControllerAwait,
  name: r'userControllerAwaitProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$userControllerAwaitHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef UserControllerAwaitRef = AutoDisposeFutureProviderRef<User>;
String _$userControllerHash() => r'858c6856e48de906fabc08bde9af3906696700f8';

/// See also [UserController].
@ProviderFor(UserController)
final userControllerProvider = AutoDisposeNotifierProvider<UserController,
    AsyncValue<({DocumentSnapshot<User>? snapshot, User user})>>.internal(
  UserController.new,
  name: r'userControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$userControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$UserController = AutoDisposeNotifier<
    AsyncValue<({DocumentSnapshot<User>? snapshot, User user})>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
