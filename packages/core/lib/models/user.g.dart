// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: require_trailing_commas, non_constant_identifier_names, cast_nullable_to_non_nullable, lines_longer_than_80_chars

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_User',
      json,
      ($checkedConvert) {
        final val = _$_User(
          createdAt: $checkedConvert(
              'createdAt', (v) => const TimestampConverter().fromJson(v)),
          updatedAt: $checkedConvert(
              'updatedAt', (v) => const TimestampConverter().fromJson(v)),
          deleted: $checkedConvert('deleted', (v) => v as bool? ?? false),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
      'updatedAt': const TimestampConverter().toJson(instance.updatedAt),
      'deleted': instance.deleted,
    };