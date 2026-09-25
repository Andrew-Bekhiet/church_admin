import * as z from "zod";

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
    const raw = s.replace(/-/g, "").toUpperCase();

    return raw.replace(/^(.{4})(.{4})(.{4})$/, "$1-$2-$3");
  });
