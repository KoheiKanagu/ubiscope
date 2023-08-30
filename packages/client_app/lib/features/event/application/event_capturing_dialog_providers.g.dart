// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: require_trailing_commas, non_constant_identifier_names, cast_nullable_to_non_nullable, lines_longer_than_80_chars, unnecessary_null_checks, strict_raw_type

part of 'event_capturing_dialog_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$eventMeasurementResultsCounterHash() =>
    r'7f0035a4693302ad843d6215440027662873cbbd';

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

abstract class _$EventMeasurementResultsCounter
    extends BuildlessAutoDisposeNotifier<Map<MeasurementType, int>> {
  late final String measurementPointId;

  Map<MeasurementType, int> build(
    String measurementPointId,
  );
}

/// See also [EventMeasurementResultsCounter].
@ProviderFor(EventMeasurementResultsCounter)
const eventMeasurementResultsCounterProvider =
    EventMeasurementResultsCounterFamily();

/// See also [EventMeasurementResultsCounter].
class EventMeasurementResultsCounterFamily
    extends Family<Map<MeasurementType, int>> {
  /// See also [EventMeasurementResultsCounter].
  const EventMeasurementResultsCounterFamily();

  /// See also [EventMeasurementResultsCounter].
  EventMeasurementResultsCounterProvider call(
    String measurementPointId,
  ) {
    return EventMeasurementResultsCounterProvider(
      measurementPointId,
    );
  }

  @override
  EventMeasurementResultsCounterProvider getProviderOverride(
    covariant EventMeasurementResultsCounterProvider provider,
  ) {
    return call(
      provider.measurementPointId,
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
  String? get name => r'eventMeasurementResultsCounterProvider';
}

/// See also [EventMeasurementResultsCounter].
class EventMeasurementResultsCounterProvider
    extends AutoDisposeNotifierProviderImpl<EventMeasurementResultsCounter,
        Map<MeasurementType, int>> {
  /// See also [EventMeasurementResultsCounter].
  EventMeasurementResultsCounterProvider(
    String measurementPointId,
  ) : this._internal(
          () => EventMeasurementResultsCounter()
            ..measurementPointId = measurementPointId,
          from: eventMeasurementResultsCounterProvider,
          name: r'eventMeasurementResultsCounterProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$eventMeasurementResultsCounterHash,
          dependencies: EventMeasurementResultsCounterFamily._dependencies,
          allTransitiveDependencies:
              EventMeasurementResultsCounterFamily._allTransitiveDependencies,
          measurementPointId: measurementPointId,
        );

  EventMeasurementResultsCounterProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.measurementPointId,
  }) : super.internal();

  final String measurementPointId;

  @override
  Map<MeasurementType, int> runNotifierBuild(
    covariant EventMeasurementResultsCounter notifier,
  ) {
    return notifier.build(
      measurementPointId,
    );
  }

  @override
  Override overrideWith(EventMeasurementResultsCounter Function() create) {
    return ProviderOverride(
      origin: this,
      override: EventMeasurementResultsCounterProvider._internal(
        () => create()..measurementPointId = measurementPointId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        measurementPointId: measurementPointId,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<EventMeasurementResultsCounter,
      Map<MeasurementType, int>> createElement() {
    return _EventMeasurementResultsCounterProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is EventMeasurementResultsCounterProvider &&
        other.measurementPointId == measurementPointId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, measurementPointId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin EventMeasurementResultsCounterRef
    on AutoDisposeNotifierProviderRef<Map<MeasurementType, int>> {
  /// The parameter `measurementPointId` of this provider.
  String get measurementPointId;
}

class _EventMeasurementResultsCounterProviderElement
    extends AutoDisposeNotifierProviderElement<EventMeasurementResultsCounter,
        Map<MeasurementType, int>> with EventMeasurementResultsCounterRef {
  _EventMeasurementResultsCounterProviderElement(super.provider);

  @override
  String get measurementPointId =>
      (origin as EventMeasurementResultsCounterProvider).measurementPointId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
