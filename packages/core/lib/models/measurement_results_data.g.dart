// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: require_trailing_commas, non_constant_identifier_names, cast_nullable_to_non_nullable, lines_longer_than_80_chars, unnecessary_null_checks, strict_raw_type

part of 'measurement_results_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MeasurementResultsDataUnknown _$$MeasurementResultsDataUnknownFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$MeasurementResultsDataUnknown',
      json,
      ($checkedConvert) {
        final val = _$MeasurementResultsDataUnknown(
          type: $checkedConvert(
              'type',
              (v) =>
                  $enumDecodeNullable(_$MeasurementTypeEnumMap, v) ??
                  MeasurementType.unknown),
        );
        return val;
      },
    );

Map<String, dynamic> _$$MeasurementResultsDataUnknownToJson(
        _$MeasurementResultsDataUnknown instance) =>
    <String, dynamic>{
      'type': _$MeasurementTypeEnumMap[instance.type]!,
    };

const _$MeasurementTypeEnumMap = {
  MeasurementType.unknown: 'unknown',
  MeasurementType.wifi: 'wifi',
  MeasurementType.ibeacon: 'ibeacon',
  MeasurementType.magnetic: 'magnetic',
};

_$MeasurementResultsDataWifi _$$MeasurementResultsDataWifiFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$MeasurementResultsDataWifi',
      json,
      ($checkedConvert) {
        final val = _$MeasurementResultsDataWifi(
          type: $checkedConvert(
              'type',
              (v) =>
                  $enumDecodeNullable(_$MeasurementTypeEnumMap, v) ??
                  MeasurementType.wifi),
          timestamp: $checkedConvert('timestamp', (v) => v as String),
          ssid: $checkedConvert('ssid', (v) => v as String),
          bssid: $checkedConvert('bssid', (v) => v as String),
          rssi: $checkedConvert('rssi', (v) => v as int),
          frequency: $checkedConvert('frequency', (v) => v as int),
          capabilities: $checkedConvert('capabilities', (v) => v as String),
          centerFreq0: $checkedConvert('centerFreq0', (v) => v as int),
          centerFreq1: $checkedConvert('centerFreq1', (v) => v as int),
          channelWidth: $checkedConvert('channelWidth', (v) => v as int),
        );
        return val;
      },
    );

Map<String, dynamic> _$$MeasurementResultsDataWifiToJson(
        _$MeasurementResultsDataWifi instance) =>
    <String, dynamic>{
      'type': _$MeasurementTypeEnumMap[instance.type]!,
      'timestamp': instance.timestamp,
      'ssid': instance.ssid,
      'bssid': instance.bssid,
      'rssi': instance.rssi,
      'frequency': instance.frequency,
      'capabilities': instance.capabilities,
      'centerFreq0': instance.centerFreq0,
      'centerFreq1': instance.centerFreq1,
      'channelWidth': instance.channelWidth,
    };

_$MeasurementResultsDataIbeacon _$$MeasurementResultsDataIbeaconFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$MeasurementResultsDataIbeacon',
      json,
      ($checkedConvert) {
        final val = _$MeasurementResultsDataIbeacon(
          type: $checkedConvert(
              'type',
              (v) =>
                  $enumDecodeNullable(_$MeasurementTypeEnumMap, v) ??
                  MeasurementType.ibeacon),
          uuid: $checkedConvert('uuid', (v) => v as String),
          major: $checkedConvert('major', (v) => v as int),
          minor: $checkedConvert('minor', (v) => v as int),
          rssi: $checkedConvert('rssi', (v) => v as int),
          timestamp: $checkedConvert('timestamp', (v) => v as String),
          accuracy: $checkedConvert('accuracy', (v) => (v as num).toDouble()),
          proximity: $checkedConvert('proximity', (v) => v as int?),
          txPower: $checkedConvert('txPower', (v) => v as int?),
          bluetoothAddress:
              $checkedConvert('bluetoothAddress', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$MeasurementResultsDataIbeaconToJson(
        _$MeasurementResultsDataIbeacon instance) =>
    <String, dynamic>{
      'type': _$MeasurementTypeEnumMap[instance.type]!,
      'uuid': instance.uuid,
      'major': instance.major,
      'minor': instance.minor,
      'rssi': instance.rssi,
      'timestamp': instance.timestamp,
      'accuracy': instance.accuracy,
      'proximity': instance.proximity,
      'txPower': instance.txPower,
      'bluetoothAddress': instance.bluetoothAddress,
    };

_$MeasurementResultsDataMagnetic _$$MeasurementResultsDataMagneticFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$MeasurementResultsDataMagnetic',
      json,
      ($checkedConvert) {
        final val = _$MeasurementResultsDataMagnetic(
          type: $checkedConvert(
              'type',
              (v) =>
                  $enumDecodeNullable(_$MeasurementTypeEnumMap, v) ??
                  MeasurementType.magnetic),
          recordStartTime: $checkedConvert('recordStartTime', (v) => v as int),
          record: $checkedConvert(
              'record', (v) => const BlobConverter().fromJson(v)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$MeasurementResultsDataMagneticToJson(
        _$MeasurementResultsDataMagnetic instance) =>
    <String, dynamic>{
      'type': _$MeasurementTypeEnumMap[instance.type]!,
      'recordStartTime': instance.recordStartTime,
      'record': const BlobConverter().toJson(instance.record),
    };
