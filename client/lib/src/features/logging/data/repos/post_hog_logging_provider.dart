import 'package:church_admin/church_admin.dart';
import 'package:flutter/widgets.dart';
import 'package:posthog_flutter/posthog_flutter.dart';

class PostHogLoggingProvider implements LoggingProvider {
  final PostHogClient _postHogClient;

  bool _enableLogs = false;

  @override
  List<NavigatorObserver> get navigatorObservers => const [];

  Posthog get _postHog => _postHogClient.sdk;

  PostHogLoggingProvider(this._postHogClient);

  @override
  bool isEnabledBy(LoggingSettings settings) => settings.enablePostHog;

  @override
  Future<void> initialize(LoggingSettings settings) async {
    _enableLogs = settings.enablePostHogLogs;

    final secretsService = globalProviderContainer.read(
      secretsServiceProvider,
    );

    final config = PostHogConfig(secretsService.postHogToken)
      ..host = secretsService.postHogHost
      ..sessionReplay = true
      ..sessionReplayConfig.sampleRate = settings.sessionReplaySampleRate
      ..sessionReplayConfig.maskAllTexts = true
      ..sessionReplayConfig.maskAllImages = true
      ..sessionReplayConfig.maskAllPlatformViews = false
      ..sessionReplayConfig.textMaskPolicy =
          SessionReplayTextMaskPolicy.revealIconGlyphs
      ..surveys = true
      ..errorTrackingConfig.captureFlutterErrors = true
      ..errorTrackingConfig.capturePlatformDispatcherErrors = true
      ..errorTrackingConfig.captureNativeExceptions = true
      ..errorTrackingConfig.captureNativeCrashes = true
      ..errorTrackingConfig.captureIsolateErrors = true
      ..errorTrackingConfig.inAppIncludes.add('package:church_admin');

    await _postHogClient.setupUnlessAlreadySetUp(config);
  }

  @override
  Future<void> identify(LoggingUser? user) async {
    switch (user) {
      case null:
        await _postHogClient.resetUnlessAnonymous();

      case final user:
        await _postHogClient.identifyOrUpdateProperties(
          userId: user.id,
          properties: {
            ...user.properties,
            'email': user.email,
            'name': user.name,
          }.nonNullPairs,
        );
    }
  }

  @override
  Future<void> setGlobalContext(Json contexts) async {
    await _register(contexts.nonNullPairs);
  }

  @override
  Future<void> setGlobalTags(Map<String, String> tags) async {
    await _register(tags);
  }

  Future<void> _register(Map<String, Object> properties) async {
    await Future.wait(
      properties.entries.map((e) async => _postHog.register(e.key, e.value)),
    );
  }

  @override
  Future<void> recordStep(
    LoggingLevel level,
    String message,
    Json? data,
  ) async {
    await _postHog.addExceptionStep(
      message,
      properties: (data ?? {}).nonNullPairs,
    );
  }

  @override
  Future<void> captureException(LogRecord record, Json contexts) async {
    await _postHog.captureException(
      error: record.error ?? record.message ?? 'Unknown error',
      stackTrace: record.stackTrace,
      properties: contexts.nonNullPairs,
    );
  }

  @override
  Future<void> log(
    LoggingLevel level,
    String message,
    Json? attributes,
  ) async {
    if (!_enableLogs) return;

    await _postHog.captureLog(
      body: message,
      level: level._postHogLogSeverity,
      attributes: (attributes ?? {}).nonNullPairs,
    );
  }
}

extension on LoggingLevel {
  PostHogLogSeverity get _postHogLogSeverity => switch (this) {
    LoggingLevel.fine => PostHogLogSeverity.trace,
    LoggingLevel.config => PostHogLogSeverity.debug,
    LoggingLevel.info => PostHogLogSeverity.info,
    LoggingLevel.warning => PostHogLogSeverity.warn,
    LoggingLevel.exception => PostHogLogSeverity.error,
    LoggingLevel.error => PostHogLogSeverity.fatal,
  };
}
