import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:core/core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'measurement_point.freezed.dart';
part 'measurement_point.g.dart';

@freezed
class MeasurementPoint with _$MeasurementPoint {
  const factory MeasurementPoint({
    @TimestampConverter() Timestamp? createdAt,
    @TimestampConverter() Timestamp? updatedAt,
    @Default(false) bool deleted,

    /// The user who created this measurement point
    required String createdBy,

    /// The location of the measurement point
    @GeoPointConverter() required GeoPoint location,

    /// The level of the measurement point
    required String level,

    /// Array of types of measurements completed
    /// [MeasurementResultsData]type
    @Default([]) List<String> measuredTypes,
  }) = _MeasurementPoint;

  factory MeasurementPoint.fromJson(Json json) =>
      _$MeasurementPointFromJson(json);

  static FromFirestore<MeasurementPoint> get fromFirestore =>
      (snapshot, _) => MeasurementPoint.fromJson(
            snapshot.data() ?? {},
          );

  static ToFirestore<MeasurementPoint> get toFirestore =>
      (data, _) => TimestampConverter.updateServerTimestamp(
            data.toJson(),
          );
}
