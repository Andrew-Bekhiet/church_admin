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
    FirebaseInit(
      kEmulatorsHost: String.fromEnvironment('FIREBASE_EMULATORS_HOST'),
    ),
    FeatureFlagsInit(),
    LegacyTileCacheDeletionInit(),
    IntlLocaleMessagesInit(),
    AndroidAlarmManagerInit(),
    FlutterLocalNotificationsInit(),
    BlocObserverInit(),
    LoggingSyncInit(),
    ImageUrlCacheMigrationInit(),
  };

  InitializationService();

  Future<void> initialize() async {
    if (_isInitialized) return _initializationCompleter.future;

    _isInitialized = true;

    final List<(Initializer, Object, StackTrace)> exceptions = [];

    for (final step in steps) {
      try {
        await step.initialize();
      } catch (e, stackTrace) {
        exceptions.add((step, e, stackTrace));
      }
    }

    await _reportInitExceptions(exceptions);

    return _initializationCompleter.complete();
  }

  Future<void> _reportInitExceptions(
    List<(Initializer, Object, StackTrace)> exceptions,
  ) async {
    await exceptions.map(
      (exception) async {
        final (step, e, stackTrace) = exception;

        await LoggingService.I.warning(
          LogRecord(
            message: 'Initialization step failed',
            moduleName: '$InitializationService',
            data: {'step': step.runtimeType.toString()},
            error: e,
            stackTrace: stackTrace,
          ),
        );
      },
    ).wait;
  }
}
