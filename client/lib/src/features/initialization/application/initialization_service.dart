import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:riverpod/riverpod.dart';

final initializationServiceProvider = Provider<InitializationService>(
  (ref) => InitializationService(),
);

class InitializationService {
  static InitializationService get I =>
      globalProviderContainer.read(initializationServiceProvider);

  final Completer<void> _initializationCompleter = Completer();
  bool _isInitialized = false;

  Set<Initializer> get steps => const {
    WebNavigationInit(),
    LoggingInit(),
    PackageInfoInit(),
    DeviceInfoInit(),
    SembastInit(),
    FirebaseInit(),
    FeatureFlagsInit(),
    FMTCInit(),
    IntlLocaleMessagesInit(),
    AndroidAlarmManagerInit(),
    FlutterLocalNotificationsInit(),
    BlocObserverInit(),
    LoggingSyncInit(),
  };

  InitializationService();

  Future<void> initialize() async {
    if (_isInitialized) return _initializationCompleter.future;

    _isInitialized = true;

    final List<(Object, StackTrace)> exceptions = [];

    for (final step in steps) {
      try {
        await step.initialize();
      } catch (e, stackTrace) {
        exceptions.add((e, stackTrace));
      }
    }

    await _reportInitExceptions(exceptions);

    return _initializationCompleter.complete();
  }

  Future<void> _reportInitExceptions(
    List<(Object, StackTrace)> exceptions,
  ) async {
    await exceptions.map(
      (exception) async {
        final (e, stackTrace) = exception;

        await LoggingService.I.warning(
          LogRecord(
            message: 'Initialization step failed',
            moduleName: '$InitializationService',
            error: e,
            stackTrace: stackTrace,
          ),
        );
      },
    ).wait;
  }
}
