import 'dart:async';

import 'package:church_admin/church_admin.dart';

class UserDataWiper {
  final List<void Function()> _clears = [];

  StreamSubscription<bool>? _subscription;

  UserDataWiper({required Stream<AuthUser?> userChangesStream}) {
    _subscription = userChangesStream
        .map((authUser) => authUser == null)
        .distinct()
        .skipWhile((isSignedOut) => isSignedOut)
        .where((isSignedOut) => isSignedOut)
        .listen((_) => unawaited(_wipe()));
  }

  void register(void Function() clear) => _clears.add(clear);

  Future<void> dispose() async {
    _clears.clear();
    await _subscription?.cancel();
  }

  Future<void> _wipe() async {
    for (final clear in _clears.reversed) {
      try {
        clear();
      } catch (error, stackTrace) {
        await LoggingService.I.exception(
          LogRecord(error: error, stackTrace: stackTrace),
        );
      }
    }
  }
}
