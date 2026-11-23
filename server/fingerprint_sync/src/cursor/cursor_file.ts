import { readFile, writeFile } from "node:fs/promises";

export interface Cursor {
  punchTime: string;
  sentIdsAtPunchTime: number[];
}

export async function readCursorIfSaved(
  path: string,
): Promise<Cursor | undefined> {
  try {
    return JSON.parse(await readFile(path, "utf8")) as Cursor;
  } catch (e) {
    if ((e as NodeJS.ErrnoException).code === "ENOENT") {
      return undefined;
    }

    throw e;
  }
}

export async function saveCursor(path: string, cursor: Cursor): Promise<void> {
  await writeFile(path, JSON.stringify(cursor));
}
