import { storage } from "firebase-admin";
import { https } from "firebase-functions/v2";
import { AuthData } from "firebase-functions/v2/tasks";
import { assertUserAuthenticatedAndApproved } from "./common";
import {
  PhotoTable,
  checkUserAccess,
  getHasuraUID,
  getPersonIdFromUser,
  photoTables,
  publicPhotoTables,
  updatePhotoTime,
} from "./hasura_interface";

const expiryWindowMillis = 1000 * 60 * 5;

export const deletePhoto = https.onCall({}, async (req) => {
  const { data, auth } = req;

  const { path, table, id, hasuraUID } = await _authenticateStorageRequest(
    data,
    auth,
    "delete"
  );

  console.log("Deleting photo", { table, id, hasuraUID });

  await storage().bucket("church-data-admin.appspot.com").file(path).delete();
  await updatePhotoTime(table as PhotoTable, id, null);

  return true;
});

export const getDownloadUrl = https.onCall({}, async (req) => {
  const { data, auth } = req;

  const { path, contentType } = await _authenticateStorageRequest(
    data,
    auth,
    "read"
  );

  return (
    await storage()
      .bucket("church-data-admin.appspot.com")
      .file(path)
      .getSignedUrl({
        expires: Date.now() + expiryWindowMillis,
        version: "v4",
        action: "read",
        contentType: contentType,
      })
  )[0];
});

export const getUploadUrl = https.onCall({}, async (req) => {
  const { data, auth } = req;

  const { path, contentType } = await _authenticateStorageRequest(
    data,
    auth,
    "write"
  );

  return (
    await storage()
      .bucket("church-data-admin.appspot.com")
      .file(path)
      .getSignedUrl({
        expires: Date.now() + expiryWindowMillis,
        version: "v4",
        action: "write",
        contentType: contentType,
      })
  )[0];
});

async function _authenticateStorageRequest(
  // eslint-disable-next-line @typescript-eslint/no-explicit-any
  data: any,
  context: AuthData | undefined,
  action: "write" | "read" | "delete"
): Promise<{
  path: string;
  contentType: string;
  id: string;
  table: string;
  hasuraUID: string;
}> {
  try {
    const currentUser = await assertUserAuthenticatedAndApproved(context);

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

    if (
      action != "delete" &&
      _contentType != null &&
      typeof _contentType !== "string"
    )
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

    console.log({ "currentUser.uid": currentUser.uid });

    const hasuraUID = (await getHasuraUID(currentUser.uid))!;

    console.log({ hasuraUID, table, id, action });

    const isReadingPublicPhoto =
      action == "read" && publicPhotoTables.find((t) => t == table);

    if (
      !isReadingPublicPhoto &&
      !(await checkUserAccess(
        table as PhotoTable,
        id,
        hasuraUID,
        action == "delete" ? "write" : action
      ))
    ) {
      throw new https.HttpsError(
        "not-found",
        `Object with id ${id} in table ${table} was not found`
      );
    }

    if (
      table == "persons" &&
      action == "write" &&
      id != (await getPersonIdFromUser(hasuraUID))
    ) {
      throw new https.HttpsError(
        "permission-denied",
        "You can only upload your own photo"
      );
    }

    const path =
      table == "users"
        ? "persons/" + (await getPersonIdFromUser(hasuraUID))!
        : table + "/" + id;

    return { path, contentType, table, id, hasuraUID };
  } catch (e) {
    console.error(e);
    console.dir(e, { depth: 4 });
    throw e;
  }
}
