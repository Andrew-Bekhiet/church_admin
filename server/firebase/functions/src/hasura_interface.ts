import axios, { AxiosResponse } from "axios";
import { https } from "firebase-functions/v1";

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
    const permissions: Record<string, string>[] =
      hasura_response.data?.["data"]?.["authUsersData"]?.[0]?.["permissions"];

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

export type HasuraUserRef = { person_id: string; hasura_uid: string };

export function canonicalEmail(email: string): string {
  return email.trim().toLowerCase();
}

function toUserRef(
  hasura_response: AxiosResponse,
  rootField: string,
): HasuraUserRef | null {
  const rslt = hasura_response.data?.["data"]?.[rootField]?.["returning"]?.[0];

  return rslt
    ? { hasura_uid: rslt["uid"], person_id: rslt["person"]?.["id"] }
    : null;
}

/**
 * Attaches `user.uid` to the row an admin pre-seeded for this email, or creates
 * a fresh user when there is no invite to claim.
 *
 * Only call this once the email is known to belong to the caller: claiming a
 * seeded row hands over every permission the admin configured for it.
 */
export async function upsertUser(user: {
  email: string;
  name: string;
  uid: string;
}): Promise<HasuraUserRef | null> {
  try {
    const claimed = await claimInvitedUser(canonicalEmail(user.email), user.uid);

    if (claimed) {
      return claimed;
    }

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
        email: canonicalEmail(user.email),
        firebaseAuthUID: user.uid,
      },
      operationName: "addUser",
    });

    return toUserRef(hasura_response, "insertAuthUsersData");
  } catch (e) {
    console.error(e);
  }

  return null;
}

/**
 * Whether an admin has seeded a row for this email that nobody has claimed yet.
 *
 * Lets the caller decide the email is too sensitive to act on before it has
 * been verified, without performing the claim itself.
 */
export async function hasPendingInvite(email: string): Promise<boolean> {
  try {
    const hasura_response = await makeGraphqlRequest({
      query: `
            query hasPendingInvite($email: String!) {
              authUsersData(
                where: { email: { _eq: $email }, authId: { _isNull: true } }
                limit: 1
              ) {
                uid
              }
            }
          `,
      variables: { email: canonicalEmail(email) },
      operationName: "hasPendingInvite",
    });

    return !!hasura_response.data?.["data"]?.["authUsersData"]?.[0];
  } catch (e) {
    console.error(e);
  }

  return false;
}

/**
 * Attaches a Firebase Auth UID to a row an admin pre-seeded for this email.
 *
 * The row already carries the uid every permission table keys off, so leaving
 * it — and the person it is linked to — otherwise untouched is what preserves
 * the pre-configured access. Returns null when there is nothing to claim.
 *
 * Rows already claimed by this same UID still match, so a signup that fails
 * downstream can be retried without falling through to the insert path (which
 * would overwrite the linked person's flags).
 */
async function claimInvitedUser(
  email: string,
  firebaseAuthUID: string,
): Promise<HasuraUserRef | null> {
  const pending = await makeGraphqlRequest({
    query: `
          query findInvitedUser($email: String!, $firebaseAuthUID: String!) {
            authUsersData(
              where: {
                email: { _eq: $email }
                _or: [
                  { authId: { _isNull: true } }
                  { authId: { _eq: $firebaseAuthUID } }
                ]
              }
              limit: 1
            ) {
              uid
              person {
                id
              }
            }
          }
        `,
    variables: { email, firebaseAuthUID },
    operationName: "findInvitedUser",
  });

  const invite = pending.data?.["data"]?.["authUsersData"]?.[0];

  if (!invite) {
    return null;
  }

  // Validate before writing: a claim that commits and then throws would burn
  // the invite, leaving it unclaimable by anyone.
  const person_id = invite["person"]?.["id"];

  if (!person_id) {
    throw new Error(`Invited user ${email} is not linked to a person`);
  }

  const hasura_response = await makeGraphqlRequest({
    query: `
          mutation claimInvitedUser($uid: uuid!, $firebaseAuthUID: String!) {
            updateAuthUsersData(
              where: { uid: { _eq: $uid } }
              _set: { authId: $firebaseAuthUID }
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
    variables: { uid: invite["uid"], firebaseAuthUID },
    operationName: "claimInvitedUser",
  });

  return toUserRef(hasura_response, "updateAuthUsersData");
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
    )
      throw new https.HttpsError(
        "not-found",
        `Object ${id} was not found in ${table}`,
        hasura_response.data?.["errors"],
      );
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
    )
      throw new https.HttpsError(
        "not-found",
        `Object ${id} was not found in ${table}`,
        hasura_response.data?.["errors"],
      );
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
    process.env["HASURA_SERVER"]!,
    JSON.stringify({
      query,
      variables,
      operationName,
    }),
    {
      method: "POST",
      headers: {
        "content-type": "application/json",
        "x-hasura-admin-secret": process.env["HASURA_ADMIN_SECRET"]!,
        "x-hasura-role": asRole ?? "admin",
        ...(asUser ? { "x-hasura-user-id": asUser } : {}),
      },
    },
  );
}
