import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:graphql/client.dart';
import 'package:shorebird_code_push/shorebird_code_push.dart';

class LoggingService {
  static LoggingService get I =>
      globalProviderContainer.read(loggingServiceProvider);

  final List<LoggingProvider> providers;

  final LoggingSettingsStore _settingsStore;

  List<LoggingProvider> _enabledProviders = [];

  StreamSubscription<void>? _featureFlagsSubscription;

  void Function(FlutterErrorDetails details)? _previousOnError;

  late final Interceptor dioInterceptor = DioLoggingInterceptor(this);

  late final Link loggingLink = LoggingLink(this);

  List<NavigatorObserver> get navigatorObservers => _enabledProviders
      .expand((provider) => provider.navigatorObservers)
      .toList();

  LoggingService(this.providers, this._settingsStore);

  void _onFlutterError(FlutterErrorDetails details) {
    final message = details.exceptionAsString();

    unawaited(
      _forEachEnabledProvider(
        (provider) => provider.recordStep(LoggingLevel.error, message, null),
      ),
    );

    _previousOnError?.call(details);
  }

  Future<void> initialize() async {
    final settings = await _settingsStore.read();

    _enabledProviders = providers
        .where((provider) => provider.isEnabledBy(settings))
        .toList();

    await _forEachEnabledProvider(
      (provider) => provider.initialize(settings),
    );

    _previousOnError = FlutterError.onError;
    FlutterError.onError = _onFlutterError;
    ErrorWidget.builder = (details) => CAErrorWidget(details: details);

    await _tagShorebirdPatch();
  }

  Future<void> _tagShorebirdPatch() async {
    try {
      final patch = await ShorebirdUpdater().readCurrentPatch();

      if (patch case final Patch patch) {
        await setGlobalTags({'shorebirdPatchNumber': '${patch.number}'});
      }
    } catch (_) {
      return;
    }
  }

  Future<void> dispose() async {
    await _featureFlagsSubscription?.cancel();
    _featureFlagsSubscription = null;

    if (FlutterError.onError == _onFlutterError) {
      FlutterError.onError = _previousOnError;
    }
  }

  Future<void> startSyncingWithFeatureFlags() async {
    await _syncWithFeatureFlags();

    _featureFlagsSubscription = FeatureFlagsRepository.I.onConfigChanged.listen(
      (_) => unawaited(_syncWithFeatureFlags()),
    );
  }

  Future<void> _syncWithFeatureFlags() async {
    await _settingsStore.write(FeatureFlagsRepository.I.loggingSettings);
    await refreshGlobalContext();
  }

  Future<void> refreshGlobalContext() async {
    await _forEachEnabledProvider(
      (provider) => provider.setGlobalContext(
        {
          'Feature Flags': FeatureFlagsRepository.I.toJson(),
          'UserPreferences': UserPreferencesService.I.toJson(),
        },
      ),
    );
  }

  Future<void> setGlobalTags(Map<String, String> tags) async {
    await _forEachEnabledProvider(
      (provider) => provider.setGlobalTags(tags),
    );
  }

  Future<void> identify(LoggingUser? user) async {
    await _forEachEnabledProvider((provider) => provider.identify(user));
  }

  Future<void> log(LoggingLevel level, LogRecord record) async {
    final message = _formatRecordMessage(record);

    if (message.isNotEmpty) {
      await _forEachEnabledProvider(
        (provider) => provider.recordStep(level, message, record.data),
      );
    }

    if (level >= LoggingLevel.exception) {
      final contexts = {
        ...?record.data,
        'moduleName': record.moduleName,
        'eventName': record.eventName,
      };

      await _forEachEnabledProvider(
        (provider) => provider.captureException(record, contexts),
      );
    }

    await _forEachEnabledProvider(
      (provider) => provider.log(level, message, record.data),
    );
  }

  Future<void> _forEachEnabledProvider(
    Future<void> Function(LoggingProvider provider) action,
  ) => Future.wait(_enabledProviders.map(action));

  String _formatRecordMessage(LogRecord record) {
    final msgBuilder = StringBuffer();

    if (record.moduleName != null) {
      msgBuilder.write('[${record.moduleName}]: ');
    }

    if (record.eventName != null) {
      msgBuilder.write('${record.eventName}: ');
    }

    if (record.message != null) {
      msgBuilder.write(record.message);
    }

    return msgBuilder.toString();
  }

  Future<void> fine(LogRecord record) async {
    await log(LoggingLevel.fine, record);
  }

  Future<void> config(LogRecord record) async {
    await log(LoggingLevel.config, record);
  }

  Future<void> info(LogRecord record) async {
    await log(LoggingLevel.info, record);
  }

  Future<void> warning(LogRecord record) async {
    await log(LoggingLevel.warning, record);
  }

  Future<void> exception(LogRecord record) async {
    await log(LoggingLevel.exception, record);
  }

  Future<void> error(LogRecord record) async {
    await log(LoggingLevel.error, record);
  }

  Future<void> showErrorDialogAndReport(
    BuildContext context,
    LogRecord record,
  ) async {
    unawaited(
      showDialog(
        context: context,
        builder: (context) => CAErrorDialog(exception: record.error!),
      ),
    );

    await error(record);
  }
}
