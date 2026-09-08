import axios, { AxiosResponse } from "axios";
import { https } from "firebase-functions/v1";
import { hasuraAdminSecret, hasuraServer } from ".";

export async function checkUserApproved(uid: string): Promise<boolean> {
  try {
    const hasura_response = await makeGraphqlRequest({
      query: `
            query checkApproved($uid: uuid!) {
              authUsersData(where: { uid: { _eq: $uid } }, limit: 1) {
                permissions{
                  permission
                }
              }
            }
          `,
      variables: { uid },
      operationName: "checkApproved",
    });
    const permissions: Record<string, string>[] = hasura_response.data?.["data"]
      ?.["authUsersData"]?.[0]?.["permissions"];

    return (
      permissions.find(
        (o) => o?.["permission"]?.toLowerCase().replace("'", "") == "approved",
      ) != null
    );
  } catch (e) {
    console.error(e);
  }

  return false;
}

export async function getHasuraUID(
  firebaseAuthUID: string,
): Promise<string | null> {
  try {
    const hasura_response = await makeGraphqlRequest({
      query: `
            query getUserByFirebaseUID($firebaseAuthUID: String) {
              authUsersData(where: {authId: {_eq: $firebaseAuthUID}}, limit: 1) {
                uid
              }
            }
          `,
      variables: { firebaseAuthUID },
      operationName: "getUserByFirebaseUID",
    });
    const hasura_uid: string =
      hasura_response.data?.["data"]?.["authUsersData"]?.[0]?.["uid"] ?? null;

    return hasura_uid;
  } catch (e) {
    console.error(e);
  }

  return null;
}

export async function getPersonIdFromUser(
  hasuraUID: string,
): Promise<string | null> {
  try {
    const hasura_response = await makeGraphqlRequest({
      query: `
            query getPersonIdFromUser($hasuraUID: uuid = "") {
              authUsersData(where: {uid: {_eq: $hasuraUID}}) {
                person {
                  id
                }
              }
            }
          `,
      variables: { hasuraUID },
      operationName: "getPersonIdFromUser",
    });
    const hasura_uid: string =
      hasura_response.data?.["data"]?.["authUsersData"]?.[0]?.["person"]?.[
        "id"
      ] ?? null;

    return hasura_uid;
  } catch (e) {
    console.error(e);
  }

  return null;
}

export async function checkUserAccessToPerson(
  table: PhotoTable,
  id: string,
  hasuraUid: string,
): Promise<{ canRead: boolean; canWrite: boolean; personUid: string | null }> {
  try {
    if (table == "users") {
      return { canRead: true, canWrite: false, personUid: null };
    }

    const hasura_response = await makeGraphqlRequest({
      query: `
            query checkPermissions($uid: uuid!, $id: uuid!, $table: name, $anyEntityType: String) {
              authUsersPermissionsByEntityId(
                where: {
                  _and: [
                    { uid: { _eq: $uid } }
                    {
                      _or: [
                        {
                          _and: [
                            { table: { _eq: $table } }
                            { entityId: { _eq: $id } }
                          ]
                        }
                        {
                          _and: [
                            { entityType: { _eq: $anyEntityType } }
                            { entityId: { _isNull: true } }
                          ]
                        }
                      ]
                    }
                  ]
                }
              ) {
                allowEdit
              }
              personsByPk(id: $id) {
                uid
              }
            }
          `,
      variables: {
        id,
        uid: hasuraUid,
        table,
        anyEntityType: "any",
      },
      operationName: "checkPermissions",
    });

    const exists: Array<{ allowEdit: boolean }> =
      hasura_response.data?.["data"]?.["authUsersPermissionsByEntityId"] ?? [];
    const personUid = hasura_response.data?.["data"]?.["personsByPk"]?.["uid"];

    const canRead = exists.length > 0;
    const canWrite = !!exists?.[0]?.allowEdit;

    return { canRead, canWrite, personUid };
  } catch (e) {
    console.error(e);
  }

  return { canRead: false, canWrite: false, personUid: null };
}

export async function upsertUser(user: {
  email: string;
  name: string;
  uid: string;
}): Promise<{ person_id: string; hasura_uid: string } | null> {
  try {
    const hasura_response = await makeGraphqlRequest({
      query: `
            mutation addUser(
              $email: String
              $name: String
              $firebaseAuthUID: String
            ) {
              insertAuthUsersData(
                objects: {
                  email: $email
                  authId: $firebaseAuthUID
                  name: $name,
                  person: {
                    data: { name: $name, isServant: true, isStudent: false },
                    onConflict: { constraint: persons_uid_key, updateColumns: [isServant, isStudent] },
                  }
                }
                onConflict: {constraint: users_data_email_key, updateColumns: [authId]}
              ) {
                returning {
                  uid
                  person {
                    id
                  }
                }
              }
            }
          `,
      variables: {
        name: user.name,
        email: user.email,
        firebaseAuthUID: user.uid,
      },
      operationName: "addUser",
    });

    const rslt = hasura_response.data?.["data"]?.["insertAuthUsersData"]?.[
      "returning"
    ]?.[0];

    return rslt
      ? {
        hasura_uid: rslt?.["uid"],
        person_id: rslt?.["person"]?.["id"],
      }
      : null;
  } catch (e) {
    console.error(e);
  }

  return null;
}

export async function insertAllPermissionsForFirstUser(
  hasuraUID: string,
): Promise<string[]> {
  try {
    const hasura_response = await makeGraphqlRequest({
      query: `
            mutation grantFirstUserAllPermissions($uid: uuid!) {
              authGrantFirstUserAllPermissions(args: { user_uid: $uid }) {
                permission
              }
            }
          `,
      variables: { uid: hasuraUID },
      operationName: "grantFirstUserAllPermissions",
    });

    if (hasura_response.data?.["errors"]) {
      throw new https.HttpsError(
        "internal",
        "Failed to grant first user permissions",
        hasura_response.data?.["errors"],
      );
    }

    const granted: { permission: string }[] =
      hasura_response.data?.["data"]?.["authGrantFirstUserAllPermissions"] ??
        [];

    return granted.map((p) => p.permission);
  } catch (e) {
    console.error(e);
    throw e;
  }
}

export async function unapproveUser(hasuraUID: string): Promise<void> {
  try {
    await makeGraphqlRequest({
      query: `
            mutation unapproveUser($uid: uuid!) {
  deleteAuthUsersPermissions(where: {_and: [{uid: {_eq: $uid}}, {permission: {_eq: "approved"}}]}) {
    returning {
      uid
    }
  }
}
          `,
      variables: {
        uid: hasuraUID,
      },
      operationName: "unapproveUser",
    });
  } catch (e) {
    console.error(e);
  }
}

export async function insertFcmToken(
  hasuraUID: string,
  token: string,
): Promise<void> {
  try {
    const hasura_response = await makeGraphqlRequest({
      query: `
            mutation insertFcmToken($uid: uuid!, $token: String!) {
              insertUsersFcmTokensOne(
                object: { uid: $uid, token: $token }
                onConflict: { constraint: users_fcm_tokens_pkey, updateColumns: [] }
              ) {
                uid
                token
              }
            }
          `,
      variables: {
        uid: hasuraUID,
        token,
      },
      operationName: "insertFcmToken",
    });

    if (hasura_response.data?.["errors"]) {
      throw new https.HttpsError(
        "internal",
        "Failed to register FCM token",
        hasura_response.data?.["errors"],
      );
    }
  } catch (e) {
    console.error(e);
    throw e;
  }
}

export async function getFcmTokensForPermission(
  permission: string,
): Promise<string[]> {
  const hasura_response = await makeGraphqlRequest({
    query: `
            query getFcmTokensForPermission($permission: String!) {
              authUsersData(where: { permissions: { permission: { _eq: $permission } } }) {
                fcmTokens {
                  token
                }
              }
            }
          `,
    variables: { permission },
    operationName: "getFcmTokensForPermission",
  });

  if (hasura_response.data?.["errors"]) {
    throw new https.HttpsError(
      "internal",
      "Failed to fetch FCM tokens for permission",
      hasura_response.data?.["errors"],
    );
  }

  const users: { fcmTokens: { token: string }[] }[] =
    hasura_response.data?.["data"]?.["authUsersData"] ?? [];

  return [...new Set(users.flatMap((u) => u.fcmTokens.map((t) => t.token)))];
}

export async function updatePhotoTime(
  table: PhotoTable,
  id: string,
  time: Date | null,
): Promise<void> {
  try {
    const op_name = `update${
      table == "users"
        ? "AuthUsersData"
        : table.replace(RegExp("^[a-z]"), (s) => s.toUpperCase())
    }ByPk`;
    const hasura_response = await makeGraphqlRequest({
      query: `
            mutation updatePhotoTime($id: uuid!, $photoUpdatedAt: timestamptz) {
              ${op_name}(pkColumns: {${
        table == "users" ? "u" : ""
      }id: $id}, _set: {photoUpdatedAt: $photoUpdatedAt}) {
                ${table == "users" ? "u" : ""}id
              }
            }
          `,
      variables: {
        id,
        photoUpdatedAt: time?.toISOString(),
      },
      operationName: "updatePhotoTime",
    });

    console.dir(hasura_response.data, { depth: 4 });

    if (
      (hasura_response.data?.["data"]?.[op_name]?.[
        `${table == "users" ? "u" : ""}id`
      ] ?? null) != id
    ) {
      throw new https.HttpsError(
        "not-found",
        `Object ${id} was not found in ${table}`,
        hasura_response.data?.["errors"],
      );
    }
  } catch (e) {
    console.error(e);
    throw e;
  }
}

export async function updatePhotoBlurHash(
  table: PhotoTable,
  id: string,
  blurhash: string,
): Promise<void> {
  try {
    const op_name = `update${
      table == "users"
        ? "AuthUsersData"
        : table.replace(RegExp("^[a-z]"), (s) => s.toUpperCase())
    }ByPk`;
    const hasura_response = await makeGraphqlRequest({
      query: `
            mutation updatePhotoBlurHash($id: uuid!, $blurhash: String) {
              ${op_name}(pkColumns: {${
        table == "users" ? "u" : ""
      }id: $id}, _set: {blurhash: $blurhash}) {
                ${table == "users" ? "u" : ""}id
              }
            }
          `,
      variables: {
        id,
        blurhash: blurhash,
      },
      operationName: "updatePhotoBlurHash",
    });

    if (
      (hasura_response.data?.["data"]?.[op_name]?.[
        `${table == "users" ? "u" : ""}id`
      ] ?? null) != id
    ) {
      throw new https.HttpsError(
        "not-found",
        `Object ${id} was not found in ${table}`,
        hasura_response.data?.["errors"],
      );
    }
  } catch (e) {
    console.error(e);
    throw e;
  }
}

export const publicPhotoTables = [
  "areas",
  "streets",
  "services",
  "users",
] as const;
export const photoTables = [
  ...publicPhotoTables,
  "stores",
  "families",
  "groups",
  "classes",
  "persons",
] as const;
export type PhotoTable = (typeof photoTables)[number];

export async function makeGraphqlRequest({
  query,
  variables,
  operationName,
  asUser,
  asRole,
}: {
  query: string;
  variables: object;
  operationName?: string;
  asUser?: string;
  asRole?: string;
}): Promise<AxiosResponse> {
  return axios.post(
    hasuraServer.value(),
    JSON.stringify({
      query,
      variables,
      operationName,
    }),
    {
      method: "POST",
      headers: {
        "content-type": "application/json",
        "x-hasura-admin-secret": hasuraAdminSecret.value(),
        "x-hasura-role": asRole ?? "admin",
        ...(asUser ? { "x-hasura-user-id": asUser } : {}),
      },
    },
  );
}
