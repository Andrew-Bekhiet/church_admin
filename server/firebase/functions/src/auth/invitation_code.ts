import { createHmac, randomInt } from "node:crypto";
import * as z from "zod";

const alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";

export const InviteCode = z
  .string()
  .trim()
  .refine(
    (s) =>
      /^[A-Za-z0-9]{4}-[A-Za-z0-9]{4}-[A-Za-z0-9]{4}$/.test(s) ||
      /^[A-Za-z0-9]{12}$/.test(s),
    {
      message: "code must be ####-####-#### or ############ (alphanumeric)",
    },
  )
  .transform((s) => {
    const raw = s.replace(/-/g, "");
    // at this point raw should be 12 alphanumerics
    return raw.replace(/^(.{4})(.{4})(.{4})$/, "$1-$2-$3");
  });

export function createInvitationCode(): z.infer<typeof InviteCode> {
  const characters = Array.from(
    { length: 12 },
    () => alphabet[randomInt(alphabet.length)],
  );

  return characters.join("").replace(/(.{4})(?=.)/g, "$1-");
}

export function invitationCodeDigest(code: string, secret: string): string {
  return createHmac("sha256", secret).update(code).digest("hex");
}
