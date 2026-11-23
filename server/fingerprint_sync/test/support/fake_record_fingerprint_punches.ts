import { once } from "node:events";
import { createServer, IncomingMessage, Server, ServerResponse } from "node:http";
import { AddressInfo } from "node:net";
import { requestBodyOf } from "./request_body";

export const FUNCTION_SECRET = "test-fingerprint-sync-secret";

export interface ReceivedPunch {
  employeeCode: string;
  punchedAt: string;
  terminalSerial: string;
}

export interface ReceivedRequest {
  biotimeServerLocalTime: string;
  punches: ReceivedPunch[];
}

export class FakeRecordFingerprintPunches {
  readonly acceptedRequests: ReceivedRequest[] = [];
  respondWithStatus = 204;
  private requestsToAcceptBeforeFailing = Infinity;

  private constructor(private readonly server: Server) {}

  static async start(): Promise<FakeRecordFingerprintPunches> {
    const server = createServer();
    const fake = new FakeRecordFingerprintPunches(server);
    server.on("request", (req, res) => fake.handle(req, res));
    server.listen(0, "127.0.0.1");
    await once(server, "listening");

    return fake;
  }

  get url(): string {
    const { port } = this.server.address() as AddressInfo;

    return `http://127.0.0.1:${port}/recordFingerprintPunches`;
  }

  get acceptedPunches(): ReceivedPunch[] {
    return this.acceptedRequests.flatMap((request) => request.punches);
  }

  get acceptedRequestsWithPunches(): ReceivedRequest[] {
    return this.acceptedRequests.filter((request) => request.punches.length > 0);
  }

  failAfterAccepting(requestCount: number): void {
    this.requestsToAcceptBeforeFailing = this.acceptedRequests.length + requestCount;
  }

  acceptEveryRequest(): void {
    this.requestsToAcceptBeforeFailing = Infinity;
  }

  async stop(): Promise<void> {
    this.server.closeAllConnections();
    this.server.close();
    await once(this.server, "close");
  }

  private async handle(req: IncomingMessage, res: ServerResponse) {
    const body = await requestBodyOf(req);

    if (req.headers["x-fingerprint-sync-secret"] !== FUNCTION_SECRET) {
      res.writeHead(401).end();

      return;
    }

    if (this.acceptedRequests.length >= this.requestsToAcceptBeforeFailing) {
      res.writeHead(503).end();

      return;
    }

    if (this.respondWithStatus === 204) {
      this.acceptedRequests.push(JSON.parse(body));
    }

    res.writeHead(this.respondWithStatus).end();
  }
}
