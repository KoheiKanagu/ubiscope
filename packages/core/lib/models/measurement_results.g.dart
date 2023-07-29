// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: require_trailing_commas, non_constant_identifier_names, cast_nullable_to_non_nullable, lines_longer_than_80_chars

part of 'measurement_results.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MeasurementResults _$$_MeasurementResultsFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_MeasurementResults',
      json,
      ($checkedConvert) {
        final val = _$_MeasurementResults(
          createdAt: $checkedConvert(
              'createdAt', (v) => const TimestampConverter().fromJson(v)),
          updatedAt: $checkedConvert(
              'updatedAt', (v) => const TimestampConverter().fromJson(v)),
          deleted: $checkedConvert('deleted', (v) => v as bool? ?? false),
          measuredAt: $checkedConvert(
              'measuredAt', (v) => const TimestampConverter().fromJson(v)),
          measuredBy: $checkedConvert('measuredBy', (v) => v as String),
          measurementPointId:
              $checkedConvert('measurementPointId', (v) => v as String),
          scanId: $checkedConvert('scanId', (v) => v as String),
          data: $checkedConvert(
              'data',
              (v) =>
                  MeasurementResultsData.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_MeasurementResultsToJson(
        _$_MeasurementResults instance) =>
    <String, dynamic>{
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
      'updatedAt': const TimestampConverter().toJson(instance.updatedAt),
      'deleted': instance.deleted,
      'measuredAt': const TimestampConverter().toJson(instance.measuredAt),
      'measuredBy': instance.measuredBy,
      'measurementPointId': instance.measurementPointId,
      'scanId': instance.scanId,
      'data': instance.data.toJson(),
    };
