import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:core/models/measurement_point.dart';
import 'package:geoflutterfire_plus/geoflutterfire_plus.dart';
// ignore: implementation_imports
import 'package:geoflutterfire_plus/src/math.dart' as geo_math;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'geohash_providers.g.dart';

@riverpod
Stream<QuerySnapshot<MeasurementPoint>> _geohashMeasurementPointSnapshotCache(
  _GeohashMeasurementPointSnapshotCacheRef ref,
  Query<MeasurementPoint> query,
) {
  return query.snapshots();
}

@riverpod
List<QueryDocumentSnapshot<MeasurementPoint>> geohashMeasurementPointSnapshots(
  GeohashMeasurementPointSnapshotsRef ref, {
  required Query<MeasurementPoint> baseQuery,
  required String? level,
  required String? levelShort,
  required GeoPoint center,
  required double radiusKm,
}) {
  final digit = geo_math.geohashDigitsFromRadius(radiusKm);
  final centerGeohash = GeoFirePoint(center).geohash.substring(0, digit);

  final geohashes = neighborGeohashesOf(
    geohash: centerGeohash,
  );

  final geohashFilters = [
    ...geohashes,
    centerGeohash,
  ]
      .map(
        (e) => Filter.and(
          Filter('location.geohash', isGreaterThanOrEqualTo: e),
          Filter('location.geohash', isLessThanOrEqualTo: '$e{'),
        ),
      )
      .toList();

  final query = baseQuery.where(
    Filter.and(
      Filter.or(
        level == null
            ? Filter('location.level', isNull: true)
            : Filter('location.level', isEqualTo: level),
        levelShort == null
            ? Filter('location.levelShort', isNull: true)
            : Filter('location.levelShort', isEqualTo: levelShort),
      ),
      Filter.or(
        geohashFilters[0],
        geohashFilters[1],
        geohashFilters[2],
        geohashFilters[3],
        geohashFilters[4],
        geohashFilters[5],
        geohashFilters[6],
        geohashFilters[7],
        geohashFilters[8],
      ),
    ),
  );

  final docs = ref.watch(
    _geohashMeasurementPointSnapshotCacheProvider(query)
        .select((value) => value.asData?.value.docs ?? []),
  );
  return docs;
}
