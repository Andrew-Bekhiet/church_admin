# E2E journeys (Patrol)

- **Run journeys through `client/scripts/e2e.sh [patrol_test/<file>_test.dart]`**, with the sandbox off. It resets the `church-admin-e2e` simulator and a hermetic backend before each journey. Run one at a time: concurrent runs share that simulator and backend.
- **Start the app with `E2eApp.launchSignedOut`**, never `app.main` directly. It dismisses the iOS notification permission dialog that `flutter_local_notifications` raises during startup, and waits for startup to finish before signing out.
- **Find widgets by `Key`** from the widget's `<Widget>Keys` class, never by Arabic text. Find list items by id.
