import 'dart:async';

import 'package:flutter/foundation.dart';

class GoRouterRefreshStream extends ChangeNotifier {
  late final StreamSubscription<void> _listener;

  GoRouterRefreshStream(Stream<void> stream) {
    notifyListeners();
    _listener = stream.asBroadcastStream().listen((_) => notifyListeners());
  }

  @override
  Future<void> dispose() async {
    await _listener.cancel();

    super.dispose();
  }
}
