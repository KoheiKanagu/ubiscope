import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:core/constants/collection_path.dart';
import 'package:core/core.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_providers.g.dart';

@riverpod
CollectionReference<User> userCollectionReference(
  UserCollectionReferenceRef ref,
) =>
    ref
        .watch(firebaseFirestoreProvider)
        .collection(CollectionPath.kUsers)
        .withConverter(
          fromFirestore: User.fromFirestore,
          toFirestore: User.toFirestore,
        );

@riverpod
Stream<DocumentSnapshot<User>> userDocumentSnapshot(
  UserDocumentSnapshotRef ref,
  String uid,
) =>
    ref.watch(userCollectionReferenceProvider).doc(uid).snapshots();

@riverpod
Future<User> userControllerAwait(
  UserControllerAwaitRef ref,
) {
  final completer = Completer<User>();
  final user = ref.watch(userControllerProvider).asData?.value.user;
  if (user != null) {
    completer.complete(user);
  }
  return completer.future;
}

@riverpod
class UserController extends _$UserController {
  @override
  AsyncValue<
      ({
        User user,
        DocumentSnapshot<User>? snapshot,
      })> build() {
    final uid = ref.watch(firebaseUserControllerProvider).asData?.value?.uid;

    if (uid == null) {
      logger.i('uid is null');
      return const AsyncValue.loading();
    }

    final snapshot = ref.watch(userDocumentSnapshotProvider(uid)).asData?.value;
    if (snapshot == null) {
      logger.i('snapshot is null');
      return const AsyncValue.loading();
    }

    final user = snapshot.data();
    if (user != null) {
      return AsyncValue.data(
        (
          user: user,
          snapshot: snapshot,
        ),
      );
    }

    return const AsyncValue.loading();
  }
}
