import { getAuth } from "firebase-admin/auth";
import { HttpsError } from "firebase-functions/v2/https";
import { beforeUserCreated } from "firebase-functions/v2/identity";
import {
    createAdminUser,
    createPerson,
    getAllAvailablePermissions,
} from "../hasura_interface";

export const beforeUserSignUp = beforeUserCreated(async (event) => {
    const users = (await getAuth().listUsers(2)).users;

    const isFirstUser = users.length === 0;
    if (!isFirstUser) return;

    const authUser = event.data!;

    try {
        const allPermissions = await getAllAvailablePermissions();
        const dbUser = await createAdminUser({
            authId: authUser.uid,
            email: authUser.email!,
            permissions: allPermissions,
        });

        if (!dbUser) {
            console.error("Could not insert user into database");
            throw new HttpsError("unknown", "");
        }

        const { hasuraUid } = dbUser;

        await createPerson({
            name: authUser.displayName ?? authUser.email ?? "Admin",
            uid: hasuraUid,
        });

        return {
            emailVerified: true,
            customClaims: {
                "x-hasura-user-id": hasuraUid,
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
