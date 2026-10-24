import {
  defineRailway,
  github,
  group,
  image,
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
