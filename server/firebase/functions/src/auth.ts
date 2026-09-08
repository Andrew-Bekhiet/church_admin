import axios from "axios";
import { getStorage } from "firebase-admin/storage";
import { storageBucket } from "firebase-functions/params";
import { HttpsError } from "firebase-functions/v2/https";
import {
  beforeUserCreated,
  beforeUserSignedIn,
} from "firebase-functions/v2/identity";
import { Readable } from "stream";
import { hasuraClaims } from "./common";
import {
  claimSeededUser,
  getHasuraUID,
  hasPendingInvite,
  upsertUser,
} from "./hasura_interface";

async function uploadUserPhotoToStorage(photoURL: string, person_id: string) {
  const fileWriteStream = getStorage()
    .bucket(storageBucket.value())
    .file("persons/" + person_id)
    .createWriteStream({
      contentType: "image/jpeg",
      gzip: true,
    });

  const photoStream = (
    await axios.get<Readable>(photoURL, { responseType: "stream" })
  ).data;

  await new Promise((resolve, reject) =>
    photoStream.pipe(fileWriteStream).on("finish", resolve).on("error", reject),
  );
}

async function mustVerifyEmailBeforeClaiming(authUser: {
  email?: string;
  emailVerified?: boolean;
}): Promise<boolean> {
  if (authUser.emailVerified) {
    return false;
  }

  return hasPendingInvite(authUser.email!);
}

export const beforeUserSignUp = beforeUserCreated(async (event) => {
  const authUser = event.data!;

  console.dir(authUser, { depth: 4 });
  try {
    const displayName = authUser.displayName ?? authUser.email!;

    if (await mustVerifyEmailBeforeClaiming(authUser)) {
      console.info(
        "Deferring invite claim for %s until the email is verified",
        authUser.email,
      );

      return { displayName, photoURL: authUser.photoURL };
    }

    const dbUser = await upsertUser({
      name: displayName,
      email: authUser.email!,
      uid: authUser.uid!,
    });

    if (!dbUser) {
      console.error("Could not insert user into database");
      throw new HttpsError("unknown", "");
    }

    const { person_id, hasura_uid } = dbUser;

    if (authUser.photoURL) {
      await uploadUserPhotoToStorage(authUser.photoURL, person_id);
    }

    return {
      displayName,
      photoURL: authUser.photoURL,
      customClaims: hasuraClaims(hasura_uid),
    };
  } catch (e) {
    console.error(e);
    console.dir(e, { depth: 4 });
    throw e;
  }
});

export const beforeUserSignIn = beforeUserSignedIn(async (event) => {
  const authUser = event.data!;

  console.dir(authUser, { depth: 4 });
  try {
    const existing_uid = await getHasuraUID(authUser.uid!);

    if (existing_uid) {
      return { customClaims: hasuraClaims(existing_uid) };
    }

    if (!authUser.emailVerified) {
      console.info(
        "No database user for %s yet; awaiting email verification",
        authUser.email,
      );

      return;
    }

    const claimed = await claimSeededUser({
      email: authUser.email!,
      uid: authUser.uid!,
    });

    if (!claimed) {
      console.error("Could not find hasura_uid for user", authUser.uid);
      throw new HttpsError("not-found", "User not found in database");
    }

    return { customClaims: hasuraClaims(claimed.hasura_uid) };
  } catch (e) {
    console.error(e);
    console.dir(e, { depth: 4 });
    throw e;
  }
});
