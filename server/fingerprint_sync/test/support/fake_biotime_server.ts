import { once } from "node:events";
import { createServer, IncomingMessage, Server, ServerResponse } from "node:http";
import { AddressInfo } from "node:net";
import { requestBodyOf } from "./request_body";

export interface FakeTransaction {
  id: number;
  emp_code: string;
  punch_time: string;
  terminal_sn: string;
}

export const BIOTIME_USERNAME = "api-user";
export const BIOTIME_PASSWORD = "api-password";

export class FakeBiotimeServer {
  readonly transactions: FakeTransaction[] = [];
  pageSize = 10;
  listsNewestFirst = false;
  private validTokens = new Set<string>();
  private issuedTokens = 0;

  private constructor(private readonly server: Server) {}

  static async start(): Promise<FakeBiotimeServer> {
    const server = createServer();
    const fake = new FakeBiotimeServer(server);
    server.on("request", (req, res) => fake.handle(req, res));
    server.listen(0, "127.0.0.1");
    await once(server, "listening");

    return fake;
  }

  get baseUrl(): string {
    const { port } = this.server.address() as AddressInfo;

    return `http://127.0.0.1:${port}`;
  }

  addPunch(transaction: Omit<FakeTransaction, "id" | "terminal_sn"> & {
    terminal_sn?: string;
  }): void {
    this.transactions.push({
      id: this.transactions.length + 1,
      terminal_sn: "CQZ7224960170",
      ...transaction,
    });
  }

  expireTokens(): void {
    this.validTokens.clear();
  }

  async stop(): Promise<void> {
    this.server.closeAllConnections();
    this.server.close();
    await once(this.server, "close");
  }

  private async handle(req: IncomingMessage, res: ServerResponse) {
    const url = new URL(req.url ?? "/", this.baseUrl);

    if (req.method === "POST" && url.pathname === "/api-token-auth/") {
      await this.handleLogin(req, res);

      return;
    }

    if (req.method === "GET" && url.pathname === "/iclock/api/transactions/") {
      this.handleTransactions(req, res, url);

      return;
    }

    res.writeHead(404).end();
  }

  private async handleLogin(req: IncomingMessage, res: ServerResponse) {
    const credentials = JSON.parse(await requestBodyOf(req));

    if (
      credentials.username !== BIOTIME_USERNAME ||
      credentials.password !== BIOTIME_PASSWORD
    ) {
      sendJson(res, 400, {
        non_field_errors: ["Unable to log in with provided credentials."],
      });

      return;
    }

    const token = `token-${++this.issuedTokens}`;
    this.validTokens.add(token);
    sendJson(res, 200, { token });
  }

  private handleTransactions(
    req: IncomingMessage,
    res: ServerResponse,
    url: URL,
  ) {
    const token = req.headers.authorization?.replace(/^Token /, "");

    if (token === undefined || !this.validTokens.has(token)) {
      sendJson(res, 401, {
        detail: "Authentication credentials were not provided.",
      });

      return;
    }

    const startTime = url.searchParams.get("start_time");
    const endTime = url.searchParams.get("end_time");
    const listed = this.listsNewestFirst
      ? [...this.transactions].reverse()
      : this.transactions;
    const matching = listed.filter((transaction) =>
      (startTime === null || transaction.punch_time >= startTime) &&
      (endTime === null || transaction.punch_time <= endTime)
    );
    const page = Number(url.searchParams.get("page") ?? "1");
    const pageSize = Math.min(
      Number(url.searchParams.get("page_size") ?? this.pageSize),
      this.pageSize,
    );
    const pageItems = matching.slice((page - 1) * pageSize, page * pageSize);
    const hasNextPage = page * pageSize < matching.length;

    sendJson(res, 200, {
      count: matching.length,
      next: hasNextPage
        ? `http://127.0.0.1:8090/iclock/api/transactions/?page=${page + 1}`
        : null,
      previous: null,
      msg: "",
      code: 0,
      data: pageItems.map((transaction) => ({
        ...transaction,
        first_name: "",
        last_name: "",
        punch_state: "0",
        verify_type: 1,
        upload_time: transaction.punch_time,
      })),
    });
  }
}

function sendJson(res: ServerResponse, status: number, body: unknown) {
  res.writeHead(status, { "Content-Type": "application/json" });
  res.end(JSON.stringify(body));
}
