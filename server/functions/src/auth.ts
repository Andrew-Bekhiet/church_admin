import axios from "axios";
import { auth, storage } from "firebase-admin";
import { BlockingFunction, https, region } from "firebase-functions";
import { Readable } from "stream";
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
  .beforeCreate(async (authUser) => {
    console.dir(authUser, { depth: 4 });
    try {
      const dbUser = await insertUser({
        name: authUser.displayName ?? authUser.email!,
        email: authUser.email!,
        uid: authUser.uid!,
      });

      if (!dbUser) {
        console.error("Could not insert user into database");
        throw new https.HttpsError("unknown", "");
      }

      const { person_id, hasura_uid } = dbUser;

      if (authUser.photoURL) {
        const fileWriteStream = storage()
          .bucket("church-data-admin.appspot.com")
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
