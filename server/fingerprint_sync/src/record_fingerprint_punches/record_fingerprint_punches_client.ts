import { FingerprintSyncConfig } from "../config";

export interface Punch {
  employeeCode: string;
  punchedAt: string;
  terminalSerial: string;
}

export class RecordFingerprintPunchesClient {
  constructor(
    private readonly config: FingerprintSyncConfig["recordFingerprintPunches"],
  ) {}

  async recordPunches(
    punches: Punch[],
    biotimeServerLocalTime: string,
  ): Promise<void> {
    const response = await fetch(this.config.url, {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        "X-Fingerprint-Sync-Secret": this.config.secret,
      },
      body: JSON.stringify({ biotimeServerLocalTime, punches }),
    });

    if (!response.ok) {
      throw new Error(
        `recordFingerprintPunches answered ${response.status}: ${await response.text()}`,
      );
    }
  }
}
