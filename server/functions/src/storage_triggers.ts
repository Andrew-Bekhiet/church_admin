import { region } from "firebase-functions";
import { ObjectMetadata } from "firebase-functions/v1/storage";
import { PhotoTable, photoTables, updatePhotoTime } from "./hasura_interface";

export const onPhotoUploaded = region("europe-west6")
  .storage.bucket("church-data-admin.appspot.com")
  .object()
  .onFinalize(async (object) => {
    const match = _checkIsValidObject(object);
    if (match)
      await updatePhotoTime(match.table, match.file, new Date(object.updated));
  });

function _checkIsValidObject(
  object: ObjectMetadata
): { table: PhotoTable; file: string } | null {
  const regexp = RegExp(
    `^church-data-admin\\.appspot\\.com\\/(?<table>(${photoTables
      .map((s) => `(${s})`)
      .join(
        "|"
      )}))\\/(?<file>([0-9a-fA-F]{8}\\b-[0-9a-fA-F]{4}\\b-[0-9a-fA-F]{4}\\b-[0-9a-fA-F]{4}\\b-[0-9a-fA-F]{12}))\\/(?<time>(\\d+))$`
  );
  const match = object.id.match(
    regexp
    //Expexted output: ^church-data-admin\.appspot\.com\/(?<table>((areas)|(families)|(groups)|(persons)|(services)|(stores)|(streets)))\/(?<file>([0-9a-fA-F]{8}\b-[0-9a-fA-F]{4}\b-[0-9a-fA-F]{4}\b-[0-9a-fA-F]{4}\b-[0-9a-fA-F]{12})\/(?<time>(\d)+)$
  );
  if (!match) {
    console.log(
      `Object id ${object.id} doesn't match RegExp `,
      regexp,
      "\n",
      "Exiting"
    );
    return null;
  }
  return {
    table: match.groups!["table"] as PhotoTable,
    file: match.groups!["file"],
  };
}
