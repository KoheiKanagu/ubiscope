import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

class BlobConverter extends JsonConverter<Blob, dynamic> {
  const BlobConverter();

  @override
  Blob fromJson(dynamic json) {
    if (json is Blob) {
      return json;
    }

    throw Exception();
  }

  @override
  Blob toJson(Blob object) {
    return object;
  }
}
