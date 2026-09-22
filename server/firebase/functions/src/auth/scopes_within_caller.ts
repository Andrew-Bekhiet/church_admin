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

function containerOf(
  row: AdminOnEntry,
): { kind: ContainerKind; id: string } | null {
  if (row.adminOnArea != null) return { kind: "area", id: row.adminOnArea };
  if (row.adminOnService != null) {
    return { kind: "service", id: row.adminOnService };
  }
  if (row.adminOnGroup != null) {
    return { kind: "group", id: row.adminOnGroup };
  }

  return null;
}

function callerManagesContainer(
  callerRow: AdminOnEntry,
  kind: ContainerKind,
): boolean {
  if (kind === "area") return callerRow.areaAdminOnUsers === true;
  if (kind === "service") return callerRow.serviceAdminOnUsers === true;

  return callerRow.groupAdminOnUsers === true;
}

function callerScopeCoversRequestedService(
  callerRow: AdminOnEntry,
  requestedRow: AdminOnEntry,
): boolean {
  const studyYearMatches = callerRow.serviceStudyYear == null ||
    callerRow.serviceStudyYear === requestedRow.serviceStudyYear;
  const genderMatches = callerRow.serviceGender == null ||
    callerRow.serviceGender === requestedRow.serviceGender;

  return studyYearMatches && genderMatches;
}

export function assertScopesWithinCaller(
  callerScopes: AdminOnEntry[],
  requestedAdminOn: AdminOnEntry[],
): void {
  if (requestedAdminOn.length === 0) {
    throw new https.HttpsError(
      "failed-precondition",
      "invitation/scope-required",
    );
  }

  for (const requestedRow of requestedAdminOn) {
    const container = containerOf(requestedRow);

    if (!container) {
      throw new https.HttpsError(
        "failed-precondition",
        "invitation/scope-required",
      );
    }

    const matchingCallerRow = callerScopes.find((callerRow) => {
      const callerContainer = containerOf(callerRow);

      return callerContainer?.kind === container.kind &&
        callerContainer.id === container.id &&
        callerManagesContainer(callerRow, container.kind);
    });

    if (
      !matchingCallerRow ||
      (container.kind === "service" &&
        !callerScopeCoversRequestedService(matchingCallerRow, requestedRow))
    ) {
      throw new https.HttpsError(
        "permission-denied",
        "invitation/scope-not-manageable",
      );
    }
  }
}
