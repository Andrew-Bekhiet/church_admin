import { File, GetFilesOptions, GetFilesResponse } from "@google-cloud/storage";
import { storage } from "firebase-admin";
import { https } from "firebase-functions/v2";
import { assertUserAuthenticatedAndApproved } from "./common";

type Version = {
  major: number;
  minor: number;
  patch: number;
};

const expiryWindowMillis = 1000 * 60 * 20;

export const getAppDownloadLink = https.onCall({}, async (context) => {
  const currentUser = await assertUserAuthenticatedAndApproved(context.auth);
  const platform = context.data.platform ?? "android";
  const extension = platform === "android" ? "apk" : "ipa";

  if (platform !== "android" && platform !== "ios") {
    console.error("Invalid platform", platform);
    throw new https.HttpsError("invalid-argument", "invalid platform");
  }

  console.log(
    "Generating download link for user",
    currentUser.uid,
    "platform",
    platform
  );

  let nextPageToken: string | undefined;
  let response: GetFilesResponse;
  let maxVersion: { file: File | null; version: Version } | undefined;

  do {
    response = await storage()
      .bucket(process.env["APP_RELEASE_GCS_BUCKET"])
      .getFiles({ prefix: "app-release-v", pageToken: nextPageToken });

    maxVersion = response[0].reduce((maxResult, file) => {
      const versionMatch = file.name.match(
        `app-release-v(\\d+)\\.(\\d+)\\.(\\d+)\\.${extension}`
      );
      const maxVersion = maxResult.version;

      if (!versionMatch) {
        return maxResult;
      }

      const version: Version = {
        major: parseInt(versionMatch[1]),
        minor: parseInt(versionMatch[2]),
        patch: parseInt(versionMatch[3]),
      };

      if (
        version.major > maxVersion.major ||
        (version.major == maxVersion.major &&
          version.minor > maxVersion.minor) ||
        (version.major == maxVersion.major &&
          version.minor == maxVersion.minor &&
          version.patch > maxVersion.patch)
      ) {
        return { file, version };
      }

      return maxResult;
    }, maxVersion ?? { file: null, version: { major: 0, minor: 0, patch: 0 } });

    nextPageToken = (response[1] as GetFilesOptions | undefined)?.pageToken;

    console.log(
      "Max version",
      maxVersion.version,
      "nextPageToken",
      nextPageToken
    );
  } while (nextPageToken);

  const maxVersionString = `${maxVersion.version.major}.${maxVersion.version.minor}.${maxVersion.version.patch}`;

  return (
    await storage()
      .bucket(process.env["APP_RELEASE_GCS_BUCKET"])
      .file(`app-release-v${maxVersionString}.${extension}`)
      .getSignedUrl({
        queryParams: {
          "content-length": maxVersion.file!.metadata.size,
          "response-content-type": maxVersion.file!.metadata.contentType,
        },
        expires: Date.now() + expiryWindowMillis,
        version: "v4",
        action: "read",
        promptSaveAs: `church-admin-v${maxVersionString}.${extension}`,
      })
  )[0];
});
