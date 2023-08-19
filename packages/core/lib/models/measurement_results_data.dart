import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'measurement_results_data.freezed.dart';
part 'measurement_results_data.g.dart';

@Freezed(
  unionKey: 'type',
  fallbackUnion: 'unknown',
)
class MeasurementResultsData with _$MeasurementResultsData {
  const MeasurementResultsData._();

  const factory MeasurementResultsData.unknown({
    @Default(MeasurementType.unknown) MeasurementType type,
  }) = MeasurementResultsDataUnknown;

  const factory MeasurementResultsData.wifi({
    @Default(MeasurementType.wifi) MeasurementType type,
    required String timestamp,
    required String ssid,
    required String bssid,
    required int rssi,
    required int frequency,
    required String capabilities,
    required int centerFreq0,
    required int centerFreq1,
    required int channelWidth,
  }) = MeasurementResultsDataWifi;

  const factory MeasurementResultsData.ibeacon({
    @Default(MeasurementType.ibeacon) MeasurementType type,
    required String uuid,
    required int major,
    required int minor,
    required int rssi,
    required String timestamp,
    required double accuracy,
    required int? proximity,
    required int? txPower,
    required String? bluetoothAddress,
  }) = MeasurementResultsDataIbeacon;

  const factory MeasurementResultsData.magnetic({
    @Default(MeasurementType.magnetic) MeasurementType type,
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

enum MeasurementType {
  unknown,
  wifi,
  ibeacon,
  magnetic,
  ;

  String get label => switch (this) {
        MeasurementType.wifi => 'Wi-Fi',
        MeasurementType.ibeacon => 'iBeacon',
        MeasurementType.magnetic => 'Magnetic',
        MeasurementType.unknown => 'Unknown',
      };

  Color get color => switch (this) {
        MeasurementType.wifi => Colors.red,
        MeasurementType.ibeacon => Colors.blue,
        MeasurementType.magnetic => Colors.orange,
        MeasurementType.unknown => Colors.grey,
      };

  String get unit => switch (this) {
        MeasurementType.wifi => 'networks',
        MeasurementType.ibeacon => 'devices',
        _ => '',
      };
}
