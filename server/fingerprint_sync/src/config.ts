export interface FingerprintSyncConfig {
  biotime: {
    baseUrl: string;
    username: string;
    password: string;
  };
  recordPunchesFunction: {
    url: string;
    secret: string;
  };
  cursorFile: string;
  pollIntervalSeconds: number;
}
