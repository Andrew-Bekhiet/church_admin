# Fingerprint sync

Two Windows PowerShell 5.1 scripts for the fingerprint server (BioTime, Windows 10). A scheduled task runs `fingerprint_sync.ps1` every minute as SYSTEM. Each run polls BioTime three times, at 0, 20 and 40 seconds, and posts new punches to the `recordFingerprintPunches` function, at most 500 per request. A poll with no new punches still posts an empty batch, so the app's last fingerprint attendance sync time shows the poller is alive. Every run ends within about 55 seconds.

## What you need

1. A BioTime user that can read transactions, used only for this.
2. The function's URL, from the Firebase console under Functions, `recordFingerprintPunches`. It must be `https`, unless it points at localhost or a private network address.
3. The function's `FINGERPRINT_SYNC_SECRET`.

## Install

1. Copy `fingerprint_sync.ps1` and `setup_fingerprint_sync.ps1` to `C:\fingerprint_sync`.
2. Open PowerShell as administrator and run:

   ```powershell
   powershell -ExecutionPolicy Bypass -File C:\fingerprint_sync\setup_fingerprint_sync.ps1
   ```

3. Answer the prompts: BioTime's address (`http://<lan ip>:8082` on this server), the BioTime username, the function URL, the BioTime password and the sync secret.

Setup then:

- limits `C:\fingerprint_sync` to Administrators and SYSTEM, with read access for other users, because SYSTEM runs the script from there;
- saves the settings in `config.json`, and the password and secret in `secrets.bin`, encrypted for this machine with DPAPI and readable only by Administrators and SYSTEM;
- runs the check below, and stops if it fails;
- registers the `Fingerprint sync` task: every minute, as SYSTEM, whether or not anyone is logged on, never two runs at once, stopped after 2 minutes if it hangs. Then it starts the task.

On its first run the poller sends nothing already in BioTime. It saves the highest BioTime transaction id it found in `cursor.json` and from then on sends only transactions with a higher id.

## Check

```powershell
powershell -ExecutionPolicy Bypass -File C:\fingerprint_sync\fingerprint_sync.ps1 check
```

It logs in to BioTime, reads one transaction, and sends the function a request that the function rejects as malformed only after it has accepted the secret. The check therefore does not record a sync. `accepted the sync secret` means it works. `rejected the sync secret` means the secret is wrong.

## Update or change a setting

Copy the new scripts over the old ones and run setup again. It offers the saved values; press Enter to keep each one. It keeps `cursor.json`, so no punches are sent twice or skipped.

## Uninstall

```powershell
powershell -ExecutionPolicy Bypass -File C:\fingerprint_sync\setup_fingerprint_sync.ps1 -Uninstall
```

This removes the task. Delete `C:\fingerprint_sync` afterwards to remove the settings, secrets and cursor.

## Logs

`C:\fingerprint_sync\logs\fingerprint_sync.log`, rolled at 1 MB, with the last three kept as `.1` to `.3`. Each poll writes one line of counts: transactions read, unsent and sent, the function's answer, and the cursor. Task Scheduler's *Last Run Result* is `0` when all went well, `1` after an error, and `2` after a warning.

| Line | Meaning |
| -- | -- |
| `ERROR ... skipping the rest of this run` | BioTime or the function failed or timed out. Batches already sent stay sent; the next minute retries the rest. |
| `WARN ... linked to no person` | A punch's fingerprint ID matches no person in the app. The function reports only how many, so the line lists the batch's employee codes, which include the unlinked ones. Set the fingerprint ID on each person. |
| `WARN ... older than the function accepts` | The punches were more than 10 days old, usually from a device that was offline. They are not recorded. |
| `WARN ... in the future` | The fingerprint server's or a device's clock is ahead of Cairo time. Fix the clock. |

## Not yet confirmed on the real server

The top of `fingerprint_sync.ps1` states two assumptions, pending a probe of the BioTime server: transaction ids rise in upload order, and BioTime's `start_time` filter is on punch time. Each poll rereads the last 48 hours, so a punch uploaded more than 48 hours after it happened is never sent.
