# E2E journeys (Patrol)

- **Run journeys through `client/scripts/e2e.sh [patrol_test/<file>_test.dart]`**, with the sandbox off. It resets the `church-admin-e2e` simulator and a hermetic backend before each journey. `client/scripts/e2e_all.sh` runs every journey on one app build and one backend instead. Run one script at a time: concurrent runs share that simulator and backend.
- **Declare a journey with `E2eJourney.test`**, never `patrolTest`. It restores the database and auth accounts that `e2e-backend.sh up` snapshotted, so a journey starts from the seeds whatever ran before it. App state on the simulator still carries over between journeys in `e2e_all.sh`.
- **Start the app with `E2eApp.launchSignedOut`**, never `app.main` directly. It dismisses the iOS notification permission dialog that `flutter_local_notifications` raises during startup, and waits for startup to finish before signing out.
- **Find widgets by `Key`** from the widget's `<Widget>Keys` class, never by Arabic text. Find list items by id.
