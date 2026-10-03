import { encode } from "blurhash";
import { getStorage } from "firebase-admin/storage";
import { storageBucket } from "firebase-functions/params";
import { storage as functions_storage } from "firebase-functions/v2";
import { RESET_VALUE } from "firebase-functions/v2/options";
import * as sharp from "sharp";
import {
  PhotoTable,
  photoTables,
  updatePhotoBlurHash,
  updatePhotoTime,
} from "./hasura_interface";

export const onPhotoUploaded = functions_storage.onObjectFinalized(
  { bucket: storageBucket, maxInstances: RESET_VALUE },
  async (event) => {
    const { data: object } = event;

    const match = _checkIsValidObject(object);
    if (!match) return;

    try {
      await updatePhotoTime(match.table, match.file, new Date(object.updated!));

      const blurhash = await getImageBlurHash(object);

      await updatePhotoBlurHash(match.table, match.file, blurhash);
    } catch (error) {
      console.error(error);
      throw error;
    }
  },
);

export async function getImageBlurHash(object: { name?: string }) {
  const downloadData = await getStorage()
    .bucket(storageBucket.value())
    .file(object.name!)
    .download();

  const { data: pixels, info: metadata } = await sharp.default(downloadData[0])
    .resize({ width: 32, height: 32, fit: "inside" })
    .raw()
    .ensureAlpha()
    .toBuffer({ resolveWithObject: true });

  console.log(`Image Size ${metadata.width}x${metadata.height}`);

  const clamped = new Uint8ClampedArray(pixels);

  return encode(clamped, metadata.width!, metadata.height!, 5, 5);
}

function _checkIsValidObject(
  object: functions_storage.StorageObjectData,
): { table: PhotoTable; file: string } | null {
  const regexp = RegExp(
    `^church-data-admin\\.appspot\\.com\\/(?<table>(${
      photoTables
        .map((s) => `(${s})`)
        .join(
          "|",
        )
    }))\\/(?<file>([0-9a-fA-F]{8}\\b-[0-9a-fA-F]{4}\\b-[0-9a-fA-F]{4}\\b-[0-9a-fA-F]{4}\\b-[0-9a-fA-F]{12}))\\/(?<time>(\\d+))$`,
  );
  const match = object.id.match(
    regexp,
    //Expexted output: ^church-data-admin\.appspot\.com\/(?<table>((areas)|(families)|(groups)|(persons)|(services)|(stores)|(streets)))\/(?<file>([0-9a-fA-F]{8}\b-[0-9a-fA-F]{4}\b-[0-9a-fA-F]{4}\b-[0-9a-fA-F]{4}\b-[0-9a-fA-F]{12})\/(?<time>(\d)+)$
  );
  if (!match) {
    console.log(
      `Object id ${object.id} doesn't match RegExp `,
      regexp,
      "\n",
      "Exiting",
    );
    return null;
  }
  return {
    table: match.groups!["table"] as PhotoTable,
    file: match.groups!["file"],
  };
}
