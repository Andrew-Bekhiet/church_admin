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

  const userHasPermissionToExport = await checkUserHasPermissionToExport({
    hasuraUID,
  });

  if (!userHasPermissionToExport) {
    throw new https.HttpsError(
      "permission-denied",
      "User does not have permission to export data",
    );
  }

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
    throw new https.HttpsError(
      "internal",
      errors ? String(errors) : "Export query returned no data",
    );
  }

  const buffer = buildWorkbookBuffer(payload);
  const exportId = new Date().toISOString();
  const storagePath = `Exports/${hasuraUID}/${exportId}.xlsx`;
  const file = storage().bucket(EXPORT_BUCKET).file(storagePath);
  await file.save(buffer, {
    metadata: {
      contentType: "application/vnd.ms-excel",
    },
  });

  const [downloadUrl] = await file.getSignedUrl({
    version: "v4",
    action: "read",
    expires: Date.now() + EXPORT_DOWNLOAD_URL_EXPIRY_MS,
  });

  return { downloadUrl };
}

async function checkUserHasPermissionToExport({
  hasuraUID,
}: {
  hasuraUID: string;
}): Promise<boolean> {
  const response = await makeGraphqlRequest({
    query: `query checkUserCanExport($uid: uuid!) {
  authUsersPermissions(where: {_and: {uid: {_eq: $uid}, permission: {_eq: "exportData"}}}) {
    uid
  }
}`,
    variables: { uid: hasuraUID },
    operationName: "checkUserCanExport",
  });

  return response.data?.["data"]?.["authUsersPermissions"]?.length > 0;
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

async function getExportDataGQLQuery() {
  return await fs.promises.readFile(
    path.join(__dirname, "export_data.graphql"),
    "utf8",
  );
}
