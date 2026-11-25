import 'package:church_admin/church_admin.dart';

class BeforeSignOutListeners {
  static const Duration _timeoutForAllListeners = Duration(seconds: 5);

  final List<Future<void> Function()> _listeners = [];

  void Function() add(Future<void> Function() listener) {
    _listeners.add(listener);

    return () => _listeners.remove(listener);
  }

  Future<void> runAllBestEffortWithinTimeout() => (() => Future.wait([
    for (final listener in [..._listeners]) listener.runBestEffort(),
  ])).runBestEffort(within: _timeoutForAllListeners);
}
