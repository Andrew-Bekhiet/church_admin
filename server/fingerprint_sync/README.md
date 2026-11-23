# Fingerprint sync

A small service installed on the BioTime server. It reads new punches from BioTime's REST API every 20 seconds and posts them to the `recordFingerprintPunches` cloud function, which records attendance and last kodas.

It runs on Windows and Linux with Node.js 24.

## How it behaves

- Logs in to BioTime with `POST /api-token-auth/` and logs in again when a request is rejected with 401.
- Reads `GET /iclock/api/transactions/?start_time=<cursor>` page by page, then posts the new punches oldest first, at most 500 per request. Each request also carries the server's current local time, so the function can warn when the server clock is not Cairo time.
- Posts on every poll, even with no new punches, so the app's last sync time shows the service is alive.
- Saves its position in `cursor.json`: the time of the last punch sent and the BioTime ids already sent at that time. After a restart it continues from there.
- With no `cursor.json`, it starts from the current time. Losing the file never replays old punches.
- When the function fails or cannot be reached, the cursor stays where it was. The punches go out on a later poll.
- Punch times from BioTime have no time zone. They are read as `Africa/Cairo` time, daylight saving included.

## Before installing

You need:

1. **A BioTime API account.** In BioTime, create a user that can read transactions. Use it only for this service.
2. **The function's URL and shared secret.** The URL is in the Firebase console under Functions, `recordFingerprintPunches`. The secret is the `FINGERPRINT_SYNC_SECRET` function secret.
3. **Node.js 24** on the BioTime server, from <https://nodejs.org>. Keep it updated: Node carries the time-zone rules, and Egypt has changed its daylight saving rules before.

## Install

### 1. Copy and build

Copy this folder (`server/fingerprint_sync`) to the server, for example to `C:\fingerprint_sync` on Windows or `/opt/fingerprint_sync` on Linux. Then, from inside that folder:

```bash
npm ci
```

```bash
npm run build
```

### 2. Configure

Copy `config.example.json` to `config.json` in the same folder and fill it in:

| Setting | Meaning |
| -- | -- |
| `biotime.baseUrl` | BioTime's address as seen from this server, for example `http://127.0.0.1:8090` |
| `biotime.username`, `biotime.password` | The BioTime API account |
| `recordPunchesFunction.url` | The function's URL |
| `recordPunchesFunction.secret` | The shared secret |
| `cursorFile` | Where the cursor is saved. A relative path is relative to `config.json` |
| `pollIntervalSeconds` | Seconds between polls. Defaults to 20 |

`config.json` holds two secrets. Let only the account that runs the service and administrators read it.

### 3. Run it once by hand

```bash
node lib/main.js
```

The first line says it is polling, and the next says it is forwarding punches from the current time. Punch on a device and wait for `Forwarded 1 punches`. Stop it with Ctrl+C.

### 4. Install as a service

#### Windows

Use [NSSM](https://nssm.cc/download) to run it as a Windows service that starts with the server and restarts if it stops. From an administrator command prompt, with `nssm.exe` on the `PATH`:

```bat
mkdir C:\fingerprint_sync\logs
nssm install FingerprintSync "C:\Program Files\nodejs\node.exe" "C:\fingerprint_sync\lib\main.js"
nssm set FingerprintSync AppDirectory C:\fingerprint_sync
nssm set FingerprintSync AppStdout C:\fingerprint_sync\logs\fingerprint_sync.log
nssm set FingerprintSync AppStderr C:\fingerprint_sync\logs\fingerprint_sync.log
nssm set FingerprintSync AppRotateFiles 1
nssm set FingerprintSync AppRotateOnline 1
nssm set FingerprintSync AppRotateBytes 10485760
nssm start FingerprintSync
```

The log is `C:\fingerprint_sync\logs\fingerprint_sync.log`, rotated every 10 MB. `nssm restart FingerprintSync` restarts the service.

#### Linux

Create a user for the service, and give it the folder:

```bash
sudo useradd --system --no-create-home fingerprint-sync
```

```bash
sudo chown -R fingerprint-sync /opt/fingerprint_sync
```

Save this as `/etc/systemd/system/fingerprint-sync.service`, correcting the paths if Node or the folder are elsewhere (`which node`):

```ini
[Unit]
Description=Fingerprint sync from BioTime to church_admin
After=network-online.target
Wants=network-online.target

[Service]
User=fingerprint-sync
WorkingDirectory=/opt/fingerprint_sync
ExecStart=/usr/bin/node /opt/fingerprint_sync/lib/main.js
Restart=always
RestartSec=10

[Install]
WantedBy=multi-user.target
```

Then start it:

```bash
sudo systemctl daemon-reload
```

```bash
sudo systemctl enable --now fingerprint-sync
```

Read the log with `journalctl -u fingerprint-sync -f`.

## Send the punches between two times

When a device was offline and uploaded its punches late, punches older than the cursor are skipped. Send them once with:

```bash
node lib/main.js send-range --from "2026-11-27 07:00:00" --to "2026-11-27 13:00:00"
```

The times are the BioTime server's local time, inclusive. The command does not move the cursor, so the service can keep running. The function rejects punches older than 10 days.

Sending a range again records its punches again. An attendance record a servant deleted by hand comes back, so choose the range narrowly.

## Update

Stop the service, replace the folder's files except `config.json`, `cursor.json` and `logs`, then run `npm ci` and `npm run build` and start the service again.

## Check on the real server

These have not been verified against a real BioTime server yet. Check them after installing:

- BioTime's `start_time` filter applies to the punch time, not the upload time.
- The user id a person has on the device equals their BioTime employee code.
- The server clock is Cairo time. If it is not, the function logs a clock warning on every poll.
- The devices and the server change with daylight saving on their own. If they do not, someone must change them on the last Friday of April and the last Thursday of October.

## Development

```bash
npm test
```

```bash
npm run lint
```

Tests run the service against a fake BioTime server and a fake function over real HTTP, with the cursor in a temporary folder.
