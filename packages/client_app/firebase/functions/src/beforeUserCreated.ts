import { FieldValue, getFirestore } from "firebase-admin/firestore";
import * as identity from "firebase-functions/v2/identity";
import { CollectionPaths } from "./utils/collection_paths";
import { User } from "./models";
import { logger } from "firebase-functions/v2";

export const beforeUserCreated = identity.beforeUserCreated(async (event) => {
  logger.info("beforeUserCreated", event);

  const uid = event.data.uid;
  logger.info("uid", uid);

  const data: User = {
    createdAt: FieldValue.serverTimestamp(),
    updatedAt: FieldValue.serverTimestamp(),
    isDeleted: false,
  };

  await getFirestore() //
    .collection(CollectionPaths.USERS)
    .doc(uid)
    .set(data);
});
