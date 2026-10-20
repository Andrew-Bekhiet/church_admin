import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/foundation.dart';

class RouterRefreshStream with ChangeNotifier {
  static RouterRefreshStream get I =>
      globalProviderContainer.read(routerRefreshStreamProvider);

  late final StreamSubscription<void> _listener;

  RouterRefreshStream(Stream<void> stream) {
    notifyListeners();
    _listener = stream.asBroadcastStream().listen((_) => notifyListeners());
  }

  @override
  Future<void> dispose() async {
    await _listener.cancel();

    super.dispose();
  }
}
