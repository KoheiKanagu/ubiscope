// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: require_trailing_commas, non_constant_identifier_names, cast_nullable_to_non_nullable, lines_longer_than_80_chars, unnecessary_null_checks, strict_raw_type

part of 'measurement_point.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MeasurementPointImpl _$$MeasurementPointImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$MeasurementPointImpl',
      json,
      ($checkedConvert) {
        final val = _$MeasurementPointImpl(
          createdAt: $checkedConvert(
              'createdAt', (v) => const TimestampConverter().fromJson(v)),
          updatedAt: $checkedConvert(
              'updatedAt', (v) => const TimestampConverter().fromJson(v)),
          deleted: $checkedConvert('deleted', (v) => v as bool? ?? false),
          createdBy: $checkedConvert('createdBy', (v) => v as String),
          location: $checkedConvert(
              'location',
              (v) => _$recordConvert(
                    v,
                    ($jsonValue) => (
                      geohash: $jsonValue['geohash'] as String,
                      geopoint: const GeoPointConverter()
                          .fromJson($jsonValue['geopoint']),
                      level: $jsonValue['level'] as String?,
                      levelShort: $jsonValue['levelShort'] as String?,
                    ),
                  )),
          measuredTypes: $checkedConvert(
              'measuredTypes',
              (v) =>
                  (v as Map<String, dynamic>?)?.map(
                    (k, e) => MapEntry(
                        $enumDecode(_$MeasurementTypeEnumMap, k), e as String?),
                  ) ??
                  const {}),
        );
        return val;
      },
    );

Map<String, dynamic> _$$MeasurementPointImplToJson(
        _$MeasurementPointImpl instance) =>
    <String, dynamic>{
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
      'updatedAt': const TimestampConverter().toJson(instance.updatedAt),
      'deleted': instance.deleted,
      'createdBy': instance.createdBy,
      'location': {
        'geohash': instance.location.geohash,
        'geopoint':
            const GeoPointConverter().toJson(instance.location.geopoint),
        'level': instance.location.level,
        'levelShort': instance.location.levelShort,
      },
      'measuredTypes': instance.measuredTypes
          .map((k, e) => MapEntry(_$MeasurementTypeEnumMap[k]!, e)),
    };

$Rec _$recordConvert<$Rec>(
  Object? value,
  $Rec Function(Map) convert,
) =>
    convert(value as Map<String, dynamic>);

const _$MeasurementTypeEnumMap = {
  MeasurementType.unknown: 'unknown',
  MeasurementType.wifi: 'wifi',
  MeasurementType.ibeacon: 'ibeacon',
  MeasurementType.magnetic: 'magnetic',
};
