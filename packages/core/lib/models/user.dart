import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:core/core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    @TimestampConverter() Timestamp? createdAt,
    @TimestampConverter() Timestamp? updatedAt,
    @Default(false) bool deleted,
  }) = _User;

  factory User.fromJson(Json json) => _$UserFromJson(json);

  static FromFirestore<User> get fromFirestore =>
      (snapshot, _) => User.fromJson(
            snapshot.data() ?? {},
          );

  static ToFirestore<User> get toFirestore =>
      (data, _) => TimestampConverter.updateServerTimestamp(
            data.toJson(),
          );
}
