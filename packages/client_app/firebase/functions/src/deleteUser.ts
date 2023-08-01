import { auth, firestore } from "firebase-admin";
import { FieldValue } from "firebase-admin/firestore";
import { logger } from "firebase-functions/v1";
import functions from "./utils/baseFunctions";
import { CollectionPaths } from "./utils/collection_paths";

export const deleteUser = functions().https.onCall(async (data, context) => {
  const uid = context.auth?.uid;
  if (!uid) {
    throw new Error("undefined uid");
  }

  logger.info("will delete user is", uid);

  await auth().deleteUser(uid);
  logger.info("deleted user");

  const collection = firestore().collection(CollectionPaths.USERS);

  await firestore().runTransaction((transaction) => {
    transaction.update(
      collection.doc(uid),
      {
        updatedAt: FieldValue.serverTimestamp(),
        isDeleted: true,
      } //
    );
    return Promise.resolve();
  });
});
