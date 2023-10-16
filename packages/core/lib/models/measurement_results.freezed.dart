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
  bool get deleted =>
      throw _privateConstructorUsedError; // Unique ID for each measurement
  String get datasetId => throw _privateConstructorUsedError;

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
      String datasetId,
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
    Object? datasetId = null,
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
      datasetId: null == datasetId
          ? _value.datasetId
          : datasetId // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$MeasurementResultsImplCopyWith<$Res>
    implements $MeasurementResultsCopyWith<$Res> {
  factory _$$MeasurementResultsImplCopyWith(_$MeasurementResultsImpl value,
          $Res Function(_$MeasurementResultsImpl) then) =
      __$$MeasurementResultsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@TimestampConverter() Timestamp? createdAt,
      @TimestampConverter() Timestamp? updatedAt,
      bool deleted,
      String datasetId,
      @TimestampConverter() Timestamp? measuredAt,
      String measuredBy,
      String measurementPointId,
      String scanId,
      MeasurementResultsData data});

  @override
  $MeasurementResultsDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$MeasurementResultsImplCopyWithImpl<$Res>
    extends _$MeasurementResultsCopyWithImpl<$Res, _$MeasurementResultsImpl>
    implements _$$MeasurementResultsImplCopyWith<$Res> {
  __$$MeasurementResultsImplCopyWithImpl(_$MeasurementResultsImpl _value,
      $Res Function(_$MeasurementResultsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deleted = null,
    Object? datasetId = null,
    Object? measuredAt = freezed,
    Object? measuredBy = null,
    Object? measurementPointId = null,
    Object? scanId = null,
    Object? data = null,
  }) {
    return _then(_$MeasurementResultsImpl(
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
      datasetId: null == datasetId
          ? _value.datasetId
          : datasetId // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$MeasurementResultsImpl implements _MeasurementResults {
  const _$MeasurementResultsImpl(
      {@TimestampConverter() this.createdAt,
      @TimestampConverter() this.updatedAt,
      this.deleted = false,
      required this.datasetId,
      @TimestampConverter() required this.measuredAt,
      required this.measuredBy,
      required this.measurementPointId,
      required this.scanId,
      required this.data});

  factory _$MeasurementResultsImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeasurementResultsImplFromJson(json);

  @override
  @TimestampConverter()
  final Timestamp? createdAt;
  @override
  @TimestampConverter()
  final Timestamp? updatedAt;
  @override
  @JsonKey()
  final bool deleted;
// Unique ID for each measurement
  @override
  final String datasetId;

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
    return 'MeasurementResults(createdAt: $createdAt, updatedAt: $updatedAt, deleted: $deleted, datasetId: $datasetId, measuredAt: $measuredAt, measuredBy: $measuredBy, measurementPointId: $measurementPointId, scanId: $scanId, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeasurementResultsImpl &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.deleted, deleted) || other.deleted == deleted) &&
            (identical(other.datasetId, datasetId) ||
                other.datasetId == datasetId) &&
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
      datasetId, measuredAt, measuredBy, measurementPointId, scanId, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeasurementResultsImplCopyWith<_$MeasurementResultsImpl> get copyWith =>
      __$$MeasurementResultsImplCopyWithImpl<_$MeasurementResultsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeasurementResultsImplToJson(
      this,
    );
  }
}

abstract class _MeasurementResults implements MeasurementResults {
  const factory _MeasurementResults(
      {@TimestampConverter() final Timestamp? createdAt,
      @TimestampConverter() final Timestamp? updatedAt,
      final bool deleted,
      required final String datasetId,
      @TimestampConverter() required final Timestamp? measuredAt,
      required final String measuredBy,
      required final String measurementPointId,
      required final String scanId,
      required final MeasurementResultsData data}) = _$MeasurementResultsImpl;

  factory _MeasurementResults.fromJson(Map<String, dynamic> json) =
      _$MeasurementResultsImpl.fromJson;

  @override
  @TimestampConverter()
  Timestamp? get createdAt;
  @override
  @TimestampConverter()
  Timestamp? get updatedAt;
  @override
  bool get deleted;
  @override // Unique ID for each measurement
  String get datasetId;
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
  _$$MeasurementResultsImplCopyWith<_$MeasurementResultsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
