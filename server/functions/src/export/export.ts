import { storage } from "firebase-admin";
import { https } from "firebase-functions/v2";
import * as fs from "fs";
import * as path from "path";
import * as z from "zod";
import { checkUserApproved, makeGraphqlRequest } from "../hasura_interface";
import { buildExportVariables } from "./build_export_variables";
import { buildWorkbookBuffer, type ExportPayload } from "./to_excel";

const EXPORT_BUCKET = "church-data-admin.appspot.com";
const EXPORT_DOWNLOAD_URL_EXPIRY_MS = 1000 * 60 * 10; // 10 minutes

const ExportDataRequestData = z
  .object({
    areasIds: z.array(z.uuid()).default([]),
    servicesIds: z.array(z.uuid()).default([]),
    classesIds: z.array(z.uuid()).default([]),
    groupsIds: z.array(z.uuid()).default([]),
  })
  .refine(
    (data) =>
      (data.areasIds?.length ?? 0) +
        (data.servicesIds?.length ?? 0) +
        (data.classesIds?.length ?? 0) +
        (data.groupsIds?.length ?? 0) >
      0,
    {
      message:
        "At least one of areasIds, servicesIds, classesIds, groupsIds must be provided",
    },
  );

export const exportData = https.onCall(exportDataHandler);
export async function exportDataHandler(
  data: https.CallableRequest<z.infer<typeof ExportDataRequestData>>,
) {
  const hasuraUID = data.auth?.token["x-hasura-user-id"];
  if (!hasuraUID) {
    throw new https.HttpsError("unauthenticated", "User not authenticated");
  }

  const isApproved = await checkUserApproved(hasuraUID);
  if (!isApproved) {
    throw new https.HttpsError("permission-denied", "User not approved");
  }

  const requestData = ExportDataRequestData.safeParse(data.data);
  if (!requestData.success) {
    throw new https.HttpsError(
      "invalid-argument",
      "Invalid request data",
      requestData.error.issues,
    );
  }

  const {
    canExportAllAreas,
    canExportAllServices,
    canExportAllClasses,
    canExportAllGroups,
  } = await authenticateExportRequest({
    hasuraUID,
    exportDataRequest: requestData.data,
  });
  const canExportAll =
    canExportAllAreas &&
    canExportAllServices &&
    canExportAllClasses &&
    canExportAllGroups;

  if (!canExportAll) {
    console.error("User does not have permission to export requested data", {
      canExportAllAreas,
      canExportAllServices,
      canExportAllClasses,
      canExportAllGroups,
    });

    throw new https.HttpsError(
      "permission-denied",
      "User does not have permission to export requested data",
    );
  }

  const exportId = new Date().toISOString();

  const { areasIds, servicesIds, classesIds, groupsIds } = requestData.data;

  const result = await fetchExportData({
    hasuraUID,
    areasIds,
    servicesIds,
    classesIds,
    groupsIds,
  });

  const payload = result.data?.["data"] as ExportPayload | undefined;
  if (!payload) {
    const errors = result.data?.["errors"];
    console.error("Failed to fetch export data", errors);

    throw new https.HttpsError("internal", "Failed to fetch export data");
  }

  const workbookDataBuffer = buildWorkbookBuffer(payload);

  const file = storage()
    .bucket(EXPORT_BUCKET)
    .file(`exports/${hasuraUID}/${exportId}.xlsx`);
  await file.save(workbookDataBuffer, {
    metadata: {
      contentType:
        "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet",
    },
  });

  const [downloadUrl] = await file.getSignedUrl({
    version: "v4",
    action: "read",
    expires: Date.now() + EXPORT_DOWNLOAD_URL_EXPIRY_MS,
  });

  return { downloadUrl };
}

async function authenticateExportRequest({
  hasuraUID,
  exportDataRequest,
}: {
  hasuraUID: string;
  exportDataRequest: z.infer<typeof ExportDataRequestData>;
}): Promise<{
  canExportAllAreas: boolean;
  canExportAllServices: boolean;
  canExportAllClasses: boolean;
  canExportAllGroups: boolean;
}> {
  const response = await makeGraphqlRequest({
    query: await getAuthorizeExportRequestGQLQuery(),
    variables: {
      uid: hasuraUID,
      areasIds: exportDataRequest.areasIds,
      servicesIds: exportDataRequest.servicesIds,
      classesIds: exportDataRequest.classesIds,
      groupsIds: exportDataRequest.groupsIds,
    },
    operationName: "authorizeExportRequest",
  });

  const data =
    response.data?.["data"]?.["authUsersPermissionsByEntityId"] ?? [];

  type PermissionRecord = {
    permissionId: string;
    uid: string;
    allowEdit: boolean;
    allowExport: boolean;
    entityId: string;
    entityType: string;
    table: string;
    hint: string;
  };
  type EntityType = "any" | "area" | "service" | "class" | "group";

  const entitiesIdsByType: Record<EntityType, Set<string>> = data.reduce(
    (acc: Record<EntityType, Set<string>>, p: PermissionRecord) => {
      const entityType = p.entityType as EntityType;
      acc[entityType] ??= new Set<string>();
      acc[entityType].add(p.entityId);

      return acc;
    },
    {} as Record<EntityType, Set<string>>,
  );

  if (entitiesIdsByType["any"] && entitiesIdsByType["any"].size > 0) {
    return {
      canExportAllAreas: true,
      canExportAllServices: true,
      canExportAllClasses: true,
      canExportAllGroups: true,
    };
  }

  const { areasIds, servicesIds, classesIds, groupsIds } = exportDataRequest;

  const canExportAllAreas = areasIds.every((id) =>
    entitiesIdsByType["area"]?.has(id),
  );
  const canExportAllServices = servicesIds.every((id) =>
    entitiesIdsByType["service"]?.has(id),
  );
  const canExportAllClasses = classesIds.every((id) =>
    entitiesIdsByType["class"]?.has(id),
  );
  const canExportAllGroups = groupsIds.every((id) =>
    entitiesIdsByType["group"]?.has(id),
  );

  return {
    canExportAllAreas,
    canExportAllServices,
    canExportAllClasses,
    canExportAllGroups,
  };
}

async function fetchExportData({
  hasuraUID,
  areasIds,
  servicesIds,
  classesIds,
  groupsIds,
}: {
  hasuraUID: string;
  areasIds: string[];
  servicesIds: string[];
  classesIds: string[];
  groupsIds: string[];
}) {
  const exportDataGQLQuery = await getExportDataGQLQuery();
  const variables = buildExportVariables({
    areasIds,
    servicesIds,
    classesIds,
    groupsIds,
  });

  return makeGraphqlRequest({
    query: exportDataGQLQuery,
    variables,
    operationName: "exportData",
    asUser: hasuraUID,
  });
}

async function getAuthorizeExportRequestGQLQuery() {
  return await fs.promises.readFile(
    path.join(__dirname, "authorize_export_request.graphql"),
    "utf8",
  );
}

async function getExportDataGQLQuery() {
  return await fs.promises.readFile(
    path.join(__dirname, "export_data.graphql"),
    "utf8",
  );
}
