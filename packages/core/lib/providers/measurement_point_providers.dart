import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:core/constants/collection_path.dart';
import 'package:core/core.dart';
import 'package:core/models/measurement_point.dart';
import 'package:geoflutterfire_plus/geoflutterfire_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'measurement_point_providers.g.dart';

@riverpod
CollectionReference<MeasurementPoint> measurementPointCollectionReference(
  MeasurementPointCollectionReferenceRef ref,
) =>
    ref
        .watch(firebaseFirestoreProvider)
        .collection(CollectionPath.kMeasurementPoints)
        .withConverter(
          fromFirestore: MeasurementPoint.fromFirestore,
          toFirestore: MeasurementPoint.toFirestore,
        );

@riverpod
Stream<DocumentSnapshot<MeasurementPoint>> measurementPointSnapshots(
  MeasurementPointSnapshotsRef ref,
  String documentId,
) =>
    ref
        .watch(measurementPointCollectionReferenceProvider)
        .doc(documentId)
        .snapshots();

@riverpod
List<QueryDocumentSnapshot<MeasurementPoint>> measurementPointAroundSnapshots(
  MeasurementPointAroundSnapshotsRef ref,
) {
  final uid = ref.watch(firebaseUserUidProvider);
  if (uid == null) {
    logger.w('uid is null');
    return [];
  }

  final aimedPoint = ref.watch(mapsAimedPointControllerProvider);
  if (aimedPoint == null) {
    return [];
  }

  final baseQuery = ref
      .watch(measurementPointCollectionReferenceProvider)
      .where('deleted', isEqualTo: false)
      .where('createdBy', isEqualTo: uid);

  return ref.watch(
    geohashMeasurementPointSnapshotsProvider(
      baseQuery: baseQuery,
      level: aimedPoint.level,
      levelShort: aimedPoint.levelShort,
      center: aimedPoint.point,
      radiusKm: aimedPoint.radiusKm,
    ),
  );
}

@riverpod
List<MeasurementPoint> measurementPointAround(
  MeasurementPointAroundRef ref,
) {
  return ref
      .watch(measurementPointAroundSnapshotsProvider)
      .map((e) => e.data())
      .toList();
}

@riverpod
MeasurementPointController measurementPointController(
  MeasurementPointControllerRef ref,
) {
  return MeasurementPointController(ref);
}

class MeasurementPointController {
  MeasurementPointController(
    this.ref,
  );

  final MeasurementPointControllerRef ref;

  Future<void> addAimedPoint() async {
    final uid = ref.read(firebaseUserUidProvider);
    if (uid == null) {
      logger.w('uid is null');
      return;
    }

    final aimedPoint = ref.read(mapsAimedPointControllerProvider);
    if (aimedPoint == null) {
      logger.w('aimedPoint is null');
      return;
    }

    final point = GeoFirePoint(aimedPoint.point);

    final data = MeasurementPoint(
      createdBy: uid,
      location: (
        level: aimedPoint.level,
        levelShort: aimedPoint.levelShort,
        geopoint: point.geopoint,
        geohash: point.geohash,
      ),
    );

    await ref.read(measurementPointCollectionReferenceProvider).add(data);
  }

  Future<void> delete(String documentId) async {
    await ref
        .read(measurementPointCollectionReferenceProvider)
        .doc(documentId)
        .update({
      'updatedAt': FieldValue.serverTimestamp(),
      'deleted': true,
    });
  }

  Future<void> addMeasuredType(
    String measurementPointId, {
    required MeasurementType type,
    required String datasetId,
  }) {
    return ref
        .read(measurementPointCollectionReferenceProvider)
        .doc(measurementPointId)
        .update({
      'measuredTypes.${type.name}': datasetId,
    });
  }

  Future<void> deleteMeasuredType(
    String measurementPointId, {
    required MeasurementType type,
  }) {
    return ref
        .read(measurementPointCollectionReferenceProvider)
        .doc(measurementPointId)
        .update({
      'updatedAt': FieldValue.serverTimestamp(),
      'measuredTypes.${type.name}': null,
    });
  }
}
