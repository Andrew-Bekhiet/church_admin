import Axios = require("axios");
import { https } from "firebase-functions/v1";

//TODO: remove in newer versions > 1.1.3
// eslint-disable-next-line @typescript-eslint/no-explicit-any
const axios = (Axios as any).create({}) as Axios.AxiosInstance;

export async function checkUserApproved(uid: string): Promise<boolean> {
  try {
    const hasura_response = await _makeGraphqlRequest({
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
        (o) => o?.["permission"].toLowerCase().replace("'", "") == "approved"
      ) != null
    );
  } catch (e) {
    console.error(e);
  }

  return false;
}

export async function getHasuraUID(
  firebaseAuthUID: string
): Promise<string | null> {
  try {
    const hasura_response = await _makeGraphqlRequest({
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
  hasuraUID: string
): Promise<string | null> {
  try {
    const hasura_response = await _makeGraphqlRequest({
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

export async function checkUserAccess(
  table: PhotoTable,
  id: string,
  hasura_uid: string,
  permission: "read" | "write"
): Promise<boolean> {
  try {
    if (permission == "write" && table == "users") return false;

    const field =
      "isUserAllowedTo" +
      permission.at(0)!.toUpperCase() +
      permission.substring(1);

    const hasura_response = await _makeGraphqlRequest({
      query: `
            query checkPermissions($id: uuid!) {
                ${table == "users" ? "authUsersData" : table}(where: {${
        table == "users" ? "uid" : "id"
      }: {_eq: $id}}, limit: 1) {
                    ${field}
                }
            }
          `,
      variables: { id },
      operationName: "checkPermissions",
      headers: {
        "content-type": "application/json",
        "x-hasura-user-id": hasura_uid,
        "x-hasura-role": "admin",
        "x-hasura-admin-secret": process.env["HASURA_ADMIN_SECRET"]!,
      },
    });

    return (
      hasura_response.data?.["data"]?.[
        table == "users" ? "authUsersData" : table
      ]?.[0]?.[field] === true
    );
  } catch (e) {
    console.error(e);
  }

  return false;
}

export async function insertUser(user: {
  email: string;
  name: string;
  uid: string;
}): Promise<{ person_id: string; hasura_uid: string } | null> {
  try {
    const hasura_response = await _makeGraphqlRequest({
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
                  person: {data: {name: $name, isServant: true, isStudent: false}}
                }
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

    const rslt =
      hasura_response.data?.["data"]?.["insertAuthUsersData"]?.[
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

export async function updatePhotoTime(
  table: PhotoTable,
  id: string,
  time: Date | null
): Promise<void> {
  try {
    const op_name = `update${
      table == "users"
        ? "AuthUsersData"
        : table.replace(RegExp("^[a-z]"), (s) => s.toUpperCase())
    }ByPk`;
    const hasura_response = await _makeGraphqlRequest({
      query: `
            mutation updatePhotoTime($id: uuid!, $photoUpdatedAt: timestamptz) {
              ${op_name}(pkColumns: {id: $id}, _set: {photoUpdatedAt: $photoUpdatedAt}) {
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
        hasura_response.data?.["errors"]
      );
  } catch (e) {
    console.error(e);
    throw e;
  }
}

export async function updatePhotoBlurHash(
  table: PhotoTable,
  id: string,
  blurhash: string
): Promise<void> {
  try {
    const op_name = `update${
      table == "users"
        ? "AuthUsersData"
        : table.replace(RegExp("^[a-z]"), (s) => s.toUpperCase())
    }ByPk`;
    const hasura_response = await _makeGraphqlRequest({
      query: `
            mutation updatePhotoBlurHash($id: uuid!, $blurhash: String) {
              ${op_name}(pkColumns: {id: $id}, _set: {blurhash: $blurhash}) {
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
        hasura_response.data?.["errors"]
      );
  } catch (e) {
    console.error(e);
    throw e;
  }
}

export const photoTables = [
  "areas",
  "streets",
  "stores",
  "families",
  "services",
  "groups",
  "classes",
  "persons",
  "users",
] as const;
export type PhotoTable = (typeof photoTables)[number];

async function _makeGraphqlRequest({
  query,
  variables,
  operationName,
  headers,
}: {
  query: string;
  variables: object;
  operationName?: string;
  headers?: object;
}): Promise<Axios.AxiosResponse> {
  return axios.post(
    process.env["HASURA_SERVER"]!,
    JSON.stringify({
      query,
      variables,
      operationName,
    }),
    {
      method: "POST",
      headers: headers ?? {
        "content-type": "application/json",
        "x-hasura-admin-secret": process.env["HASURA_ADMIN_SECRET"]!,
        "x-hasura-role": "admin",
      },
    }
  );
}
