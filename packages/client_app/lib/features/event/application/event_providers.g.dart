// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: require_trailing_commas, non_constant_identifier_names, cast_nullable_to_non_nullable, lines_longer_than_80_chars, unnecessary_null_checks, strict_raw_type

part of 'event_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$eventControllerHash() => r'40868c94494c992b67faab73f286f952b3be6b10';

/// See also [eventController].
@ProviderFor(eventController)
final eventControllerProvider = AutoDisposeProvider<EventController>.internal(
  eventController,
  name: r'eventControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$eventControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef EventControllerRef = AutoDisposeProviderRef<EventController>;
String _$eventPermissionStatusHash() =>
    r'abe04b547fce7374b4a4eac09ddb75b9adb94173';

/// See also [EventPermissionStatus].
@ProviderFor(EventPermissionStatus)
final eventPermissionStatusProvider =
    AutoDisposeNotifierProvider<EventPermissionStatus, bool>.internal(
  EventPermissionStatus.new,
  name: r'eventPermissionStatusProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$eventPermissionStatusHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$EventPermissionStatus = AutoDisposeNotifier<bool>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
