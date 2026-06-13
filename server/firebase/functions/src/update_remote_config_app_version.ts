import * as admin from "firebase-admin";
import { applicationDefault } from "firebase-admin/app";

admin.initializeApp({ credential: applicationDefault() });

async function run() {
  const latestVersion = process.env.LATEST_VERSION;
  if (!latestVersion) {
    console.error("LATEST_VERSION environment variable is not set.");
    process.exit(1);
  }

  const template = await admin
    .remoteConfig()
    .getTemplate()
    .catch((err) => {
      console.error("Unable to get template.", err);
      process.exit(1);
    });

  console.log("Got config version from server: ", template.version);

  template.parameters["latestVersion"] = {
    ...template.parameters["latestVersion"],
    defaultValue: {
      value: latestVersion,
    },
  };

  await admin
    .remoteConfig()
    .validateTemplate(template)
    .catch((err) => {
      console.error("Template validation failed:", err);
      process.exit(1);
    });

  await admin
    .remoteConfig()
    .publishTemplate(template)
    .catch((err) => {
      console.error("Failed to publish template:", err);
      process.exit(1);
    });

  console.log("✅ Successfully updated 'latestVersion' to", latestVersion);
}

run().catch((err) => {
  console.error("An error occurred:", err);
  process.exit(1);
});
