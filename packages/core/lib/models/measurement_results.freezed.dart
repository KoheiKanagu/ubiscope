// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'measurement_results.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MeasurementResults _$MeasurementResultsFromJson(Map<String, dynamic> json) {
  return _MeasurementResults.fromJson(json);
}

/// @nodoc
mixin _$MeasurementResults {
  @TimestampConverter()
  Timestamp? get createdAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  Timestamp? get updatedAt => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;

  /// The time the measurement was taken
  @TimestampConverter()
  Timestamp? get measuredAt => throw _privateConstructorUsedError;

  /// The user who created this measurement results
  String get measuredBy => throw _privateConstructorUsedError;

  /// The measurement point this measurement was taken at
  String get measurementPointId => throw _privateConstructorUsedError;

  /// The id of the scan this
  String get scanId => throw _privateConstructorUsedError;

  /// The measurement results data
  MeasurementResultsData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MeasurementResultsCopyWith<MeasurementResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeasurementResultsCopyWith<$Res> {
  factory $MeasurementResultsCopyWith(
          MeasurementResults value, $Res Function(MeasurementResults) then) =
      _$MeasurementResultsCopyWithImpl<$Res, MeasurementResults>;
  @useResult
  $Res call(
      {@TimestampConverter() Timestamp? createdAt,
      @TimestampConverter() Timestamp? updatedAt,
      bool deleted,
      @TimestampConverter() Timestamp? measuredAt,
      String measuredBy,
      String measurementPointId,
      String scanId,
      MeasurementResultsData data});

  $MeasurementResultsDataCopyWith<$Res> get data;
}

/// @nodoc
class _$MeasurementResultsCopyWithImpl<$Res, $Val extends MeasurementResults>
    implements $MeasurementResultsCopyWith<$Res> {
  _$MeasurementResultsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deleted = null,
    Object? measuredAt = freezed,
    Object? measuredBy = null,
    Object? measurementPointId = null,
    Object? scanId = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
      measuredAt: freezed == measuredAt
          ? _value.measuredAt
          : measuredAt // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
      measuredBy: null == measuredBy
          ? _value.measuredBy
          : measuredBy // ignore: cast_nullable_to_non_nullable
              as String,
      measurementPointId: null == measurementPointId
          ? _value.measurementPointId
          : measurementPointId // ignore: cast_nullable_to_non_nullable
              as String,
      scanId: null == scanId
          ? _value.scanId
          : scanId // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MeasurementResultsData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MeasurementResultsDataCopyWith<$Res> get data {
    return $MeasurementResultsDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MeasurementResultsCopyWith<$Res>
    implements $MeasurementResultsCopyWith<$Res> {
  factory _$$_MeasurementResultsCopyWith(_$_MeasurementResults value,
          $Res Function(_$_MeasurementResults) then) =
      __$$_MeasurementResultsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@TimestampConverter() Timestamp? createdAt,
      @TimestampConverter() Timestamp? updatedAt,
      bool deleted,
      @TimestampConverter() Timestamp? measuredAt,
      String measuredBy,
      String measurementPointId,
      String scanId,
      MeasurementResultsData data});

  @override
  $MeasurementResultsDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_MeasurementResultsCopyWithImpl<$Res>
    extends _$MeasurementResultsCopyWithImpl<$Res, _$_MeasurementResults>
    implements _$$_MeasurementResultsCopyWith<$Res> {
  __$$_MeasurementResultsCopyWithImpl(
      _$_MeasurementResults _value, $Res Function(_$_MeasurementResults) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deleted = null,
    Object? measuredAt = freezed,
    Object? measuredBy = null,
    Object? measurementPointId = null,
    Object? scanId = null,
    Object? data = null,
  }) {
    return _then(_$_MeasurementResults(
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
      measuredAt: freezed == measuredAt
          ? _value.measuredAt
          : measuredAt // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
      measuredBy: null == measuredBy
          ? _value.measuredBy
          : measuredBy // ignore: cast_nullable_to_non_nullable
              as String,
      measurementPointId: null == measurementPointId
          ? _value.measurementPointId
          : measurementPointId // ignore: cast_nullable_to_non_nullable
              as String,
      scanId: null == scanId
          ? _value.scanId
          : scanId // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MeasurementResultsData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MeasurementResults implements _MeasurementResults {
  const _$_MeasurementResults(
      {@TimestampConverter() this.createdAt,
      @TimestampConverter() this.updatedAt,
      this.deleted = false,
      @TimestampConverter() required this.measuredAt,
      required this.measuredBy,
      required this.measurementPointId,
      required this.scanId,
      required this.data});

  factory _$_MeasurementResults.fromJson(Map<String, dynamic> json) =>
      _$$_MeasurementResultsFromJson(json);

  @override
  @TimestampConverter()
  final Timestamp? createdAt;
  @override
  @TimestampConverter()
  final Timestamp? updatedAt;
  @override
  @JsonKey()
  final bool deleted;

  /// The time the measurement was taken
  @override
  @TimestampConverter()
  final Timestamp? measuredAt;

  /// The user who created this measurement results
  @override
  final String measuredBy;

  /// The measurement point this measurement was taken at
  @override
  final String measurementPointId;

  /// The id of the scan this
  @override
  final String scanId;

  /// The measurement results data
  @override
  final MeasurementResultsData data;

  @override
  String toString() {
    return 'MeasurementResults(createdAt: $createdAt, updatedAt: $updatedAt, deleted: $deleted, measuredAt: $measuredAt, measuredBy: $measuredBy, measurementPointId: $measurementPointId, scanId: $scanId, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MeasurementResults &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.deleted, deleted) || other.deleted == deleted) &&
            (identical(other.measuredAt, measuredAt) ||
                other.measuredAt == measuredAt) &&
            (identical(other.measuredBy, measuredBy) ||
                other.measuredBy == measuredBy) &&
            (identical(other.measurementPointId, measurementPointId) ||
                other.measurementPointId == measurementPointId) &&
            (identical(other.scanId, scanId) || other.scanId == scanId) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, createdAt, updatedAt, deleted,
      measuredAt, measuredBy, measurementPointId, scanId, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MeasurementResultsCopyWith<_$_MeasurementResults> get copyWith =>
      __$$_MeasurementResultsCopyWithImpl<_$_MeasurementResults>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MeasurementResultsToJson(
      this,
    );
  }
}

abstract class _MeasurementResults implements MeasurementResults {
  const factory _MeasurementResults(
      {@TimestampConverter() final Timestamp? createdAt,
      @TimestampConverter() final Timestamp? updatedAt,
      final bool deleted,
      @TimestampConverter() required final Timestamp? measuredAt,
      required final String measuredBy,
      required final String measurementPointId,
      required final String scanId,
      required final MeasurementResultsData data}) = _$_MeasurementResults;

  factory _MeasurementResults.fromJson(Map<String, dynamic> json) =
      _$_MeasurementResults.fromJson;

  @override
  @TimestampConverter()
  Timestamp? get createdAt;
  @override
  @TimestampConverter()
  Timestamp? get updatedAt;
  @override
  bool get deleted;
  @override

  /// The time the measurement was taken
  @TimestampConverter()
  Timestamp? get measuredAt;
  @override

  /// The user who created this measurement results
  String get measuredBy;
  @override

  /// The measurement point this measurement was taken at
  String get measurementPointId;
  @override

  /// The id of the scan this
  String get scanId;
  @override

  /// The measurement results data
  MeasurementResultsData get data;
  @override
  @JsonKey(ignore: true)
  _$$_MeasurementResultsCopyWith<_$_MeasurementResults> get copyWith =>
      throw _privateConstructorUsedError;
}
