import * as admin from "firebase-admin";
import { initializeFirestore } from "firebase-admin/firestore";
import { setGlobalOptions } from "firebase-functions/v2";
import * as f from "firebase-functions";

const app = admin.initializeApp();

initializeFirestore(app, {
  preferRest: true,
});

setGlobalOptions({
  region: "asia-northeast1",
  minInstances: 0,
  timeoutSeconds: 10,
  memory: "256MiB",
  enforceAppCheck: true,
});

const functions = () =>
  f
    .runWith({
      memory: "256MB",
      timeoutSeconds: 10,
      failurePolicy: true,
      enforceAppCheck: true,
    })
    .region("asia-northeast1");

export default functions;

export { deleteUser } from "./deleteUser";
export { beforeUserCreated } from "./beforeUserCreated";
