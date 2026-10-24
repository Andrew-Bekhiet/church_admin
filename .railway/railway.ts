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
    region: "europe-west4",
    sizeMB: 5000,
  });
  const postgresVolume = volume("power-volume", {
    alerts: { usage: { "100": {}, "80": {}, "95": {} } },
    allowOnlineResize: true,
    region: "europe-west4",
    sizeMB: 5900,
  });

  const hasura = service("burly-lunchroom", {
    source: github("Andrew-Bekhiet/church_admin", {
      branch: "master",
      checkSuites: false,
      rootDirectory: "/server/hasura",
    }),
    build: {
      builder: "DOCKERFILE",
      dockerfilePath: "/server/hasura/Dockerfile",
      watchPatterns: ["/server/hasura/**"],
    },
    healthcheck: "/healthz",
    healthcheckTimeout: 180,
    replicas: { "europe-west4": 1 },
    deploy: {
      limitOverride: {
        containers: {
          cpu: 2,
          diskBytes: 1_000_000_000,
          memoryBytes: 2_000_000_000,
        },
      },
      sleepApplication: true,
    },
    env: {
      HASURA_GRAPHQL_ADMIN_SECRET: preserve(),
      HASURA_GRAPHQL_DATABASE_URL: preserve(),
      HASURA_GRAPHQL_DEFAULT_NAMING_CONVENTION: preserve(),
      HASURA_GRAPHQL_DEV_MODE: preserve(),
      HASURA_GRAPHQL_ENABLED_APIS: preserve(),
      HASURA_GRAPHQL_ENABLE_CONSOLE: preserve(),
      HASURA_GRAPHQL_ENABLE_TELEMETRY: preserve(),
      HASURA_GRAPHQL_EXPERIMENTAL_FEATURES: preserve(),
      HASURA_GRAPHQL_JWT_SECRET: preserve(),
      HASURA_GRAPHQL_LIVE_QUERIES_MULTIPLEXED_REFETCH_INTERVAL: preserve(),
      HASURA_GRAPHQL_LOG_LEVEL: preserve(),
      HASURA_GRAPHQL_SERVER_PORT: preserve(),
      PORT: preserve(),
      STUDY_YEAR_ROLL_NOTIFY_URL: preserve(),
      STUDY_YEAR_ROLL_WEBHOOK_SECRET: preserve(),
    },
  });

  const postgresDb = service("church-admin-db-eu", {
    source: github("Andrew-Bekhiet/church_admin", {
      branch: "master",
      checkSuites: false,
      rootDirectory: "/server/postgres",
    }),
    build: {
      builder: "DOCKERFILE",
      dockerfilePath: "/server/postgres/Dockerfile",
    },
    replicas: { "europe-west4": 1 },
    deploy: {
      limitOverride: { containers: { cpu: 4 } },
      sleepApplication: true,
    },
    volumeMounts: { "/var/lib": postgresVolume },
    env: {
      DATABASE_PRIVATE_URL: preserve(),
      NO_TS_TUNE: preserve(),
      PGDATA: preserve(),
      PGPASSWORD: preserve(),
      PGUSER: preserve(),
      POSTGRES_DB: preserve(),
      POSTGRES_PASSWORD: preserve(),
      POSTGRES_USER: preserve(),
      RAILWAY_RUN_UID: preserve(),
      SSL_CERT_DAYS: preserve(),
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
    replicas: { "europe-west4": 1 },
    networking: { privateNetworkEndpoint: "tailscale-forwarder" },
    volumeMounts: { "/data": tailscaleForwarderVolume },
    env: {
      CONNECTION_MAPPING_01: preserve(),
      TS_AUTHKEY: preserve(),
      TS_EPHEMERAL: preserve(),
      TS_HOSTNAME: preserve(),
      TS_STATE_DIR: preserve(),
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
    replicas: { "europe-west4": 1 },
    deploy: {
      cronSchedule: "0 3 * * 0",
      limitOverride: {
        containers: {
          cpu: 2,
          diskBytes: 10_000_000,
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
      BACKUP_CRON_SCHEDULE: preserve(),
      BACKUP_DATABASE_URL: preserve(),
      BACKUP_OPTIONS: preserve(),
      ENABLE_ALPINE_PRIVATE_NETWORKING: preserve(),
      NODE_VERSION: preserve(),
      PG_VERSION: preserve(),
      SINGLE_SHOT_MODE: preserve(),
    },
  });
  const backend = group("backend", [hasura, postgresDb]);

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
