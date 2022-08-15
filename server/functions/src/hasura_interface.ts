import { default as post } from "axios";
import { https } from "firebase-functions/v1";

export async function checkUserApproved(uid: string): Promise<boolean> {
  try {
    const hasura_request = await post(process.env["HASURA_SERVER"]!, {
      data: JSON.stringify({
        query: `
            query checkApproved($uid: uuid!) {
                usersData(where: {uid: {_eq: $uid}}, limit: 1) {
                    permissions
                }
            }
          `,
        variables: { uid },
        operationName: "checkApproved",
      }),
      method: "POST",
      headers: {
        "content-type": "application/json",
        "x-hasura-admin-secret": process.env["HASURA_ADMIN_SECRET"]!,
        "x-hasura-role": "admin",
      },
    });
    const permissions: string[] =
      hasura_request.data?.["data"]?.["usersData"]?.[0]?.["permissions"];

    return (
      permissions.find((o) => o.toLowerCase().replace("'", "") == "approved") !=
      null
    );
  } catch (e) {
    console.error(e);
  }

  return false;
}

export async function getHasuraUID(
  firebase_auth_uid: string
): Promise<string | null> {
  try {
    const hasura_request = await post(process.env["HASURA_SERVER"]!, {
      data: JSON.stringify({
        query: `
            query getUserByFirebaseUID($firebase_auth_uid: String) {
              usersData(where: {firebaseAuthUid: {_eq: $firebase_auth_uid}}, limit: 1) {
                uid
              }
            }
          `,
        variables: { firebase_auth_uid },
        operationName: "getUserByFirebaseUID",
      }),
      method: "POST",
      headers: {
        "content-type": "application/json",
        "x-hasura-admin-secret": process.env["HASURA_ADMIN_SECRET"]!,
        "x-hasura-role": "admin",
      },
    });
    const hasura_uid: string =
      hasura_request.data?.["data"]?.["usersData"]?.[0]?.["uid"] ?? null;

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
    const hasura_request = await post(process.env["HASURA_SERVER"]!, {
      data: JSON.stringify({
        query: `
            query getPersonIdFromUser($hasuraUID: uuid = "") {
              users(where: {uid: {_eq: $hasuraUID}}) {
                person {
                  id
                }
              }
            }
          `,
        variables: { hasuraUID },
        operationName: "getPersonIdFromUser",
      }),
      method: "POST",
      headers: {
        "content-type": "application/json",
        "x-hasura-admin-secret": process.env["HASURA_ADMIN_SECRET"]!,
        "x-hasura-role": "admin",
      },
    });
    const hasura_uid: string =
      hasura_request.data?.["data"]?.["users"]?.[0]?.["person"]?.["id"] ?? null;

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

    const hasura_request = await post(process.env["HASURA_SERVER"]!, {
      data: JSON.stringify({
        query: `
            query checkPermissions($id: uuid!) {
                ${table == "users" ? "usersData" : table}(where: {${
          table == "users" ? "uid" : "id"
        }: {_eq: $id}}, limit: 1) {
                    ${field}
                }
            }
          `,
        variables: { id },
        operationName: "checkPermissions",
      }),
      method: "POST",
      headers: {
        "content-type": "application/json",
        "x-hasura-user-id": hasura_uid,
        "x-hasura-role": "admin",
        "x-hasura-admin-secret": process.env["HASURA_ADMIN_SECRET"]!,
      },
    });

    return (
      hasura_request.data?.["data"]?.[
        table == "users" ? "usersData" : table
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
}): Promise<string | null> {
  try {
    const hasura_request = await post(process.env["HASURA_SERVER"]!, {
      data: JSON.stringify({
        query: `
            mutation addUser($email: String, $name: String , $firebase_auth_uid: String, $permissions: _text = "{}") {
              insertUsersData(objects: {email: $email, firebaseAuthUid: $firebase_auth_uid, permissions: $permissions, user: {data: {name: $name, person: {data: {name: $name, isStudent:false, isServant:true}}}}}) {
                returning {
                  user {
                    uid
                  }
                }
              }
            }
          `,
        variables: {
          name: user.name,
          email: user.email,
          firebase_auth_uid: user.uid,
          permissions: "{}",
        },
        operationName: "addUser",
      }),
      headers: {
        "content-type": "application/json",
        "x-hasura-admin-secret": process.env["HASURA_ADMIN_SECRET"]!,
        "x-hasura-role": "admin",
      },
    });

    return (
      hasura_request.data?.["data"]?.["insertUsersData"]?.["returning"]?.[0]?.[
        "user"
      ]?.["uid"] ?? null
    );
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
    const hasura_request = await post(process.env["HASURA_SERVER"]!, {
      data: JSON.stringify({
        query: `
            mutation updatePhotoTime($id: uuid!, $photo_updated_at: timestamptz) {
              update${table.replace(RegExp("^[a-z]"), (s) =>
                s.toUpperCase()
              )}ByPk(pk_columns: {id: $id}, _set: {photoUpdatedAt: $photo_updated_at}) {
                id
              }
            }
          `,
        variables: {
          id,
          photo_updated_at: time?.toISOString(),
        },
        operationName: "updatePhotoTime",
      }),
      headers: {
        "content-type": "application/json",
        "x-hasura-admin-secret": process.env["HASURA_ADMIN_SECRET"]!,
        "x-hasura-role": "admin",
      },
    });

    if (
      hasura_request.data?.["data"]?.[`update_${table}_by_pk`]?.["id"] ??
      null != id
    )
      throw new https.HttpsError(
        "not-found",
        `Object ${id} was not found in ${table}`,
        hasura_request.data?.["errors"]
      );
  } catch (e) {
    console.error(e);
    throw e;
  }
}

export const photoTables = [
  "areas",
  "families",
  "groups",
  "persons",
  "services",
  "stores",
  "streets",
  "users",
] as const;
export type PhotoTable = typeof photoTables[number];
