import {
  defineRailway,
  github,
  group,
  image,
  preserve,
  project,
  service,
  volume,
} from "railway/iac";

export default defineRailway((ctx) => {
  if (!ctx.isEnvironment("production")) {
    throw new Error(
      `.railway/railway.ts describes production only; "${ctx.environment}" is a Railway PR environment and stays Railway-managed.`,
    );
  }

  const tailscaleForwarderVolume = volume("tailscale-forwarder-volume", {
    alerts: { usage: { "100": {}, "80": {}, "95": {} } },
    allowOnlineResize: true,
    region: "europe-west4-drams3a",
    sizeMB: 5000,
  });
  const postgresVolume = volume("power-volume", {
    alerts: { usage: { "100": {}, "80": {}, "95": {} } },
    allowOnlineResize: true,
    region: "europe-west4-drams3a",
    sizeMB: 5900,
  });

  const ash = service("burly-lunchroom", {
    source: github("Andrew-Bekhiet/church_admin", {
      branch: "master",
      checkSuites: true,
      rootDirectory: "/server/ash",
    }),
    build: {
      builder: "DOCKERFILE",
      dockerfilePath: "/server/ash/Dockerfile",
      watchPatterns: ["/server/ash/**"],
    },
    healthcheck: "/healthz",
    healthcheckTimeout: 180,
    replicas: { "europe-west4-drams3a": 1 },
    deploy: {
      limitOverride: {
        containers: {
          cpu: 2,
          diskBytes: 1_000_000_000,
          memoryBytes: 2_000_000_000,
        },
      },
    },
    env: {
      APP_RELEASE_GCS_BUCKET: preserve(),
      CORS_ALLOWED_ORIGINS: preserve(),
      DATABASE_URL: "${{church-admin-db-eu.DATABASE_PRIVATE_URL}}",
      FIREBASE_PROJECT_ID: "${{shared.FIREBASE_PROJECT_ID}}",
      GCS_SIGNING_SERVICE_ACCOUNT: preserve(),
      GOOGLE_APPLICATION_CREDENTIALS_JSON: preserve(),
      PHOTOS_GCS_BUCKET: preserve(),
      PHX_HOST: preserve(),
      PHX_SERVER: "true",
      PORT: "443",
      SECRET_KEY_BASE: preserve(),
    },
  });

  const postgresDb = service("church-admin-db-eu", {
    source: github("Andrew-Bekhiet/church_admin", {
      branch: "master",
      checkSuites: true,
      rootDirectory: "/server/postgres",
    }),
    build: {
      builder: "DOCKERFILE",
      dockerfilePath: "/server/postgres/Dockerfile",
    },
    replicas: { "europe-west4-drams3a": 1 },
    deploy: {
      limitOverride: { containers: { cpu: 4 } },
      sleepApplication: true,
    },
    volumeMounts: { "/var/lib": postgresVolume },
    env: {
      DATABASE_PRIVATE_URL:
        "postgresql://${{POSTGRES_USER}}:${{POSTGRES_PASSWORD}}@${{RAILWAY_PRIVATE_DOMAIN}}:${{shared.POSTGRES_PORT}}/${{POSTGRES_DB}}",
      PGDATA: "/var/lib/pgdata",
      PGPASSWORD: "${{POSTGRES_PASSWORD}}",
      PGUSER: "${{POSTGRES_USER}}",
      POSTGRES_DB: "${{shared.POSTGRES_DB}}",
      POSTGRES_PASSWORD: "${{shared.POSTGRES_PASSWORD}}",
      POSTGRES_USER: "${{shared.POSTGRES_USER}}",
      RAILWAY_RUN_UID: "0",
    },
  });

  const tailscaleForwarder = service("Tailscale Forwarder", {
    source: image("ghcr.io/brody192/tailscale-forwarder:latest", {
      autoUpdates: {
        schedule: [
          { day: 0, endHour: 24, startHour: 0 },
          { day: 1, endHour: 24, startHour: 0 },
          { day: 2, endHour: 24, startHour: 0 },
          { day: 3, endHour: 24, startHour: 0 },
          { day: 4, endHour: 24, startHour: 0 },
          { day: 5, endHour: 24, startHour: 0 },
          { day: 6, endHour: 24, startHour: 0 },
        ],
        type: "patch",
      },
    }),
    build: { builder: "RAILPACK" },
    replicas: { "europe-west4-drams3a": 1 },
    networking: { privateNetworkEndpoint: "tailscale-forwarder" },
    volumeMounts: { "/data": tailscaleForwarderVolume },
    env: {
      CONNECTION_MAPPING_01:
        "${{shared.POSTGRES_PORT}}:${{church-admin-db-eu.RAILWAY_PRIVATE_DOMAIN}}:${{shared.POSTGRES_PORT}}",
      TS_AUTHKEY: preserve(),
      TS_EPHEMERAL: "false",
      TS_HOSTNAME: "${{RAILWAY_PROJECT_NAME}}-${{RAILWAY_ENVIRONMENT_NAME}}",
      TS_STATE_DIR: "${{RAILWAY_VOLUME_MOUNT_PATH}}",
    },
  });

  const backupCRON = service("Backup CRON", {
    source: github("railwayapp-templates/postgres-s3-backups", {
      branch: "main",
      commitSha: "5665c7d0aa0a4fd3ca8823050d4d2b0d0dc9e5fd",
      upstreamUrl:
        "https://github.com/railwayapp-templates/postgres-s3-backups",
    }),
    build: { builder: "NIXPACKS" },
    replicas: { "europe-west4-drams3a": 1 },
    deploy: {
      cronSchedule: "0 3 * * 0",
      limitOverride: {
        containers: {
          cpu: 2,
          diskBytes: 2_000_000_000,
          memoryBytes: 3_000_000_000,
        },
      },
      restartPolicyType: "NEVER",
    },
    networking: { privateNetworkEndpoint: "backup-cron" },
    env: {
      AWS_ACCESS_KEY_ID: preserve(),
      AWS_S3_BUCKET: preserve(),
      AWS_S3_ENDPOINT: preserve(),
      AWS_S3_REGION: preserve(),
      AWS_SECRET_ACCESS_KEY: preserve(),
      BACKUP_DATABASE_URL:
        "postgresql://${{shared.POSTGRES_USER}}:${{shared.POSTGRES_PASSWORD_URL_ENCODED}}@[${{church-admin-db-eu.RAILWAY_SERVICE_NAME}}]:${{shared.POSTGRES_PORT}}/${{shared.POSTGRES_DB}}",
      BACKUP_OPTIONS:
        "-O -c --if-exists --quote-all-identifiers --lock-wait-timeout=30000",
      NODE_VERSION: "22",
      PG_VERSION: "17",
      SINGLE_SHOT_MODE: "true",
    },
  });
  const backend = group("backend", [ash, postgresDb]);

  return project("church-admin", {
    resources: [
      tailscaleForwarder,
      backupCRON,
      tailscaleForwarderVolume,
      postgresVolume,
      backend,
    ],
  });
});
