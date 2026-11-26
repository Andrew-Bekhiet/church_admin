# Fingerprint sync

Two Windows PowerShell 5.1 scripts for the fingerprint server (BioTime, Windows 10). A scheduled task runs `fingerprint_sync.ps1` every minute as SYSTEM. Each run polls BioTime three times, at 0, 20 and 40 seconds, and posts new punches to the `recordFingerprintPunches` function, at most 500 per request. A poll with no new punches still posts an empty batch, so the app's last fingerprint attendance sync time shows the poller is alive. Every run ends within about 55 seconds.

## What you need

1. A BioTime superuser, since BioTime gives API tokens to no other account. Create a dedicated one for this.
2. The function's URL, from the Firebase console under Functions, `recordFingerprintPunches`, deployed from the same commit as these scripts. An older function records nothing these scripts send, so the poller stops with `answered without` and keeps its cursor. It must be `https`, unless it points at localhost or a private network address.
3. The function's `FINGERPRINT_SYNC_SECRET`.

## Install

1. Copy `fingerprint_sync.ps1` and `setup_fingerprint_sync.ps1` to `C:\fingerprint_sync`.
2. Open PowerShell as administrator and run:

   ```powershell
   powershell -ExecutionPolicy Bypass -File C:\fingerprint_sync\setup_fingerprint_sync.ps1
   ```

3. Answer the prompts: BioTime's address (`http://<lan ip>:8082` on this server), the BioTime username, the function URL, the BioTime password and the sync secret.

Setup then:

- resets the access of `C:\fingerprint_sync` and everything in it to Administrators and SYSTEM, with read access for other users and none for anyone granted more before, because SYSTEM runs the script from there;
- saves the settings in `config.json`, and the password and secret in `secrets.bin`, encrypted for this machine with DPAPI and recreated on every run so that only Administrators and SYSTEM can read it;
- runs the check below, and stops if it fails;
- registers the `Fingerprint sync` task: every minute, as SYSTEM, whether or not anyone is logged on, never two runs at once, stopped after 2 minutes if it hangs. Then it starts the task.

On its first run the poller sends nothing already in BioTime. It saves the highest BioTime transaction id it found in `cursor.json` and from then on sends only transactions with a higher id.

## Check

```powershell
powershell -ExecutionPolicy Bypass -File C:\fingerprint_sync\fingerprint_sync.ps1 check
```

It logs in to BioTime, reads one transaction, and sends the function a request that the function rejects as malformed only after it has accepted the secret. The check therefore does not record a sync. `accepted the sync secret` means it works. `rejected the sync secret` means the secret is wrong.

## Update or change a setting

Copy the new scripts over the old ones and run setup again. It offers the saved values; press Enter to keep each one. It keeps `cursor.json`, so on the same BioTime database no punch is sent twice. After an outage the poller sends every punch uploaded since, however late it was uploaded. Each poll rereads the whole backlog before sending, so a backlog too large to read within one poll logs `Out of time` on every run; delete `cursor.json` to start again from the newest punch.

The cursor is a transaction id from one BioTime database, so a new address for the same server keeps it. When BioTime moves to a different database, delete `cursor.json`. Until then the poller sends nothing from the new database whose ids are below the cursor. After the deletion it starts from the newest punch on the new server and does not send punches that were already there.

## Uninstall

```powershell
powershell -ExecutionPolicy Bypass -File C:\fingerprint_sync\setup_fingerprint_sync.ps1 -Uninstall
```

This removes the task. Delete `C:\fingerprint_sync` afterwards to remove the settings, secrets and cursor.

## Logs

`C:\fingerprint_sync\logs\fingerprint_sync.log`, rolled at 1 MB, with the last three kept as `.1` to `.3`. Each poll writes one line of counts: transactions unsent and sent, the function's answer, and the cursor. Task Scheduler's *Last Run Result* is `0` when all went well, `1` after an error, and `2` after a warning.

| Line | Meaning |
| -- | -- |
| `ERROR ... skipping the rest of this run` | BioTime or the function failed or timed out. Batches already sent stay sent; the next minute retries the rest. |
| `ERROR ... not in ascending id order` | BioTime listed transactions out of id order, so the poller cannot tell which are new. It sends nothing and keeps its cursor until the order is restored. |
| `ERROR ... not yyyy-MM-dd HH:mm:ss` | BioTime returned a punch time in a layout the function cannot read. The poller stops before that transaction, so nothing after it is sent until that transaction is corrected or deleted in BioTime. |
| `WARN ... linked to no person` | A punch's fingerprint ID matches no person in the app. The function reports only how many, so the line lists the batch's employee codes, which include the unlinked ones. These punches are not recorded and are not sent again. Set the fingerprint ID on each person so their later punches are recorded. |
| `WARN ... rejected by the function as malformed` | The function could not read a punch, for example one with no employee code. It is not recorded. |
| `WARN ... older than the function accepts` | The punches were more than 10 days old, usually from a device that was offline. They are not recorded. |
| `WARN ... in the future` | The fingerprint server's or a device's clock is ahead of Cairo time. These punches are not recorded and are not sent again. Fix the clock so later punches are recorded. |
