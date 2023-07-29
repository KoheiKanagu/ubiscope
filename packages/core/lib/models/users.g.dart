// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, cast_nullable_to_non_nullable, lines_longer_than_80_chars

part of 'users.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Users _$$_UsersFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_Users',
      json,
      ($checkedConvert) {
        final val = _$_Users(
          createdAt: $checkedConvert(
              'createdAt', (v) => const TimestampConverter().fromJson(v)),
          updatedAt: $checkedConvert(
              'updatedAt', (v) => const TimestampConverter().fromJson(v)),
          deleted: $checkedConvert('deleted', (v) => v as bool? ?? false),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_UsersToJson(_$_Users instance) => <String, dynamic>{
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
      'updatedAt': const TimestampConverter().toJson(instance.updatedAt),
      'deleted': instance.deleted,
    };
