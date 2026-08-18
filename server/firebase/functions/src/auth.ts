import axios from "axios";
import { storage } from "firebase-admin";
import { storageBucket } from "firebase-functions/params";
import { HttpsError } from "firebase-functions/v2/https";
import {
  beforeUserCreated,
  beforeUserSignedIn,
} from "firebase-functions/v2/identity";
import { Readable } from "stream";
import { getHasuraUID, hasPendingInvite, upsertUser } from "./hasura_interface";

function hasuraClaims(hasura_uid: string) {
  return {
    "x-hasura-user-id": hasura_uid,
    "x-hasura-default-role": "user",
    "x-hasura-allowed-roles": ["user"],
  };
}

async function copyProviderPhoto(photoURL: string, person_id: string) {
  const fileWriteStream = storage()
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
    photoStream.pipe(fileWriteStream).on("finish", resolve).on("error", reject)
  );
}

export const beforeUserSignUp = beforeUserCreated(async (event) => {
  const authUser = event.data!;

  console.dir(authUser, { depth: 4 });
  try {
    const displayName = authUser.displayName ?? authUser.email!;

    // Claiming a seeded invite hands over every permission an admin configured
    // for that address, so it may only happen once the signer-up has proven the
    // address is theirs. Providers that vouch for the email (Google) qualify
    // immediately; email/password signups claim on their first verified
    // sign-in instead. Without this, guessing an invited email would be enough.
    if (
      !authUser.emailVerified &&
      (await hasPendingInvite(authUser.email!))
    ) {
      console.info(
        "Deferring invite claim for %s until the email is verified",
        authUser.email
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
      await copyProviderPhoto(authUser.photoURL, person_id);
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

    // Signup deferred this user because their invite needed a verified email.
    // This is the first sign-in where that holds, so claim it now.
    if (!authUser.emailVerified) {
      console.info(
        "No database user for %s yet; awaiting email verification",
        authUser.email
      );

      return;
    }

    const dbUser = await upsertUser({
      name: authUser.displayName ?? authUser.email!,
      email: authUser.email!,
      uid: authUser.uid!,
    });

    if (!dbUser) {
      console.error("Could not find or create hasura user for", authUser.uid);
      throw new HttpsError("not-found", "User not found in database");
    }

    return { customClaims: hasuraClaims(dbUser.hasura_uid) };
  } catch (e) {
    console.error(e);
    console.dir(e, { depth: 4 });
    throw e;
  }
});
