import { FieldValue, getFirestore } from "firebase-admin/firestore";
import { logger } from "firebase-functions/v1";
import { User } from "./models";
import { CollectionPaths } from "./utils/collection_paths";
import functions from ".";

export const onCreateAuthUser = functions()
  .auth.user()
  .onCreate(async (user, context) => {
    logger.debug("uid", user.uid);

    const eventAgeMs = Date.now() - Date.parse(context.timestamp);
    const eventMaxAgeMs = 1000 * 60 * 3; // 3分
    if (eventAgeMs > eventMaxAgeMs) {
      logger.error("Event is too old to process.");
      return;
    }

    const firestore = getFirestore();

    const data: User = {
      createdAt: FieldValue.serverTimestamp(),
      updatedAt: FieldValue.serverTimestamp(),
      isDeleted: false,
    };

    await firestore
      .collection(CollectionPaths.USERS)
      .doc(user.uid)
      .create(data)
      .catch((error) => {
        logger.warn(error);
      });
  });
