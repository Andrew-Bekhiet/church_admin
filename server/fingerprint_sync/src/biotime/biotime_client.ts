import { FingerprintSyncConfig } from "../config";

export interface BiotimeTransaction {
  id: number;
  emp_code: string;
  punch_time: string;
  terminal_sn: string;
}

interface TransactionsPage {
  data: BiotimeTransaction[];
}

export class BiotimeClient {
  private token: string | undefined;

  constructor(private readonly config: FingerprintSyncConfig["biotime"]) {}

  async transactionsFrom(startTime: string): Promise<BiotimeTransaction[]> {
    const url = new URL("/iclock/api/transactions/", this.config.baseUrl);
    url.searchParams.set("start_time", startTime);

    const response = await fetch(url, {
      headers: { Authorization: `Token ${await this.loggedInToken()}` },
    });
    const page = await response.json() as TransactionsPage;

    return page.data;
  }

  private async loggedInToken(): Promise<string> {
    this.token ??= await this.logIn();

    return this.token;
  }

  private async logIn(): Promise<string> {
    const response = await fetch(
      new URL("/api-token-auth/", this.config.baseUrl),
      {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          username: this.config.username,
          password: this.config.password,
        }),
      },
    );
    const { token } = await response.json() as { token: string };

    return token;
  }
}
