import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:riverpod/riverpod.dart';

final initializationServiceProvider = Provider<InitializationService>(
  (ref) => InitializationService(),
);

class InitializationService {
  static InitializationService get I =>
      globalProviderContainer.read(initializationServiceProvider);

  Set<Initializer> get steps => const {
        WebNavigationInit(),
        SentryInit(),
        PackageInfoInit(),
        DeviceInfoInit(),
        HiveInit(),
        FirebaseInit(),
        FMTCInit(),
        IntlLocaleMessagesInit(),
        AndroidAlarmManagerPluginInit(),
        FlutterLocalNotificationsPluginInit(),
      };

  InitializationService();

  final Completer<void> _initializationCompleter = Completer();
  bool _isInitialized = false;

  Future<void> initialize() async {
    if (_isInitialized) return _initializationCompleter.future;

    _isInitialized = true;

    for (final step in steps) {
      await step.initialize();
    }

    await AuthService.I.userStream.first;

    return _initializationCompleter.complete();
  }
}
