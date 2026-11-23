import { readFile, rename, writeFile } from "node:fs/promises";
import { z } from "zod";

export type Cursor = z.infer<typeof cursor>;

const cursor = z.object({
  punchTime: z.string(),
  sentIdsAtPunchTime: z.array(z.number().int()),
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

  return cursor.parse(JSON.parse(savedText));
}

export async function saveCursor(path: string, cursor: Cursor): Promise<void> {
  const temporaryPath = `${path}.tmp`;
  await writeFile(temporaryPath, JSON.stringify(cursor));
  await rename(temporaryPath, path);
}
