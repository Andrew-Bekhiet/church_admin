import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/foundation.dart';
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
        FeatureFlagsInit(),
        FMTCInit(),
        IntlLocaleMessagesInit(),
        AndroidAlarmManagerPluginInit(),
        FlutterLocalNotificationsPluginInit(),
        BlocObserverInit(),
      };

  InitializationService();

  final Completer<void> _initializationCompleter = Completer();
  bool _isInitialized = false;

  Future<void> initialize() async {
    if (_isInitialized) return _initializationCompleter.future;

    _isInitialized = true;

    for (final step in steps) {
      try {
        await step.initialize();
      } catch (e, stackTrace) {
        // Log error but continue with other initialization steps
        debugPrint('Initialization step ${step.runtimeType} failed: $e');
        // Don't rethrow to allow app to continue
      }
    }

    return _initializationCompleter.complete();
  }
}
