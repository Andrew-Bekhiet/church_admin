import { open, readFile, rename } from "node:fs/promises";
import { z } from "zod";

export type Cursor = z.infer<typeof savedCursor>;

const savedCursor = z.object({
  forwardedUpTo: z.string(),
  forwardedTransactionIdsAtThatTime: z.array(z.number().int()),
});

export async function readCursorIfSaved(
  path: string,
): Promise<Cursor | undefined> {
  let savedText: string;

  try {
    savedText = await readFile(path, "utf8");
  } catch (e) {
    if ((e as NodeJS.ErrnoException).code === "ENOENT") {
      return undefined;
    }

    throw e;
  }

  return savedCursor.parse(JSON.parse(savedText));
}

export async function saveCursorDurably(
  path: string,
  cursor: Cursor,
): Promise<void> {
  const temporaryPath = `${path}.tmp`;
  const temporaryFile = await open(temporaryPath, "w");

  try {
    await temporaryFile.writeFile(JSON.stringify(cursor));
    await temporaryFile.sync();
  } finally {
    await temporaryFile.close();
  }

  await rename(temporaryPath, path);
}
