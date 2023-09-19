import { storage } from "firebase-admin";
// import { region } from "firebase-functions";
import path = require("path");
import fsPromises = require("fs/promises");

export const migrateStorage = async () => {
  const migrationMapping = await fsPromises
    .readFile(
      "/media/androidq/data/Projects/church_admin/migrate-result.json",
      "utf8"
    )
    .then(JSON.parse);

  const files = await storage()
    .bucket("church-data-admin.appspot.com")
    .getFiles({ maxResults: 3500 });

  for (const file of files[0]) {
    if (!file.name.match(/^(Persons)|(Classes)|(Services)/)) continue;

    const table = file.name.match(/^(.+)Photos\/(.+$)/)![1];
    const id = file.name.match(/^(.+)Photos\/(.+$)/)![2];

    const newId = migrationMapping[table.toLowerCase()][id];

    if (newId) {
      console.log("Renaming", table, "/", id, "to", newId);
      await file.rename(path.join(table.toLowerCase(), newId));
    }
  }
};
