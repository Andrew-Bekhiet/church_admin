import { auth, storage } from "firebase-admin";
import { https, runWith } from "firebase-functions/v1";
import {
  checkUserAccess,
  checkUserApproved,
  getHasuraUID,
  PhotoTable,
  photoTables,
} from "./hasura_interface";

export const getDownloadUrl = runWith({
  allowInvalidAppCheckToken: false,
})
  .region("europe-west6")
  .https.onCall(async (data, context) => {
    return await _getSignedUrl(data, context, "read");
  });

export const getUploadUrl = runWith({
  allowInvalidAppCheckToken: false,
})
  .region("europe-west6")
  .https.onCall(async (data, context) => {
    return await _getSignedUrl(data, context, "write");
  });

async function _getSignedUrl(
  // eslint-disable-next-line @typescript-eslint/no-explicit-any
  data: any,
  context: https.CallableContext,
  action: "write" | "read"
): Promise<string> {
  try {
    if (
      (!context.app && !process.env.FUNCTIONS_EMULATOR) ||
      !context.auth ||
      !(await checkUserApproved(context.auth.token["x-hasura-user-id"]))
    )
      throw new https.HttpsError("unauthenticated", "");

    const currentUser = await auth().getUser(context.auth.uid);

    const { table: _table, id: _id, contentType: _contentType } = data;
    if (_table == null || _id == null)
      throw new https.HttpsError(
        "invalid-argument",
        "'table' and 'id' parameters must be supplied"
      );

    if (typeof _table !== "string")
      throw new https.HttpsError("invalid-argument", "'table' must be string");

    if (typeof _id !== "string")
      throw new https.HttpsError("invalid-argument", "'id' must be string");

    if (_contentType != null && typeof _contentType !== "string")
      throw new https.HttpsError(
        "invalid-argument",
        "'contentType' must be string"
      );

    if (!photoTables.find((t) => t == _table))
      throw new https.HttpsError(
        "invalid-argument",
        "'table' must be one of " + JSON.stringify(photoTables)
      );

    const {
      _table: table,
      _id: id,
      _contentType: contentType,
    } = { _table, _id, _contentType };

    if (
      !(await checkUserAccess(
        table as PhotoTable,
        id,
        (await getHasuraUID(currentUser.uid))!,
        action
      ))
    )
      throw new https.HttpsError(
        "not-found",
        `Object with id ${id} in table ${table} was not found`
      );

    return (
      await storage()
        .bucket("church-data-admin.appspot.com")
        .file(table + "/" + id)
        .getSignedUrl({
          expires: Date.now() + 1000 * 60,
          version: "v4",
          action,
          contentType,
        })
    )[0];
  } catch (e) {
    console.error(e);
    console.dir(e, { depth: 4 });
    throw e;
  }
}
