// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'measurement_point.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MeasurementPoint _$MeasurementPointFromJson(Map<String, dynamic> json) {
  return _MeasurementPoint.fromJson(json);
}

/// @nodoc
mixin _$MeasurementPoint {
  @TimestampConverter()
  Timestamp? get createdAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  Timestamp? get updatedAt => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;

  /// The user who created this measurement point
  String get createdBy => throw _privateConstructorUsedError;

  /// The location of the measurement point
  @GeoPointConverter()
  GeoPoint get location => throw _privateConstructorUsedError;

  /// The level of the measurement point
  String get level => throw _privateConstructorUsedError;

  /// Array of types of measurements completed
  /// [MeasurementResultsData]type
  List<String> get measuredTypes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MeasurementPointCopyWith<MeasurementPoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeasurementPointCopyWith<$Res> {
  factory $MeasurementPointCopyWith(
          MeasurementPoint value, $Res Function(MeasurementPoint) then) =
      _$MeasurementPointCopyWithImpl<$Res, MeasurementPoint>;
  @useResult
  $Res call(
      {@TimestampConverter() Timestamp? createdAt,
      @TimestampConverter() Timestamp? updatedAt,
      bool deleted,
      String createdBy,
      @GeoPointConverter() GeoPoint location,
      String level,
      List<String> measuredTypes});
}

/// @nodoc
class _$MeasurementPointCopyWithImpl<$Res, $Val extends MeasurementPoint>
    implements $MeasurementPointCopyWith<$Res> {
  _$MeasurementPointCopyWithImpl(this._value, this._then);

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
    Object? createdBy = null,
    Object? location = null,
    Object? level = null,
    Object? measuredTypes = null,
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
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as GeoPoint,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
      measuredTypes: null == measuredTypes
          ? _value.measuredTypes
          : measuredTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MeasurementPointCopyWith<$Res>
    implements $MeasurementPointCopyWith<$Res> {
  factory _$$_MeasurementPointCopyWith(
          _$_MeasurementPoint value, $Res Function(_$_MeasurementPoint) then) =
      __$$_MeasurementPointCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@TimestampConverter() Timestamp? createdAt,
      @TimestampConverter() Timestamp? updatedAt,
      bool deleted,
      String createdBy,
      @GeoPointConverter() GeoPoint location,
      String level,
      List<String> measuredTypes});
}

/// @nodoc
class __$$_MeasurementPointCopyWithImpl<$Res>
    extends _$MeasurementPointCopyWithImpl<$Res, _$_MeasurementPoint>
    implements _$$_MeasurementPointCopyWith<$Res> {
  __$$_MeasurementPointCopyWithImpl(
      _$_MeasurementPoint _value, $Res Function(_$_MeasurementPoint) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deleted = null,
    Object? createdBy = null,
    Object? location = null,
    Object? level = null,
    Object? measuredTypes = null,
  }) {
    return _then(_$_MeasurementPoint(
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
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as GeoPoint,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
      measuredTypes: null == measuredTypes
          ? _value._measuredTypes
          : measuredTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MeasurementPoint implements _MeasurementPoint {
  const _$_MeasurementPoint(
      {@TimestampConverter() this.createdAt,
      @TimestampConverter() this.updatedAt,
      this.deleted = false,
      required this.createdBy,
      @GeoPointConverter() required this.location,
      required this.level,
      final List<String> measuredTypes = const []})
      : _measuredTypes = measuredTypes;

  factory _$_MeasurementPoint.fromJson(Map<String, dynamic> json) =>
      _$$_MeasurementPointFromJson(json);

  @override
  @TimestampConverter()
  final Timestamp? createdAt;
  @override
  @TimestampConverter()
  final Timestamp? updatedAt;
  @override
  @JsonKey()
  final bool deleted;

  /// The user who created this measurement point
  @override
  final String createdBy;

  /// The location of the measurement point
  @override
  @GeoPointConverter()
  final GeoPoint location;

  /// The level of the measurement point
  @override
  final String level;

  /// Array of types of measurements completed
  /// [MeasurementResultsData]type
  final List<String> _measuredTypes;

  /// Array of types of measurements completed
  /// [MeasurementResultsData]type
  @override
  @JsonKey()
  List<String> get measuredTypes {
    if (_measuredTypes is EqualUnmodifiableListView) return _measuredTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_measuredTypes);
  }

  @override
  String toString() {
    return 'MeasurementPoint(createdAt: $createdAt, updatedAt: $updatedAt, deleted: $deleted, createdBy: $createdBy, location: $location, level: $level, measuredTypes: $measuredTypes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MeasurementPoint &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.deleted, deleted) || other.deleted == deleted) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.level, level) || other.level == level) &&
            const DeepCollectionEquality()
                .equals(other._measuredTypes, _measuredTypes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      createdAt,
      updatedAt,
      deleted,
      createdBy,
      location,
      level,
      const DeepCollectionEquality().hash(_measuredTypes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MeasurementPointCopyWith<_$_MeasurementPoint> get copyWith =>
      __$$_MeasurementPointCopyWithImpl<_$_MeasurementPoint>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MeasurementPointToJson(
      this,
    );
  }
}

abstract class _MeasurementPoint implements MeasurementPoint {
  const factory _MeasurementPoint(
      {@TimestampConverter() final Timestamp? createdAt,
      @TimestampConverter() final Timestamp? updatedAt,
      final bool deleted,
      required final String createdBy,
      @GeoPointConverter() required final GeoPoint location,
      required final String level,
      final List<String> measuredTypes}) = _$_MeasurementPoint;

  factory _MeasurementPoint.fromJson(Map<String, dynamic> json) =
      _$_MeasurementPoint.fromJson;

  @override
  @TimestampConverter()
  Timestamp? get createdAt;
  @override
  @TimestampConverter()
  Timestamp? get updatedAt;
  @override
  bool get deleted;
  @override

  /// The user who created this measurement point
  String get createdBy;
  @override

  /// The location of the measurement point
  @GeoPointConverter()
  GeoPoint get location;
  @override

  /// The level of the measurement point
  String get level;
  @override

  /// Array of types of measurements completed
  /// [MeasurementResultsData]type
  List<String> get measuredTypes;
  @override
  @JsonKey(ignore: true)
  _$$_MeasurementPointCopyWith<_$_MeasurementPoint> get copyWith =>
      throw _privateConstructorUsedError;
}
