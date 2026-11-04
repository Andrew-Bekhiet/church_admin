# E2E journeys (Patrol)

- **Run journeys through `client/scripts/e2e.sh [patrol_test/<file>_test.dart]`**, with the sandbox off; without an argument it runs every journey in turn. Before each journey it uninstalls the app and resets the keychain on the `church-admin-e2e` simulator and brings up a fresh hermetic backend (`server/scripts/e2e-backend.sh`). Run one at a time: concurrent runs share that simulator and backend.
- **Start the app with `E2eApp.launchSignedOut`**, never `app.main` directly. It dismisses the iOS notification permission dialog that `flutter_local_notifications` raises during startup, and waits for startup to finish before signing out.
- **Find widgets by `Key`** from the widget's `<Widget>Keys` class, never by Arabic text. Find list items by id.
