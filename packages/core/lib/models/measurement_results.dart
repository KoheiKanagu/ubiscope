import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:core/core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'measurement_results.freezed.dart';
part 'measurement_results.g.dart';

@freezed
class MeasurementResults with _$MeasurementResults {
  const factory MeasurementResults({
    @TimestampConverter() Timestamp? createdAt,
    @TimestampConverter() Timestamp? updatedAt,
    @Default(false) bool deleted,

    /// The time the measurement was taken
    @TimestampConverter() required Timestamp? measuredAt,

    /// The user who created this measurement results
    required String measuredBy,

    /// The measurement point this measurement was taken at
    required String measurementPointId,

    /// The id of the scan this
    required String scanId,

    /// The measurement results data
    required MeasurementResultsData data,
  }) = _MeasurementResults;

  factory MeasurementResults.fromJson(Json json) =>
      _$MeasurementResultsFromJson(json);

  static FromFirestore<MeasurementResults> get fromFirestore =>
      (snapshot, _) => MeasurementResults.fromJson(
            snapshot.data() ?? {},
          );

  static ToFirestore<MeasurementResults> get toFirestore =>
      (data, _) => TimestampConverter.updateServerTimestamp(
            data.toJson(),
          );
}
