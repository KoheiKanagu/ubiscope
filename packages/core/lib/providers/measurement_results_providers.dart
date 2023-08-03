import 'package:clock/clock.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:core/constants/collection_path.dart';
import 'package:core/core.dart';
import 'package:core/models/measurement_results.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

part 'measurement_results_providers.g.dart';

@riverpod
CollectionReference<MeasurementResults> measurementResultsCollectionReference(
  MeasurementResultsCollectionReferenceRef ref,
) =>
    ref
        .watch(
          firebaseFirestoreProvider,
        )
        .collection(CollectionPath.kMeasurementResults)
        .withConverter(
          fromFirestore: MeasurementResults.fromFirestore,
          toFirestore: MeasurementResults.toFirestore,
        );

@riverpod
AggregateQuery measurementResultsAggregateQuery(
  MeasurementResultsAggregateQueryRef ref, {
  required String datasetId,
  required MeasurementType type,
}) =>
    ref
        .watch(measurementResultsCollectionReferenceProvider)
        .where('deleted', isEqualTo: false)
        .where('datasetId', isEqualTo: datasetId)
        .where('measuredBy', isEqualTo: ref.watch(firebaseUserUidProvider))
        .where('data.type', isEqualTo: type.name)
        .count();

@riverpod
Future<AggregateQuerySnapshot> measurementResultsAggregateQuerySnapshot(
  MeasurementResultsAggregateQuerySnapshotRef ref, {
  required String datasetId,
  required MeasurementType type,
}) =>
    ref
        .watch(
          measurementResultsAggregateQueryProvider(
            datasetId: datasetId,
            type: type,
          ),
        )
        .get();

@riverpod
Future<QuerySnapshot<MeasurementResults>> measurementResultsRecent(
  MeasurementResultsRecentRef ref, {
  required String datasetId,
  required MeasurementType type,
}) =>
    ref
        .watch(measurementResultsCollectionReferenceProvider)
        .where('deleted', isEqualTo: false)
        .where('datasetId', isEqualTo: datasetId)
        .where('measuredBy', isEqualTo: ref.watch(firebaseUserUidProvider))
        .where('data.type', isEqualTo: type.name)
        .orderBy('measuredAt', descending: true)
        .limit(3)
        .get();

@riverpod
MeasurementResultsController measurementResultsController(
  MeasurementResultsControllerRef ref,
) =>
    MeasurementResultsController(ref);

class MeasurementResultsController {
  MeasurementResultsController(this.ref);

  final MeasurementResultsControllerRef ref;

  Future<void> add({
    required String measurementPointId,
    required String datasetId,
    required Iterable<MeasurementResultsData> data,
  }) async {
    final uid = ref.read(firebaseUserUidProvider);
    if (uid == null) {
      throw Exception('User is not logged in');
    }

    if (data.isEmpty) {
      logger.i('No data to add');
      return;
    }

    final collection = ref.read(measurementResultsCollectionReferenceProvider);
    final now = clock.now();
    final scanId = const Uuid().v4();

    await Future.wait(
      data.map(
        (e) => collection.add(
          MeasurementResults(
            datasetId: datasetId,
            measuredAt: Timestamp.fromDate(now),
            measuredBy: uid,
            measurementPointId: measurementPointId,
            scanId: scanId,
            data: e,
          ),
        ),
      ),
    );

    /// 計測済みのタイプを追加
    await ref.read(measurementPointControllerProvider).addMeasuredType(
          measurementPointId,
          type: data.first.type,
          datasetId: datasetId,
        );
  }
}
