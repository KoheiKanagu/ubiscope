// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: require_trailing_commas, non_constant_identifier_names, cast_nullable_to_non_nullable, lines_longer_than_80_chars, unnecessary_null_checks, strict_raw_type

part of 'auth_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$firebaseUserUidHash() => r'329901db5cc518eebd55065f101fb5793e0e8192';

/// See also [firebaseUserUid].
@ProviderFor(firebaseUserUid)
final firebaseUserUidProvider = AutoDisposeProvider<String?>.internal(
  firebaseUserUid,
  name: r'firebaseUserUidProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$firebaseUserUidHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FirebaseUserUidRef = AutoDisposeProviderRef<String?>;
String _$firebaseUserUidValueNotifierHash() =>
    r'c01e7f7b0a3c8c762153b9bb4c1a2f1477cad62a';

/// See also [firebaseUserUidValueNotifier].
@ProviderFor(firebaseUserUidValueNotifier)
final firebaseUserUidValueNotifierProvider =
    AutoDisposeProvider<ValueNotifier<AsyncValue<User?>>>.internal(
  firebaseUserUidValueNotifier,
  name: r'firebaseUserUidValueNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$firebaseUserUidValueNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FirebaseUserUidValueNotifierRef
    = AutoDisposeProviderRef<ValueNotifier<AsyncValue<User?>>>;
String _$firebaseUserControllerHash() =>
    r'893c60290b3f832f3749e6a4bedab7702568c76b';

/// See also [FirebaseUserController].
@ProviderFor(FirebaseUserController)
final firebaseUserControllerProvider =
    AutoDisposeStreamNotifierProvider<FirebaseUserController, User?>.internal(
  FirebaseUserController.new,
  name: r'firebaseUserControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$firebaseUserControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$FirebaseUserController = AutoDisposeStreamNotifier<User?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
