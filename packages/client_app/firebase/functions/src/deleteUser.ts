import { auth, firestore } from "firebase-admin";
import { FieldValue } from "firebase-admin/firestore";
import { logger } from "firebase-functions/v1";
import functions from ".";
import { CollectionPaths } from "./utils/collection_paths";

export const deleteUser = functions().https.onCall(async (data, context) => {
  const uid = context.auth?.uid;
  if (!uid) {
    throw new Error("uid is not found");
  }

  logger.info(`uid: ${uid}`);

  await auth().deleteUser(uid);
  logger.info(`delete user: ${uid}`);

  const collection = firestore().collection(CollectionPaths.USERS);

  await firestore().runTransaction((transaction) => {
    transaction.update(
      collection.doc(uid), //
      {
        updatedAt: FieldValue.serverTimestamp(),
        deleted: true,
      }
    );
    return Promise.resolve();
  });
});
