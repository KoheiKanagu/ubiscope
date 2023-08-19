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
String _$firebaseUserControllerHash() =>
    r'35b1d0059d559c1b8d16a7048eee7f3e64699c1e';

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
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
