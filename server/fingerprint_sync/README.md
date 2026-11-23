# Fingerprint sync

A small service installed on the BioTime server. It reads new punches from BioTime's REST API every 20 seconds and posts them to the `recordFingerprintPunches` cloud function, which records attendance and last kodas.

It runs on Windows and Linux x64. Each release ships it as one executable per system, so the server needs no Node.js.

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
3. **On Windows, [NSSM](https://nssm.cc/download)**, which runs the executable as a Windows service. **On Linux, systemd 247 or newer** (`systemctl --version`).

## Install with the wizard

1. On the repository's GitHub releases page, open the newest release whose tag starts with `fingerprint-sync-v`. The app's own releases are listed there too.
2. Download into one folder on the BioTime server:
   - Windows: `fingerprint-sync-windows-x64.exe` and `install.ps1`, plus `win64\nssm.exe` from the NSSM zip.
   - Linux: `fingerprint-sync-linux-x64` and `install.sh`.
3. Run the wizard from that folder:
   - Windows, from an administrator PowerShell: `powershell -ExecutionPolicy Bypass -File .\install.ps1`
   - Linux: `sudo bash install.sh`

The wizard asks for the BioTime URL and API username, the function URL, the poll interval, the BioTime password and the sync secret. It stores the secrets as described in "Store the secrets" below. It then runs `fingerprint-sync check`, which logs in to BioTime and sends one empty request to the function. Only if both succeed does it install and start, or restart, the service. A wrong URL, password or secret stops the wizard there. A service that was already running keeps running with the settings it started with. The new ones are already saved, though, and it picks them up on its next restart, for example after a reboot. So run the wizard again until the check passes.

It installs to `C:\fingerprint_sync` on Windows and `/opt/fingerprint_sync` on Linux. Then follow "Check that it works" below.

To update, download the newer release into a folder and run the wizard again. It offers to keep the current settings and secrets, and it never touches `cursor.json`.

Windows may warn the first time the executable runs, because it is not signed. The executable carries its own time-zone rules: if Egypt changes its daylight saving rules again, install a release built after the change.

## Install by hand

These are the steps the wizard takes, for when it cannot be used. They run the service from source with Node.js 24 from <https://nodejs.org>. Keep Node updated: it carries the time-zone rules.

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
| `biotime.username` | The BioTime API account |
| `recordFingerprintPunches.url` | The function's URL |
| `cursorFile` | Where the cursor is saved. A relative path is relative to `config.json` |
| `pollIntervalSeconds` | Seconds between polls. Defaults to 20 |

`config.json` holds no secrets. The service refuses to start if it finds a password or secret in it.

### 3. Store the secrets

The service reads two secrets:

| Secret | Read from |
| -- | -- |
| The BioTime API account's password | `BIOTIME_PASSWORD`, or the file named by `BIOTIME_PASSWORD_FILE` |
| The function's shared secret | `FINGERPRINT_SYNC_SECRET`, or the file named by `FINGERPRINT_SYNC_SECRET_FILE` |

Set one of the two variables for each secret. The steps below keep each secret in a file that only the service can read, and point the `_FILE` variable at it. A newline or BOM at the end of a secret file is ignored.

#### Windows

From an administrator PowerShell, create a folder that only `SYSTEM` (the account NSSM runs the service as) and administrators can open, then type each secret into it:

```powershell
New-Item -ItemType Directory C:\fingerprint_sync\secrets
```

```powershell
icacls C:\fingerprint_sync\secrets /inheritance:r /grant:r "SYSTEM:(OI)(CI)R" "Administrators:(OI)(CI)F"
```

```powershell
function Save-Secret($name) { $typed = Read-Host $name -AsSecureString; [IO.File]::WriteAllText("C:\fingerprint_sync\secrets\$name", [Net.NetworkCredential]::new('', $typed).Password) }
```

```powershell
Save-Secret biotime-password
```

```powershell
Save-Secret fingerprint-sync-secret
```

#### Linux

The service needs systemd 247 or newer (`systemctl --version`). On systemd 250 or newer, encrypt each secret with `systemd-creds`. It is tied to this machine, and to its TPM when there is one, and only systemd decrypts it, into the service's private credentials folder:

```bash
sudo mkdir -p /etc/credstore.encrypted
```

```bash
read -rsp "BioTime password: " secret && printf '%s' "$secret" | sudo systemd-creds encrypt --name=biotime-password - /etc/credstore.encrypted/biotime-password; unset secret
```

```bash
read -rsp "Sync secret: " secret && printf '%s' "$secret" | sudo systemd-creds encrypt --name=fingerprint-sync-secret - /etc/credstore.encrypted/fingerprint-sync-secret; unset secret
```

On systemd 247 to 249, write the two files unencrypted to `/etc/credstore/` with `sudo install -m 600 /dev/null <file>` and an editor, and use `LoadCredential=` in place of `LoadCredentialEncrypted=` in the unit below. Only root can read them, and systemd copies them into the service's private credentials folder.

### 4. Install as a service

#### Windows

Use [NSSM](https://nssm.cc/download) to run it as a Windows service that starts with the server and restarts if it stops. From an administrator command prompt, with `nssm.exe` on the `PATH`:

```bat
mkdir C:\fingerprint_sync\logs
nssm install FingerprintSync "C:\Program Files\nodejs\node.exe" "C:\fingerprint_sync\lib\main.js"
nssm set FingerprintSync AppDirectory C:\fingerprint_sync
nssm set FingerprintSync AppEnvironmentExtra BIOTIME_PASSWORD_FILE=C:\fingerprint_sync\secrets\biotime-password FINGERPRINT_SYNC_SECRET_FILE=C:\fingerprint_sync\secrets\fingerprint-sync-secret
nssm set FingerprintSync AppStdout C:\fingerprint_sync\logs\fingerprint_sync.log
nssm set FingerprintSync AppStderr C:\fingerprint_sync\logs\fingerprint_sync.log
nssm set FingerprintSync AppRotateFiles 1
nssm set FingerprintSync AppRotateOnline 1
nssm set FingerprintSync AppRotateBytes 10485760
nssm start FingerprintSync
```

The environment variables hold only the paths of the secret files, not the secrets. The log is `C:\fingerprint_sync\logs\fingerprint_sync.log`, rotated every 10 MB. `nssm restart FingerprintSync` restarts the service.

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
LoadCredentialEncrypted=biotime-password:/etc/credstore.encrypted/biotime-password
LoadCredentialEncrypted=fingerprint-sync-secret:/etc/credstore.encrypted/fingerprint-sync-secret
Environment=BIOTIME_PASSWORD_FILE=/run/credentials/fingerprint-sync.service/biotime-password
Environment=FINGERPRINT_SYNC_SECRET_FILE=/run/credentials/fingerprint-sync.service/fingerprint-sync-secret
ExecStart=/usr/bin/node /opt/fingerprint_sync/lib/main.js
Restart=always
RestartSec=10

[Install]
WantedBy=multi-user.target
```

`/run/credentials/fingerprint-sync.service` is the service's private credentials folder while it runs. Then start it:

```bash
sudo systemctl daemon-reload
```

```bash
sudo systemctl enable --now fingerprint-sync
```

Read the log with `journalctl -u fingerprint-sync -f`.

### 5. Check that it works

Open the log. The first lines say it is polling, and that it is forwarding punches from the current time. Punch on a device and wait for `Forwarded 1 punches`. A wrong password or secret shows as `Poll failed` with BioTime's or the function's answer.

## Send the punches between two times

When a device was offline and uploaded its punches late, punches older than the cursor are skipped. Send them once with the commands below. They are for an install made with the wizard. For an install by hand, replace the executable with `node lib/main.js`.

On Windows, from an administrator PowerShell in `C:\fingerprint_sync`:

```powershell
$env:BIOTIME_PASSWORD_FILE = "C:\fingerprint_sync\secrets\biotime-password"; $env:FINGERPRINT_SYNC_SECRET_FILE = "C:\fingerprint_sync\secrets\fingerprint-sync-secret"; .\fingerprint-sync.exe send-range --from "2026-11-27 07:00:00" --to "2026-11-27 13:00:00"
```

On Linux, run it through systemd so it can read the secrets. With secrets encrypted by `systemd-creds`:

```bash
sudo systemd-run --pipe --wait --uid=fingerprint-sync -p WorkingDirectory=/opt/fingerprint_sync -p LoadCredentialEncrypted=biotime-password:/etc/credstore.encrypted/biotime-password -p LoadCredentialEncrypted=fingerprint-sync-secret:/etc/credstore.encrypted/fingerprint-sync-secret /bin/sh -c 'BIOTIME_PASSWORD_FILE="$CREDENTIALS_DIRECTORY/biotime-password" FINGERPRINT_SYNC_SECRET_FILE="$CREDENTIALS_DIRECTORY/fingerprint-sync-secret" exec /opt/fingerprint_sync/fingerprint-sync send-range --from "2026-11-27 07:00:00" --to "2026-11-27 13:00:00"'
```

With unencrypted secrets in `/etc/credstore/` (systemd older than 250):

```bash
sudo systemd-run --pipe --wait --uid=fingerprint-sync -p WorkingDirectory=/opt/fingerprint_sync -p LoadCredential=biotime-password:/etc/credstore/biotime-password -p LoadCredential=fingerprint-sync-secret:/etc/credstore/fingerprint-sync-secret /bin/sh -c 'BIOTIME_PASSWORD_FILE="$CREDENTIALS_DIRECTORY/biotime-password" FINGERPRINT_SYNC_SECRET_FILE="$CREDENTIALS_DIRECTORY/fingerprint-sync-secret" exec /opt/fingerprint_sync/fingerprint-sync send-range --from "2026-11-27 07:00:00" --to "2026-11-27 13:00:00"'
```

The times are the BioTime server's local time, inclusive. The command does not move the cursor, so the service can keep running. The function rejects punches older than 10 days.

It logs `Sent N punches up to <time>` after each batch of 500. If it fails partway, rerun it with `--from` set to the last time it logged, not after it: a batch can end partway through the punches of one second. Punches at that time that were already sent are sent again.

Sending a range again records its punches again. An attendance record a servant deleted by hand comes back, so choose the range narrowly.

## Update

With the wizard, run the newer release's wizard as described above. For an install by hand, stop the service, replace the folder's files except `config.json`, `cursor.json`, `secrets` and `logs`, run `npm ci` and `npm run build`, and start the service again.

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

```bash
npm run build:executable
```

This builds the executable for the system it runs on, in `dist/`. It bundles the service with esbuild and injects it into a copy of Node with postject.

To publish a release, push a tag named `fingerprint-sync-v<version>`, for example `fingerprint-sync-v1.0.0`. The release workflow then:

1. runs the tests and builds each executable on its own system;
2. attaches both executables, the two wizards and `config.example.json` to a GitHub release;
3. never marks that release as the repository's latest, so the app's releases keep that place.
