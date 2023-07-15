import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:core/core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'users.freezed.dart';
part 'users.g.dart';

@freezed
class Users with _$Users {
  const factory Users({
    @TimestampConverter() Timestamp? createdAt,
    @TimestampConverter() Timestamp? updatedAt,
    @Default(false) bool deleted,
  }) = _Users;

  factory Users.fromJson(Json json) => _$UsersFromJson(json);

  static FromFirestore<Users> get fromFirestore =>
      (snapshot, _) => Users.fromJson(
            snapshot.data() ?? {},
          );

  static ToFirestore<Users> get toFirestore =>
      (data, _) => TimestampConverter.updateServerTimestamp(
            data.toJson(),
          );
}
