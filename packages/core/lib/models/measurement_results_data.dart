import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:core/core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'measurement_results_data.freezed.dart';
part 'measurement_results_data.g.dart';

@Freezed(
  unionKey: 'type',
  fallbackUnion: 'unknown',
)
class MeasurementResultsData with _$MeasurementResultsData {
  const MeasurementResultsData._();

  const factory MeasurementResultsData.unknown() =
      MeasurementResultsDataUnknown;

  const factory MeasurementResultsData.wifi({
    required String ssid,
    required String bssid,
    required int rssi,
    required int frequency,
  }) = MeasurementResultsDataWifi;

  const factory MeasurementResultsData.ble({
    required String deviceName,
    required String macAddress,
    required int rssi,
    required int txPower,
    required String uuid,
    required int major,
    required int minor,
  }) = MeasurementResultsDataBle;

  const factory MeasurementResultsData.magnetic({
    required int recordStartTime,
    @BlobConverter() required Blob record,
  }) = MeasurementResultsDataMagnetic;

  factory MeasurementResultsData.fromJson(Json json) =>
      _$MeasurementResultsDataFromJson(json);

  static FromFirestore<MeasurementResultsData> get fromFirestore =>
      (snapshot, _) => MeasurementResultsData.fromJson(
            snapshot.data() ?? {},
          );

  static ToFirestore<MeasurementResultsData> get toFirestore =>
      (data, _) => TimestampConverter.updateServerTimestamp(
            data.toJson(),
          );
}
