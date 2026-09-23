import { https } from "firebase-functions/v2";
import * as z from "zod";

export type AdminOnEntry = {
  adminOnArea?: string | null;
  adminOnService?: string | null;
  adminOnGroup?: string | null;
  serviceStudyYear?: number | null;
  serviceGender?: boolean | null;
  areaAllowEdit?: boolean | null;
  areaAllowExport?: boolean | null;
  areaAdminOnUsers?: boolean | null;
  serviceAllowEdit?: boolean | null;
  serviceAllowExport?: boolean | null;
  serviceAllowRecordAttendance?: boolean | null;
  serviceAllowRecordServantsAttendance?: boolean | null;
  serviceWriteRelatedFamilies?: boolean | null;
  serviceAdminOnUsers?: boolean | null;
  groupAllowEdit?: boolean | null;
  groupAllowExport?: boolean | null;
  groupAllowRecordAttendance?: boolean | null;
  groupAllowRecordServantsAttendance?: boolean | null;
  groupWriteRelatedFamilies?: boolean | null;
  groupAdminOnUsers?: boolean | null;
};

type ContainerKind = "area" | "service" | "group";

const AdminOnFields = z.object({
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
});

export const AdminOnInput = AdminOnFields
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

const capabilityFlags = AdminOnFields.omit({
  adminOnArea: true,
  adminOnService: true,
  adminOnGroup: true,
  serviceStudyYear: true,
  serviceGender: true,
}).keyof().options;

export function assertCallerHoldsPermissions(
  callerPermissions: string[],
  permissions: string[],
): void {
  if (permissions.every((p) => callerPermissions.includes(p))) return;

  throw new https.HttpsError(
    "permission-denied",
    "user/permission-not-grantable",
  );
}

export function assertCallerManagesScopes(
  callerScopes: AdminOnEntry[],
  scopes: AdminOnEntry[],
): void {
  if (scopes.length === 0) {
    throw new https.HttpsError(
      "failed-precondition",
      "invitation/scope-required",
    );
  }

  for (const scope of scopes) {
    const container = containerOf(scope);

    if (!container) {
      throw new https.HttpsError(
        "failed-precondition",
        "invitation/scope-required",
      );
    }

    const callerManagesScope = callerScopes.some((callerScope) =>
      canManageScope(callerScope, scope)
    );

    if (!callerManagesScope) {
      throw new https.HttpsError(
        "permission-denied",
        "invitation/scope-not-manageable",
      );
    }
  }
}

function canManageScope(
  callerScope: AdminOnEntry,
  requestedScope: AdminOnEntry,
): boolean {
  const callerContainer = containerOf(callerScope);
  const requestedContainer = containerOf(requestedScope);

  if (!callerContainer || !requestedContainer) {
    return false;
  }

  return callerContainer.kind === requestedContainer.kind &&
    callerManagesContainerUsers(callerContainer.kind, callerScope) &&
    callerContainer.id === requestedContainer.id &&
    capabilityFlags.every((flag) =>
      requestedScope[flag] !== true || callerScope[flag] === true
    ) &&
    (callerContainer.kind !== "service" ||
      callerManagesService(callerScope, requestedScope));
}

function containerOf(
  scope: AdminOnEntry,
): { kind: ContainerKind; id: string } | null {
  if (scope.adminOnArea != null) return { kind: "area", id: scope.adminOnArea };
  if (scope.adminOnService != null) {
    return { kind: "service", id: scope.adminOnService };
  }
  if (scope.adminOnGroup != null) {
    return { kind: "group", id: scope.adminOnGroup };
  }

  return null;
}

function callerManagesContainerUsers(
  kind: ContainerKind,
  callerScope: AdminOnEntry,
): boolean {
  if (kind === "area") return callerScope.areaAdminOnUsers === true;
  if (kind === "service") return callerScope.serviceAdminOnUsers === true;
  if (kind === "group") return callerScope.groupAdminOnUsers === true;

  return false;
}

function callerManagesService(
  callerScope: AdminOnEntry,
  requestedScope: AdminOnEntry,
): boolean {
  const studyYearMatches = callerScope.serviceStudyYear == null ||
    callerScope.serviceStudyYear === requestedScope.serviceStudyYear;
  const genderMatches = callerScope.serviceGender == null ||
    callerScope.serviceGender === requestedScope.serviceGender;

  return studyYearMatches && genderMatches;
}
