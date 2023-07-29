// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, cast_nullable_to_non_nullable, lines_longer_than_80_chars

part of 'measurement_point.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MeasurementPoint _$$_MeasurementPointFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_MeasurementPoint',
      json,
      ($checkedConvert) {
        final val = _$_MeasurementPoint(
          createdAt: $checkedConvert(
              'createdAt', (v) => const TimestampConverter().fromJson(v)),
          updatedAt: $checkedConvert(
              'updatedAt', (v) => const TimestampConverter().fromJson(v)),
          deleted: $checkedConvert('deleted', (v) => v as bool? ?? false),
          createdBy: $checkedConvert('createdBy', (v) => v as String),
          location: $checkedConvert(
              'location', (v) => const GeoPointConverter().fromJson(v)),
          level: $checkedConvert('level', (v) => v as String),
          measuredTypes: $checkedConvert(
              'measuredTypes',
              (v) =>
                  (v as List<dynamic>?)?.map((e) => e as String).toList() ??
                  const []),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_MeasurementPointToJson(_$_MeasurementPoint instance) =>
    <String, dynamic>{
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
      'updatedAt': const TimestampConverter().toJson(instance.updatedAt),
      'deleted': instance.deleted,
      'createdBy': instance.createdBy,
      'location': const GeoPointConverter().toJson(instance.location),
      'level': instance.level,
      'measuredTypes': instance.measuredTypes,
    };
