import axios, { AxiosResponse } from "axios";
import { https } from "firebase-functions/v1";
import { AdminOnEntry } from "./auth/caller_manages_scopes";
import { PushTarget } from "./push/push_target";
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

export function dataOrThrow(hasura_response: AxiosResponse) {
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

export async function getHasuraUIDOrThrow(
  firebaseAuthUID: string,
): Promise<string | null> {
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

  return dataOrThrow(hasura_response)["authUsersData"]?.[0]?.["uid"] ?? null;
}

export async function getHasuraUID(
  firebaseAuthUID: string,
): Promise<string | null> {
  try {
    return await getHasuraUIDOrThrow(firebaseAuthUID);
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
  code,
  firebaseAuthUID,
  email,
}: {
  code: string;
  firebaseAuthUID: string;
  email: string;
}): Promise<{ hasuraUid: string } | null> {
  try {
    const hasura_response = await makeGraphqlRequest({
      query: `
            mutation claimInvitation(
              $pCode: String!
              $firebaseAuthUID: String!
              $email: String!
            ) {
              authClaimInvitation(
                args: {
                  p_code: $pCode
                  p_auth_id: $firebaseAuthUID
                  p_email: $email
                }
              ) {
                uid
              }
            }
          `,
      variables: { pCode: code, firebaseAuthUID, email: canonicalEmail(email) },
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
      return { canRead: true, canWrite: id == hasuraUid, personUid: null };
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

export async function getPushTargetsForAnyOfPermissions(
  permissions: string[],
): Promise<PushTarget[]> {
  const hasura_response = await makeGraphqlRequest({
    query: `
            query getPushTargetsForAnyOfPermissions($permissions: [String!]!) {
              authUsersData(where: { permissions: { permission: { _in: $permissions } } }) {
                fcmTokens {
                  kind
                  token
                }
              }
            }
          `,
    variables: { permissions },
    operationName: "getPushTargetsForAnyOfPermissions",
  });

  const users: { fcmTokens: PushTarget[] }[] =
    dataOrThrow(hasura_response)["authUsersData"] ?? [];
  const targetsByKindAndToken = new Map<string, PushTarget>();

  for (const { kind, token } of users.flatMap((u) => u.fcmTokens)) {
    targetsByKindAndToken.set(`${kind}:${token}`, { kind, token });
  }

  return [...targetsByKindAndToken.values()];
}

export async function deletePushTargetsOfAnyOwner(
  targets: PushTarget[],
): Promise<void> {
  if (targets.length === 0) {
    return;
  }

  const hasura_response = await makeGraphqlRequest({
    query: `
            mutation deletePushTargetsOfAnyOwner($targets: [UsersFcmTokensBoolExp!]!) {
              deleteUsersFcmTokens(where: { _or: $targets }) {
                affectedRows
              }
            }
          `,
    variables: {
      targets: targets.map(({ kind, token }) => ({
        kind: { _eq: kind },
        token: { _eq: token },
      })),
    },
    operationName: "deletePushTargetsOfAnyOwner",
  });

  dataOrThrow(hasura_response);
}

export async function registerFirebaseInstallationAsSoleOwnerReplacingRegistrationTokens(
  uid: string,
  installationId: string,
): Promise<void> {
  const hasura_response = await makeGraphqlRequest({
    query: `
            mutation registerFirebaseInstallationAsSoleOwnerReplacingRegistrationTokens($uid: uuid!, $installationId: String!) {
              deleteInstallationIdFromOtherUsers: deleteUsersFcmTokens(
                where: {
                  kind: { _eq: "installation_id" }
                  token: { _eq: $installationId }
                  uid: { _neq: $uid }
                }
              ) {
                affectedRows
              }
              deleteRegistrationTokensOfUser: deleteUsersFcmTokens(
                where: { kind: { _eq: "registration_token" }, uid: { _eq: $uid } }
              ) {
                affectedRows
              }
              insertUsersFcmTokensOne(
                object: { uid: $uid, token: $installationId, kind: "installation_id" }
                onConflict: { constraint: users_fcm_tokens_pkey, updateColumns: [kind] }
              ) {
                uid
              }
            }
          `,
    variables: { uid, installationId },
    operationName: "registerFirebaseInstallationAsSoleOwnerReplacingRegistrationTokens",
  });

  dataOrThrow(hasura_response);
}

export async function getUserName(uid: string): Promise<string | null> {
  const hasura_response = await makeGraphqlRequest({
    query: `
            query getUserName($uid: uuid!) {
              authUsersDataByPk(uid: $uid) {
                name
              }
            }
          `,
    variables: { uid },
    operationName: "getUserName",
  });

  return dataOrThrow(hasura_response)["authUsersDataByPk"]?.["name"] ?? null;
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

export async function getCallerScopeInfo(hasuraUid: string): Promise<{
  permissions: string[];
  adminOn: AdminOnEntry[];
}> {
  const hasura_response = await makeGraphqlRequest({
    query: `
          query getCallerScopeInfo($uid: uuid!) {
            authUsersDataByPk(uid: $uid) {
              permissions {
                permission
              }
              adminOn {
                adminOnArea
                adminOnService
                adminOnGroup
                serviceStudyYear
                serviceGender
                areaAllowEdit
                areaAllowExport
                areaAdminOnUsers
                serviceAllowEdit
                serviceAllowExport
                serviceAllowRecordAttendance
                serviceAllowRecordServantsAttendance
                serviceWriteRelatedFamilies
                serviceAdminOnUsers
                groupAllowEdit
                groupAllowExport
                groupAllowRecordAttendance
                groupAllowRecordServantsAttendance
                groupWriteRelatedFamilies
                groupAdminOnUsers
              }
            }
          }
        `,
    variables: { uid: hasuraUid },
    operationName: "getCallerScopeInfo",
  });

  const user = dataOrThrow(hasura_response)["authUsersDataByPk"];
  const permissions: { permission: string }[] = user?.["permissions"] ?? [];
  const adminOn: AdminOnEntry[] = user?.["adminOn"] ?? [];

  return {
    permissions: permissions.map((permission) => permission.permission),
    adminOn,
  };
}

export type CreateUserInput = {
  uid: string;
  name: string;
  email: string | null;
  permissions: string[];
  adminOn: AdminOnEntry[];
  createdBy: string;
  newPerson: { name: string; gender: boolean } | null;
  existingPersonId: string | null;
  invitationExpiresAt: string | null;
};

export async function insertUserWithPermissionsAndAdminOn(
  input: CreateUserInput,
): Promise<{ uid: string; personLinked: boolean }> {
  const linkPerson = input.existingPersonId != null;
  const hasura_response = await makeGraphqlRequest({
    query: `
          mutation insertUserWithPermissionsAndAdminOn(
            $uid: uuid!
            $name: String!
            $email: String
            $permissions: [AuthUsersPermissionsInsertInput!]!
            $adminOn: [AuthUsersAdminOnInsertInput!]!
            $invitation: AuthInvitationsObjRelInsertInput
            $person: PersonsObjRelInsertInput
            $personId: uuid
            $linkPerson: Boolean!
          ) {
            insertAuthUsersDataOne(
              object: {
                uid: $uid
                name: $name
                email: $email
                permissions: { data: $permissions }
                adminOn: { data: $adminOn }
                invitation: $invitation
                person: $person
              }
            ) {
              uid
            }
            updatePersons(
              where: { _and: [{ id: { _eq: $personId } }, { uid: { _isNull: true } }] }
              _set: { uid: $uid }
            ) @include(if: $linkPerson) {
              affectedRows
            }
          }
        `,
    variables: {
      uid: input.uid,
      name: input.name,
      email: input.email,
      permissions: input.permissions.map((permission) => ({ permission })),
      adminOn: input.adminOn,
      invitation: input.invitationExpiresAt
        ? {
          data: {
            expiresAt: input.invitationExpiresAt,
            createdBy: input.createdBy,
          },
        }
        : undefined,
      person: input.newPerson
        ? {
          data: {
            name: input.newPerson.name,
            gender: input.newPerson.gender,
            isServant: true,
          },
        }
        : undefined,
      personId: input.existingPersonId,
      linkPerson,
    },
    operationName: "insertUserWithPermissionsAndAdminOn",
  });

  const data = dataOrThrow(hasura_response);
  const uid: string | null = data["insertAuthUsersDataOne"]?.["uid"] ?? null;

  if (!uid) {
    throw new Error("Hasura did not return a uid for the new user");
  }

  const personLinked = !linkPerson ||
    data["updatePersons"]?.["affectedRows"] === 1;

  return { uid, personLinked };
}

export async function deleteUserByUid(uid: string): Promise<void> {
  const hasura_response = await makeGraphqlRequest({
    query: `
          mutation deleteUserByUid($uid: uuid!) {
            deleteAuthUsersDataByPk(uid: $uid) {
              uid
            }
          }
        `,
    variables: { uid },
    operationName: "deleteUserByUid",
  });

  dataOrThrow(hasura_response);
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
