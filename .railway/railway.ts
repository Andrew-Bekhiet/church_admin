import { defineRailway, github, group, image, project, service, volume } from "railway/iac";

export default defineRailway(() => {
  const tailscaleForwarderVolume = volume("tailscale-forwarder-volume", { alerts: { usage: { "100": {}, "80": {}, "95": {} } }, allowOnlineResize: true, region: "europe-west4-drams3a", sizeMB: 5000 });
  const powerVolume = volume("power-volume", { alerts: { usage: { "100": {}, "80": {}, "95": {} } }, allowOnlineResize: true, region: "europe-west4-drams3a", sizeMB: 5900 });
  const burlyLunchroom = service("burly-lunchroom", {
    source: github("Andrew-Bekhiet/church_admin", { branch: "master", checkSuites: false, rootDirectory: "/server/hasura" }),
    build: { builder: "NIXPACKS", watchPatterns: ["/server/hasura/**"] },
    healthcheck: "/healthz",
    healthcheckTimeout: 180,
    replicas: { "europe-west4-drams3a": 1 },
    deploy: { limitOverride: { containers: { cpu: 2, cpuDescription: "2 vCPU", diskBytes: 100000000000, diskDescription: "100 GB", memoryBytes: 2000000000, memoryDescription: "2 GB" } }, sleepApplication: true },
  });
  const churchAdminDbEu = service("church-admin-db-eu", {
    source: github("Andrew-Bekhiet/church_admin", { branch: "master", checkSuites: true, rootDirectory: "/server/postgres" }),
    build: { builder: "DOCKERFILE", dockerfilePath: "/server/postgres/Dockerfile" },
    replicas: { "europe-west4-drams3a": 1 },
    deploy: { limitOverride: { containers: { cpu: 4 } }, sleepApplication: true },
    volumeMounts: { "/var/lib": powerVolume },
  });
  const TailscaleForwarder = service("Tailscale Forwarder", {
    source: image("ghcr.io/brody192/tailscale-forwarder:latest", { autoUpdates: { schedule: [{ day: 0, endHour: 24, startHour: 0 }, { day: 1, endHour: 24, startHour: 0 }, { day: 2, endHour: 24, startHour: 0 }, { day: 3, endHour: 24, startHour: 0 }, { day: 4, endHour: 24, startHour: 0 }, { day: 5, endHour: 24, startHour: 0 }, { day: 6, endHour: 24, startHour: 0 }], type: "patch" } }),
    build: { builder: "RAILPACK" },
    replicas: { "europe-west4-drams3a": 1 },
    networking: { privateNetworkEndpoint: "tailscale-forwarder" },
    volumeMounts: { "/data": tailscaleForwarderVolume },
  });
  const BackupCRON = service("Backup CRON", {
    source: github("railwayapp-templates/postgres-s3-backups", { branch: "main", commitSha: "5665c7d0aa0a4fd3ca8823050d4d2b0d0dc9e5fd", upstreamUrl: "https://github.com/railwayapp-templates/postgres-s3-backups" }),
    build: { builder: "NIXPACKS" },
    replicas: { "europe-west4-drams3a": 1 },
    deploy: { cronSchedule: "0 3 * * 0", limitOverride: { containers: { cpu: 2, cpuDescription: "2 vCPU", diskBytes: 100000000000, diskDescription: "100 GB", memoryBytes: 3000000000, memoryDescription: "3 GB" } }, restartPolicyType: "NEVER" },
    networking: { privateNetworkEndpoint: "backup-cron" },
  });
  const backend = group("backend", [burlyLunchroom, churchAdminDbEu]);

  return project("church-admin", {
    variables: { managed: false },
    resources: [TailscaleForwarder, BackupCRON, tailscaleForwarderVolume, powerVolume, backend],
  });
});
