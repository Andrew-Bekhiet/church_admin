import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:graphql/client.dart';

class LoggingService {
  static LoggingService get I =>
      globalProviderContainer.read(loggingServiceProvider);

  final List<LoggingProvider> providers;

  late final List<NavigatorObserver> navigatorObservers = providers
      .expand((provider) => provider.navigatorObservers)
      .toList();

  late final Interceptor dioInterceptor = DioLoggingInterceptor(this);

  late final Link loggingLink = LoggingLink(this);

  LoggingService(this.providers) {
    FlutterError.onError = _onFlutterError;
    ErrorWidget.builder = (details) => CAErrorWidget(details: details);
  }

  Future<void> _onFlutterError(FlutterErrorDetails flutterError) async {
    await error(
      LogRecord(
        message: flutterError.exceptionAsString(),
        error: flutterError.exception,
        stackTrace: flutterError.stack,
      ),
    );
  }

  Future<void> initialize() async {
    await _forEachProvider((provider) => provider.initialize());
  }

  Future<void> identify(LoggingUser? user) async {
    await _forEachProvider((provider) => provider.identify(user));
  }

  Future<void> log(LoggingLevel level, LogRecord record) async {
    final message = _formatRecordMessage(record);

    if (message.isNotEmpty) {
      await _forEachProvider(
        (provider) => provider.recordStep(level, message, record.data),
      );
    }

    if (level >= LoggingLevel.exception) {
      final contexts = Json.from({
        ...?record.data,
        'moduleName': record.moduleName,
        'eventName': record.eventName,
        'Feature Flags': FeatureFlagsRepository.I.toJson(),
        'UserPreferences': UserPreferencesService.I.toJson(),
      });

      await _forEachProvider(
        (provider) => provider.captureException(record, contexts),
      );
    }

    await _forEachProvider(
      (provider) => provider.log(level, message, record.data),
    );
  }

  Future<void> _forEachProvider(
    Future<void> Function(LoggingProvider provider) action,
  ) => Future.wait(providers.map(action));

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
