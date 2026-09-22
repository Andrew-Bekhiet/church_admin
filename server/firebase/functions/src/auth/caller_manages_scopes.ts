import { https } from "firebase-functions/v2";

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

const capabilityFlags = [
  "areaAllowEdit",
  "areaAllowExport",
  "areaAdminOnUsers",
  "serviceAllowEdit",
  "serviceAllowExport",
  "serviceAllowRecordAttendance",
  "serviceAllowRecordServantsAttendance",
  "serviceWriteRelatedFamilies",
  "serviceAdminOnUsers",
  "groupAllowEdit",
  "groupAllowExport",
  "groupAllowRecordAttendance",
  "groupAllowRecordServantsAttendance",
  "groupWriteRelatedFamilies",
  "groupAdminOnUsers",
] as const satisfies readonly (keyof AdminOnEntry)[];

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
