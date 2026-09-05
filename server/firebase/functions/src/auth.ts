import axios from "axios";
import { getStorage } from "firebase-admin/storage";
import { storageBucket } from "firebase-functions/params";
import { HttpsError } from "firebase-functions/v2/https";
import {
  beforeUserCreated,
  beforeUserSignedIn,
} from "firebase-functions/v2/identity";
import { Readable } from "stream";
import { getHasuraUID, upsertUser } from "./hasura_interface";

export const beforeUserSignUp = beforeUserCreated(async (event) => {
  const authUser = event.data!;

  console.dir(authUser, { depth: 4 });
  try {
    const dbUser = await upsertUser({
      name: authUser.displayName ?? authUser.email!,
      email: authUser.email!,
      uid: authUser.uid!,
    });

    if (!dbUser) {
      console.error("Could not insert user into database");
      throw new HttpsError("unknown", "");
    }

    const { person_id, hasura_uid } = dbUser;

    if (authUser.photoURL) {
      const fileWriteStream = getStorage()
        .bucket(storageBucket.value())
        .file("persons/" + person_id)
        .createWriteStream({
          contentType: "image/jpeg",
          gzip: true,
        });

      const photoStream = (
        await axios.get<Readable>(authUser.photoURL!, {
          responseType: "stream",
        })
      ).data;

      await new Promise((resolve, reject) =>
        photoStream
          .pipe(fileWriteStream)
          .on("finish", resolve)
          .on("error", reject)
      );
    }

    return {
      displayName: authUser.displayName ?? authUser.email!,
      photoURL: authUser.photoURL,
      customClaims: {
        "x-hasura-user-id": hasura_uid,
        "x-hasura-default-role": "user",
        "x-hasura-allowed-roles": ["user"],
      },
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
    const hasura_uid = await getHasuraUID(authUser.uid!);

    if (!hasura_uid) {
      console.error("Could not find hasura_uid for user", authUser.uid);
      throw new HttpsError("not-found", "User not found in database");
    }

    return {
      customClaims: {
        "x-hasura-user-id": hasura_uid,
        "x-hasura-default-role": "user",
        "x-hasura-allowed-roles": ["user"],
      },
    };
  } catch (e) {
    console.error(e);
    console.dir(e, { depth: 4 });
    throw e;
  }
});
