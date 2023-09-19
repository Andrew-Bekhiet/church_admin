import { encode } from "blurhash";
import { storage } from "firebase-admin";
import { runWith } from "firebase-functions";
import { ObjectMetadata } from "firebase-functions/v1/storage";
import * as sharp from "sharp";
import {
  PhotoTable,
  photoTables,
  updatePhotoBlurHash,
  updatePhotoTime,
} from "./hasura_interface";

export const onPhotoUploaded = runWith({
  memory: "512MB",
  timeoutSeconds: 9 * 60,
})
  .region("europe-west6")
  .storage.bucket("church-data-admin.appspot.com")
  .object()
  .onFinalize(async (object) => {
    const match = _checkIsValidObject(object);
    if (!match) return;

    try {
      await updatePhotoTime(match.table, match.file, new Date(object.updated));

      const blurhash = await _getImageBlurHash(object);

      await updatePhotoBlurHash(match.table, match.file, blurhash);
    } catch (error) {
      console.error(error);
      throw error;
    }
  });

async function _getImageBlurHash(object: ObjectMetadata) {
  const downloadData = await storage()
    .bucket("church-data-admin.appspot.com")
    .file(object.name!)
    .download();

  const { data: pixels, info: metadata } = await sharp(downloadData[0])
    .raw()
    .ensureAlpha()
    .toBuffer({ resolveWithObject: true });

  console.log(`Image ${metadata.width}x${metadata.height}`);
  console.log(`Image ${pixels.length} pixels`);

  const clamped = new Uint8ClampedArray(pixels);

  const blurhash = encode(clamped, metadata.width!, metadata.height!, 5, 5);
  return blurhash;
}

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
