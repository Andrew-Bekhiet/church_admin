import { auth, storage } from "firebase-admin";
import { BlockingFunction, https, region } from "firebase-functions";
import { get } from "https";
import { getHasuraUID, insertUser } from "./hasura_interface";

export let beforeUserSignIn: BlockingFunction | undefined = undefined;
if (process.env.FUNCTIONS_EMULATOR)
  beforeUserSignIn = region("europe-west6")
    .auth.user()
    .beforeSignIn(async (user) => {
      console.dir(user, { depth: 4 });
    });

export const beforeUserSignUp = region("europe-west6")
  .auth.user()
  .beforeCreate(async (user) => {
    console.dir(user, { depth: 4 });
    try {
      const rslt = await insertUser({
        name: user.displayName ?? user.email!,
        email: user.email!,
        uid: user.uid!,
      });

      if (rslt == null) {
        throw new https.HttpsError("unknown", "");
      }

      const { person_id, hasura_uid } = rslt;

      await get(user.photoURL!, (response) => {
        const file = storage()
          .bucket("church-data-admin.appspot.com")
          .file("persons/" + person_id)
          .createWriteStream({
            contentType: "image/jpeg",
            gzip: true,
          });
        response.pipe(file).on("end", file.end).on("error", file.destroy);
      });

      const sessionClaims = {
        customClaims: {
          "x-hasura-user-id": hasura_uid,
          "x-hasura-default-role": "user",
          "x-hasura-allowed-roles": ["user"],
        },
      };
      return sessionClaims;
    } catch (e) {
      console.error(e);
      console.dir(e, { depth: 4 });
      throw e;
    }
  });

export const onUserSignUp = region("europe-west6")
  .auth.user()
  .onCreate(async (user) => {
    console.dir(user, { depth: 4 });
    try {
      await auth().setCustomUserClaims(user.uid, {
        "x-hasura-user-id": await getHasuraUID(user.uid),
        "x-hasura-default-role": "user",
        "x-hasura-allowed-roles": ["user"],
      });
    } catch (e) {
      console.error(e);
      console.dir(e, { depth: 4 });
      throw e;
    }
  });
