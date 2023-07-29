// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, cast_nullable_to_non_nullable, lines_longer_than_80_chars

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
          $type: $checkedConvert('type', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'type'},
    );

Map<String, dynamic> _$$MeasurementResultsDataUnknownToJson(
        _$MeasurementResultsDataUnknown instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };

_$MeasurementResultsDataWifi _$$MeasurementResultsDataWifiFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$MeasurementResultsDataWifi',
      json,
      ($checkedConvert) {
        final val = _$MeasurementResultsDataWifi(
          ssid: $checkedConvert('ssid', (v) => v as String),
          bssid: $checkedConvert('bssid', (v) => v as String),
          rssi: $checkedConvert('rssi', (v) => v as int),
          frequency: $checkedConvert('frequency', (v) => v as int),
          $type: $checkedConvert('type', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'type'},
    );

Map<String, dynamic> _$$MeasurementResultsDataWifiToJson(
        _$MeasurementResultsDataWifi instance) =>
    <String, dynamic>{
      'ssid': instance.ssid,
      'bssid': instance.bssid,
      'rssi': instance.rssi,
      'frequency': instance.frequency,
      'type': instance.$type,
    };

_$MeasurementResultsDataBle _$$MeasurementResultsDataBleFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$MeasurementResultsDataBle',
      json,
      ($checkedConvert) {
        final val = _$MeasurementResultsDataBle(
          deviceName: $checkedConvert('deviceName', (v) => v as String),
          macAddress: $checkedConvert('macAddress', (v) => v as String),
          rssi: $checkedConvert('rssi', (v) => v as int),
          txPower: $checkedConvert('txPower', (v) => v as int),
          uuid: $checkedConvert('uuid', (v) => v as String),
          major: $checkedConvert('major', (v) => v as int),
          minor: $checkedConvert('minor', (v) => v as int),
          $type: $checkedConvert('type', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'type'},
    );

Map<String, dynamic> _$$MeasurementResultsDataBleToJson(
        _$MeasurementResultsDataBle instance) =>
    <String, dynamic>{
      'deviceName': instance.deviceName,
      'macAddress': instance.macAddress,
      'rssi': instance.rssi,
      'txPower': instance.txPower,
      'uuid': instance.uuid,
      'major': instance.major,
      'minor': instance.minor,
      'type': instance.$type,
    };

_$MeasurementResultsDataMagnetic _$$MeasurementResultsDataMagneticFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$MeasurementResultsDataMagnetic',
      json,
      ($checkedConvert) {
        final val = _$MeasurementResultsDataMagnetic(
          recordStartTime: $checkedConvert('recordStartTime', (v) => v as int),
          record: $checkedConvert(
              'record', (v) => const BlobConverter().fromJson(v)),
          $type: $checkedConvert('type', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'type'},
    );

Map<String, dynamic> _$$MeasurementResultsDataMagneticToJson(
        _$MeasurementResultsDataMagnetic instance) =>
    <String, dynamic>{
      'recordStartTime': instance.recordStartTime,
      'record': const BlobConverter().toJson(instance.record),
      'type': instance.$type,
    };
