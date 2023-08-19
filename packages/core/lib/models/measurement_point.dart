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
    @GeoPointConverter()
    required ({
      String? level,
      String? levelShort,
      GeoPoint geopoint,
      String geohash,
    }) location,

    /// Map of measurement type to dataset ID
    @Default({}) Map<MeasurementType, String?> measuredTypes,
  }) = _MeasurementPoint;

  const MeasurementPoint._();

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

  /// Returns a list of all measurement types that have been measured
  List<MeasurementType> get measuredTypesCompleted => measuredTypes.entries
      .where(
        (e) => e.value != null,
      )
      .map(
        (e) => e.key,
      )
      .toList();
}
