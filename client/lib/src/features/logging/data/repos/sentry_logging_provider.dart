import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

class SentryLoggingProvider implements LoggingProvider {
  @override
  late final List<NavigatorObserver> navigatorObservers = [
    SentryNavigatorObserver(),
  ];

  @override
  bool isEnabledBy(LoggingSettings settings) => settings.enableSentry;

  @override
  Future<void> initialize(LoggingSettings settings) async {
    await SentryFlutter.init(
      (options) => options
        ..dsn = globalProviderContainer.read(secretsServiceProvider).sentryDSN
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
        ..enableLogs = true
        ..enableUserInteractionTracing = true,
    );
  }

  @override
  Future<void> identify(LoggingUser? user) async {
    await Sentry.configureScope(
      (scope) => scope.setUser(
        switch (user) {
          null => null,
          final user => SentryUser(
            id: user.id,
            email: user.email,
            name: user.name,
            data: user.toJson()
              ..remove('id')
              ..remove('email')
              ..remove('name'),
          ),
        },
      ),
    );
  }

  @override
  Future<void> setGlobalContext(Json contexts) async {
    await Sentry.configureScope(
      (scope) async => Future.wait(
        contexts.entries.map((e) async => scope.setContexts(e.key, e.value)),
      ),
    );
  }

  @override
  Future<void> setGlobalTags(Map<String, String> tags) async {
    await Sentry.configureScope(
      (scope) async => Future.wait(
        tags.entries.map((e) async => scope.setTag(e.key, e.value)),
      ),
    );
  }

  @override
  Future<void> recordStep(
    LoggingLevel level,
    String message,
    Json? data,
  ) async {
    await Sentry.addBreadcrumb(
      Breadcrumb(level: level._sentryLevel, message: message, data: data),
    );
  }

  @override
  Future<void> captureException(LogRecord record, Json contexts) async {
    await Sentry.captureException(
      record.error,
      stackTrace: record.stackTrace,
      hint: Hint.withMap({'data': record.data}),
      withScope: (scope) async {
        await Future.wait(
          contexts.entries.map((e) async => scope.setContexts(e.key, e.value)),
        );
      },
    );
  }

  @override
  Future<void> log(
    LoggingLevel level,
    String message,
    Json? attributes,
  ) async {
    if (!FeatureFlagsRepository.I.useSentryLogs) {
      return;
    }

    final logFn = switch (level) {
      LoggingLevel.error => Sentry.logger.fatal,
      LoggingLevel.exception => Sentry.logger.error,
      LoggingLevel.warning => Sentry.logger.warn,
      LoggingLevel.info => Sentry.logger.info,
      LoggingLevel.fine || LoggingLevel.config => Sentry.logger.debug,
    };

    logFn(
      message,
      attributes: attributes?.map(
        (key, value) => MapEntry(
          key,
          switch (value) {
            final bool v => SentryAttribute.bool(v),
            final int v => SentryAttribute.int(v),
            final double v => SentryAttribute.double(v),
            final String v => SentryAttribute.string(v),
            final Object? v => SentryAttribute.string(v.toString()),
          },
        ),
      ),
    );
  }
}

extension on LoggingLevel {
  SentryLevel get _sentryLevel => switch (this) {
    LoggingLevel.fine || LoggingLevel.config => SentryLevel.debug,
    LoggingLevel.info => SentryLevel.info,
    LoggingLevel.warning => SentryLevel.warning,
    LoggingLevel.exception => SentryLevel.error,
    LoggingLevel.error => SentryLevel.fatal,
  };
}
