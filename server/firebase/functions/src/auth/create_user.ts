import { https } from "firebase-functions/v2";
import { randomUUID } from "node:crypto";
import * as z from "zod";
import { assertUserCanOnboard } from "../common";
import {
  deleteUserByUid,
  getCallerScopeInfo,
  getHasuraUID,
  insertUserWithPermissionsAndAdminOn,
} from "../hasura_interface";
import { hasuraAdminSecret } from "../secrets";
import { assertScopesWithinCaller } from "./scopes_within_caller";

const AdminOnInput = z
  .object({
    adminOnArea: z.uuid().optional(),
    adminOnService: z.uuid().optional(),
    adminOnGroup: z.uuid().optional(),
    serviceStudyYear: z.number().int().optional(),
    serviceGender: z.boolean().optional(),
    areaAllowEdit: z.boolean().optional(),
    areaAllowExport: z.boolean().optional(),
    areaAdminOnUsers: z.boolean().optional(),
    serviceAllowEdit: z.boolean().optional(),
    serviceAllowExport: z.boolean().optional(),
    serviceAllowRecordAttendance: z.boolean().optional(),
    serviceAllowRecordServantsAttendance: z.boolean().optional(),
    serviceWriteRelatedFamilies: z.boolean().optional(),
    serviceAdminOnUsers: z.boolean().optional(),
    groupAllowEdit: z.boolean().optional(),
    groupAllowExport: z.boolean().optional(),
    groupAllowRecordAttendance: z.boolean().optional(),
    groupAllowRecordServantsAttendance: z.boolean().optional(),
    groupWriteRelatedFamilies: z.boolean().optional(),
    groupAdminOnUsers: z.boolean().optional(),
  })
  .refine(
    (row) =>
      [row.adminOnArea, row.adminOnService, row.adminOnGroup].filter(
        (id) => id != null,
      ).length === 1,
    {
      message:
        "exactly one of adminOnArea, adminOnService, adminOnGroup is required",
    },
  );

const PersonInput = z.discriminatedUnion("kind", [
  z.object({ kind: z.literal("existing"), id: z.uuid() }),
  z.object({
    kind: z.literal("new"),
    name: z.string().trim().min(1),
    gender: z.boolean(),
  }),
]);

const CreateUserRequest = z.object({
  name: z.string().trim().min(1),
  email: z.string().trim().toLowerCase().email().optional(),
  permissions: z.array(z.string()),
  adminOn: z.array(AdminOnInput),
  person: PersonInput,
  invitation: z.object({ expiresAt: z.string().datetime() }).optional(),
});

function constraintViolationColumn(error: unknown): string | null {
  const message = error instanceof Error
    ? error.message
    : JSON.stringify(error);

  if (message.includes("users_data_email_key")) return "email";
  if (message.includes("users_data_name_key")) return "name";

  return null;
}

export const createUser = https.onCall<z.infer<typeof CreateUserRequest>>(
  { secrets: [hasuraAdminSecret] },
  async (request) => {
    const authUser = await assertUserCanOnboard(request.auth);

    const requestData = CreateUserRequest.safeParse(request.data);
    if (!requestData.success) {
      throw new https.HttpsError(
        "invalid-argument",
        "Invalid request data",
        requestData.error.issues,
      );
    }

    const callerHasuraUid = await getHasuraUID(authUser.uid);
    if (!callerHasuraUid) {
      console.error("Caller has no Hasura user", authUser.uid);
      throw new https.HttpsError("not-found", "not-found");
    }

    const { permissions, adminOn } = await getCallerScopeInfo(
      callerHasuraUid,
    );

    if (!permissions.includes("manageAllUsers")) {
      assertScopesWithinCaller(adminOn, requestData.data.adminOn);
    }

    const { person } = requestData.data;

    const uid = randomUUID();
    let createdUid: string | null = null;

    try {
      const created = await insertUserWithPermissionsAndAdminOn({
        uid,
        name: requestData.data.name,
        email: requestData.data.email ?? null,
        permissions: requestData.data.permissions,
        adminOn: requestData.data.adminOn,
        createdBy: callerHasuraUid,
        newPerson: person.kind === "new"
          ? { name: person.name, gender: person.gender }
          : null,
        existingPersonId: person.kind === "existing" ? person.id : null,
        invitationExpiresAt: requestData.data.invitation?.expiresAt ?? null,
      });
      createdUid = created.uid;

      if (!created.personLinked) {
        await deleteUserByUid(created.uid);
        console.error(
          "Person already linked to a user",
          person.kind === "existing" ? person.id : null,
          authUser.uid,
        );
        throw new https.HttpsError(
          "already-exists",
          "user/person-already-linked",
        );
      }

      return { uid: created.uid };
    } catch (e) {
      if (e instanceof https.HttpsError) throw e;

      const column = constraintViolationColumn(e);
      if (column === "email") {
        console.error("Email already taken", authUser.uid, e);
        throw new https.HttpsError("already-exists", "user/email-taken");
      }
      if (column === "name") {
        console.error("Name already taken", authUser.uid, e);
        throw new https.HttpsError("already-exists", "user/name-taken");
      }

      if (createdUid) await deleteUserByUid(createdUid);

      console.error("Could not create user", authUser.uid, e);
      throw new https.HttpsError("internal", "internal");
    }
  },
);
