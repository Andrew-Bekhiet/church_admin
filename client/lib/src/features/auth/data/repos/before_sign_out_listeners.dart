import 'package:church_admin/church_admin.dart';

class BeforeSignOutListeners {
  static const Duration _timeoutForAllListeners = Duration(seconds: 5);

  final List<Future<void> Function()> _listeners = [];

  void add(Future<void> Function() listener) => _listeners.add(listener);

  void remove(Future<void> Function() listener) => _listeners.remove(listener);

  Future<void> runAllLoggingFailuresWithinTimeout() => Future.wait([
    for (final listener in [..._listeners])
      Future.sync(listener).logWarningInsteadOfThrowing(),
  ]).timeout(_timeoutForAllListeners).logWarningInsteadOfThrowing();
}
