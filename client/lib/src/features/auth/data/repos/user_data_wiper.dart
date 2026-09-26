import 'dart:async';

import 'package:church_admin/church_admin.dart';

class UserDataWiper {
  static UserDataWiper get I =>
      globalProviderContainer.read(userDataWiperProvider);

  final List<Future<void> Function()> _clears = [];

  StreamSubscription<bool>? _subscription;

  UserDataWiper({required Stream<AuthUser?> signedOutSignal}) {
    _subscription = signedOutSignal
        .map((authUser) => authUser != null)
        .distinct()
        .skipWhile((isSignedIn) => !isSignedIn)
        .where((isSignedIn) => !isSignedIn)
        .listen((_) => unawaited(_wipe()));
  }

  void register(Future<void> Function() clear) => _clears.add(clear);

  Future<void> dispose() => _subscription?.cancel() ?? Future.value();

  Future<void> _wipe() async {
    for (final clear in _clears.reversed) {
      try {
        await clear();
      } catch (error, stackTrace) {
        await LoggingService.I.exception(
          LogRecord(error: error, stackTrace: stackTrace),
        );
      }
    }
  }
}
