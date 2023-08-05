import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final initializationServiceProvider = Provider<InitializationService>(
  (ref) => InitializationService._(),
);

class InitializationService {
  static InitializationService get I =>
      globalProviderContainer.read(initializationServiceProvider);

  static const Set<Initializer> steps = {
    UsePathUrlStrategyInit(),
    SentryInit(),
    PackageInfoInit(),
    DeviceInfoInit(),
    HiveInit(),
    FirebaseInit(),
    FMTCInit(),
    IntlLocaleMessagesInit(),
  };

  InitializationService._();

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
