import { build } from "esbuild";
import { execFileSync } from "node:child_process";
import { chmodSync, copyFileSync, mkdirSync, readFileSync, writeFileSync } from "node:fs";
import { dirname, join, resolve } from "node:path";
import { fileURLToPath } from "node:url";
import { inject } from "postject";

const PACKAGE_DIR = resolve(dirname(fileURLToPath(import.meta.url)), "..");
const DIST_DIR = join(PACKAGE_DIR, "dist");
const BUNDLE_PATH = "dist/main.cjs";
const SEA_CONFIG_PATH = "dist/sea-config.json";
const SEA_BLOB_PATH = "dist/sea-prep.blob";
const SEA_FUSE = "NODE_SEA_FUSE_fce680ab2cc467b6e072b8b5df1996b2";

const EXECUTABLE_NAMES = {
  "linux-x64": "fingerprint-sync-linux-x64",
  "win32-x64": "fingerprint-sync-windows-x64.exe",
};

function executableNameForThisPlatform() {
  const platformKey = `${process.platform}-${process.arch}`;
  const name = EXECUTABLE_NAMES[platformKey];
  if (name === undefined) {
    throw new Error(
      `Cannot build an executable on ${platformKey}. Build on one of: ${Object.keys(EXECUTABLE_NAMES).join(", ")}.`,
    );
  }

  return name;
}

async function bundleMain() {
  await build({
    absWorkingDir: PACKAGE_DIR,
    entryPoints: ["src/main.ts"],
    outfile: BUNDLE_PATH,
    platform: "node",
    format: "cjs",
    target: "node24",
    bundle: true,
    logLevel: "warning",
  });
}

function writeSeaConfig() {
  const seaConfig = {
    main: BUNDLE_PATH,
    output: SEA_BLOB_PATH,
    disableExperimentalSEAWarning: true,
    useCodeCache: false,
    useSnapshot: false,
  };
  writeFileSync(join(PACKAGE_DIR, SEA_CONFIG_PATH), `${JSON.stringify(seaConfig, null, 2)}\n`);
}

function generateSeaBlob() {
  execFileSync(process.execPath, ["--experimental-sea-config", SEA_CONFIG_PATH], {
    cwd: PACKAGE_DIR,
    stdio: "inherit",
  });
}

function copyNodeBinaryTo(executablePath) {
  copyFileSync(process.execPath, executablePath);
  if (process.platform === "linux") {
    chmodSync(executablePath, 0o755);
  }
}

async function injectSeaBlobInto(executablePath) {
  await inject(executablePath, "NODE_SEA_BLOB", readFileSync(join(PACKAGE_DIR, SEA_BLOB_PATH)), {
    sentinelFuse: SEA_FUSE,
  });
}

async function buildExecutable() {
  const executablePath = join(DIST_DIR, executableNameForThisPlatform());
  mkdirSync(DIST_DIR, { recursive: true });
  await bundleMain();
  writeSeaConfig();
  generateSeaBlob();
  copyNodeBinaryTo(executablePath);
  await injectSeaBlobInto(executablePath);
  console.log(`Built ${executablePath}`);
}

await buildExecutable();
