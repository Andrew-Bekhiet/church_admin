import axios, { AxiosResponse } from "axios";
import { https } from "firebase-functions/v1";
import { hasuraAdminSecret, hasuraServer } from "./secrets";

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

export type UserData = {
  hasura_uid: string;
  person_id: string | null;
  auth_id: string | null;
};

function dataOrThrow(hasura_response: AxiosResponse) {
  const errors = hasura_response.data?.["errors"];

  if (errors) {
    throw new Error(`Hasura rejected the request: ${JSON.stringify(errors)}`);
  }

  return hasura_response.data?.["data"] ?? {};
}

function canonicalEmail(email: string): string {
  return email.trim().toLowerCase();
}

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
      dataOrThrow(hasura_response)["authUsersData"]?.[0]?.["uid"] ?? null;

    return hasura_uid;
  } catch (e) {
    console.error(e);
  }

  return null;
}

export async function getAllAvailablePermissions(): Promise<string[]> {
  try {
    const hasura_response = await makeGraphqlRequest({
      query: `
            query getAllAvailablePermissions {
              authPermissions {
                name
              }
            }
          `,
      variables: {},
      operationName: "getAllAvailablePermissions",
    });
    const permissions: { name: string }[] =
      dataOrThrow(hasura_response)["authPermissions"] ?? [];

    return permissions.map((permission) => permission.name);
  } catch (e) {
    console.error(e);

    return [];
  }
}

export async function createAdminUser({
  authId,
  email,
  permissions,
}: {
  authId: string;
  email: string;
  permissions: string[];
}): Promise<{ hasuraUid: string } | null> {
  try {
    const canonical = canonicalEmail(email);
    const hasura_response = await makeGraphqlRequest({
      query: `
            mutation createAdminUser($authId: String!, $email: String!, $name: String!, $permissions: [AuthUsersPermissionsInsertInput!]!) {
              insertAuthUsersDataOne(
                object: {
                  authId: $authId
                  email: $email
                  name: $name
                  permissions: { data: $permissions }
                }
              ) {
                uid
              }
            }
          `,
      variables: {
        authId,
        email: canonical,
        name: canonical,
        permissions: permissions.map((permission) => ({ permission })),
      },
      operationName: "createAdminUser",
    });
    const hasuraUid: string | null =
      dataOrThrow(hasura_response)["insertAuthUsersDataOne"]?.["uid"] ?? null;

    return hasuraUid ? { hasuraUid } : null;
  } catch (e) {
    console.error(e);
  }

  return null;
}

export async function createPerson({
  uid,
  name,
  isServant = true,
}: {
  uid: string;
  name: string;
  isServant?: boolean;
}): Promise<{ hasuraUid: string } | null> {
  try {
    const hasura_response = await makeGraphqlRequest({
      query: `
            mutation createPerson($uid: uuid!, $name: String!, $isServant: Boolean!) {
              insertPersonsOne(
                object: { uid: $uid, name: $name, isServant: $isServant }
              ) {
                id
              }
            }
          `,
      variables: { uid, name, isServant },
      operationName: "createPerson",
    });
    const hasuraUid: string | null =
      dataOrThrow(hasura_response)["insertPersonsOne"]?.["id"] ?? null;

    return hasuraUid ? { hasuraUid } : null;
  } catch (e) {
    console.error(e);
  }

  return null;
}

export async function getUserPermissionsByFirebaseUID(
  firebaseAuthUID: string,
): Promise<string[]> {
  try {
    const hasura_response = await makeGraphqlRequest({
      query: `
            query getUserPermissionsByFirebaseUID($firebaseAuthUID: String!) {
              authUsersData(where: {authId: {_eq: $firebaseAuthUID}}, limit: 1) {
                permissions {
                  permission
                }
              }
            }
          `,
      variables: { firebaseAuthUID },
      operationName: "getUserPermissionsByFirebaseUID",
    });
    const permissions: { permission: string }[] = dataOrThrow(
      hasura_response,
    )["authUsersData"]?.[0]?.["permissions"] ?? [];

    return permissions.map((permission) => permission.permission);
  } catch (e) {
    console.error(e);

    return [];
  }
}

export async function getFirebaseAuthUIDsWithHasuraUsers(
  firebaseAuthUIDs: string[],
): Promise<Set<string>> {
  if (firebaseAuthUIDs.length === 0) {
    return new Set();
  }

  try {
    const hasura_response = await makeGraphqlRequest({
      query: `
            query getFirebaseAuthUIDsWithHasuraUsers($firebaseAuthUIDs: [String!]!) {
              authUsersData(where: {authId: {_in: $firebaseAuthUIDs}}) {
                authId
              }
            }
          `,
      variables: { firebaseAuthUIDs },
      operationName: "getFirebaseAuthUIDsWithHasuraUsers",
    });
    const users: { authId: string | null }[] = dataOrThrow(
      hasura_response,
    )["authUsersData"] ?? [];

    return new Set(
      users
        .map((user) => user.authId)
        .filter((authId): authId is string => authId != null),
    );
  } catch (e) {
    console.error(e);

    return new Set(firebaseAuthUIDs);
  }
}

export async function claimInvitation({
  codeDigest,
  firebaseAuthUID,
  email,
}: {
  codeDigest: string;
  firebaseAuthUID: string;
  email: string;
}): Promise<{ hasuraUid: string } | null> {
  try {
    const hasura_response = await makeGraphqlRequest({
      query: `
            mutation claimInvitation(
              $codeDigest: String!
              $firebaseAuthUID: String!
              $email: String!
            ) {
              authClaimInvitation(
                args: {
                  p_code_digest: $codeDigest
                  p_auth_id: $firebaseAuthUID
                  p_email: $email
                }
              ) {
                uid
              }
            }
          `,
      variables: { codeDigest, firebaseAuthUID, email: canonicalEmail(email) },
      operationName: "claimInvitation",
    });

    const newUser = dataOrThrow(hasura_response)["authClaimInvitation"]?.[0];
    if (newUser?.uid) {
      return { hasuraUid: newUser.uid };
    }
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

export async function findUserDataByEmail(
  email: string,
): Promise<UserData | null> {
  const hasura_response = await makeGraphqlRequest({
    query: `
          query findSeededUserByEmail($email: String!) {
            authUsersData(where: { email: { _eq: $email } }, limit: 1) {
              uid
              authId
              person {
                id
              }
            }
          }
        `,
    variables: { email: canonicalEmail(email) },
    operationName: "findSeededUserByEmail",
  });

  const rslt = dataOrThrow(hasura_response)["authUsersData"]?.[0];

  return rslt
    ? {
      hasura_uid: rslt["uid"],
      person_id: rslt["person"]?.["id"] ?? null,
      auth_id: rslt["authId"] ?? null,
    }
    : null;
}

export async function linkAuthAccount(
  userDataUid: string,
  authId: string,
): Promise<UserData | null> {
  const hasura_response = await makeGraphqlRequest({
    query: `
          mutation linkAuthAccount($uid: uuid!, $authId: String!) {
            updateAuthUsersData(
              where: { uid: { _eq: $uid }, authId: { _isNull: true } }
              _set: { authId: $authId }
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
    variables: { uid: userDataUid, authId },
    operationName: "linkAuthAccount",
  });

  const rslt = dataOrThrow(hasura_response)["updateAuthUsersData"]
    ?.["returning"]?.[0];

  return rslt
    ? {
      hasura_uid: rslt["uid"],
      person_id: rslt["person"]?.["id"],
      auth_id: authId,
    }
    : null;
}

export async function releaseUserAccount(hasuraUID: string): Promise<void> {
  const hasura_response = await makeGraphqlRequest({
    query: `
          mutation releaseUserAccount($uid: uuid!) {
            deleteAuthUsersPermissions(where: { uid: { _eq: $uid } }) {
              affectedRows
            }
            deleteAuthUsersAdminOn(where: { uid: { _eq: $uid } }) {
              affectedRows
            }
            updateAuthUsersData(
              where: { uid: { _eq: $uid } }
              _set: { authId: null }
            ) {
              affectedRows
            }
          }
        `,
    variables: {
      uid: hasuraUID,
    },
    operationName: "releaseUserAccount",
  });

  const detached = dataOrThrow(hasura_response)["updateAuthUsersData"]
    ?.["affectedRows"];

  if (detached !== 1) {
    throw new Error(`Could not detach the Firebase account from ${hasuraUID}`);
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
