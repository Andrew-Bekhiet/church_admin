import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/foundation.dart';

class GoRouterRefreshStream extends ChangeNotifier {
  static GoRouterRefreshStream get I =>
      globalProviderContainer.read(goRouterRefreshStreamProvider);

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
