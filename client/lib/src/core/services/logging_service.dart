import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql/client.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

export 'logging/dio_logging_interceptor.dart';
export 'logging/logging_link.dart';
export 'logging/models.dart';

class LoggingService extends BlocObserver {
  static LoggingService get I =>
      globalProviderContainer.read(loggingServiceProvider);

  final NavigatorObserver navigatorObserver = SentryNavigatorObserver();

  late final Interceptor dioInterceptor = DioLoggingInterceptor(this);

  late final Link loggingLink = LoggingLink(this);

  LoggingService({required String sentryDSN}) {
    FlutterError.onError = _onFlutterError;
    ErrorWidget.builder = _errorWidgetBuilder;

    _initSentry(sentryDSN);
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

  Widget _errorWidgetBuilder(FlutterErrorDetails error) {
    _onFlutterError(error);

    return Material(
      type: MaterialType.card,
      child: Center(
        child: Text(
          'حدث خطأ:\n${error.summary}',
        ),
      ),
    );
  }

  void _initSentry(String sentryDSN) {
    SentryFlutter.init(
      (options) => options
        ..dsn = sentryDSN
        ..environment = kReleaseMode ? 'release' : 'debug'
        ..enableAutoPerformanceTracing = true
        ..sendDefaultPii = true
        ..enableTimeToFullDisplayTracing = true
        ..anrEnabled = true
        ..debug = false
        ..enableNativeCrashHandling = true
        ..enableDeduplication = true
        ..attachThreads = true
        ..enableWindowMetricBreadcrumbs = true
        ..reportSilentFlutterErrors = true
        ..attachScreenshot = true
        ..screenshotQuality = SentryScreenshotQuality.low
        ..attachViewHierarchy = true
        ..enableUserInteractionTracing = true,
    );
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);

    exception(
      LogRecord(
        moduleName: bloc.runtimeType.toString(),
        error: error,
        stackTrace: stackTrace,
      ),
    );
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);

    config(
      LogRecord(
        moduleName: bloc.runtimeType.toString(),
        eventName: event.runtimeType.toString(),
        data: {'event': event.toString()},
      ),
    );
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);

    _maybeIdentifyUser(transition);

    final event = transition.event;
    final currentState = transition.currentState;
    final nextState = transition.nextState;

    info(
      LogRecord(
        moduleName: bloc.runtimeType.toString(),
        eventName: event.runtimeType.toString(),
        data: {
          'event': event.toString(),
          'previousState': currentState.toString(),
          'currentState': nextState.toString(),
        },
      ),
    );
  }

  void _maybeIdentifyUser(Transition transition) {
    if (transition is! Transition<AuthEvent, AuthState>) {
      return;
    }

    final nextState = transition.nextState.unwrapped;
    final currentState = transition.currentState.unwrapped;

    final sentryUser = switch ((currentState, nextState)) {
      (_, AuthAuthenticated(:final authUser, :final userData))
          when currentState is! AuthAuthenticated =>
        SentryUser(
          id: authUser.uid,
          email: authUser.email,
          name: userData?.name,
          data: {
            'emailVerified': authUser.emailVerified,
            'claims': authUser.filteredClaims,
            'isMultiFactorEnabled': authUser.isMultiFactorEnabled,
            'permissions': userData?.permissions.toList(),
            'adminOn': userData?.adminOn?.map((a) => a.toJson()).toList(),
          },
        ),
      (AuthAuthenticated(), _) when nextState is! AuthAuthenticated => null,
      _ => false,
    };

    if (sentryUser is SentryUser?) {
      Sentry.configureScope((scope) => scope.setUser(sentryUser));
    }
  }

  Future<void> log(LoggingLevel level, LogRecord record) async {
    final message = _getRecordMessage(record);

    if (message.isNotEmpty) {
      await Sentry.addBreadcrumb(
        Breadcrumb(
          level: level.sentryLevel,
          message: message,
          data: record.data,
        ),
      );
    }

    if (level >= LoggingLevel.exception) {
      await Sentry.captureException(
        record.error,
        stackTrace: record.stackTrace,
        hint: Hint.withMap({'data': record.data}),
        withScope: (scope) async {
          await _configureScopeWithRecord(scope, record);
          await _configureScopeWithFeatureFlags(scope);
          await _configureScopeWithUserSettings(scope);
        },
      );
    }
  }

  String _getRecordMessage(LogRecord record) {
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

  Future<void> _configureScopeWithRecord(Scope scope, LogRecord record) async {
    await Future.wait(
      {
        ...?record.data,
        'moduleName': record.moduleName,
        'eventName': record.eventName,
      }.entries.map((e) => scope.setContexts(e.key, e.value)).toList(),
    );
  }

  Future<void> _configureScopeWithFeatureFlags(Scope scope) async {
    await scope.setContexts('Feature Flags', FeatureFlagsRepository.I.toJson());
  }

  Future<void> _configureScopeWithUserSettings(Scope scope) async {
    await scope.setContexts('UserSettings', UserSettingsService.I.toJson());
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
