import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/foundation.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

class SentryInit implements Initializer {
  const SentryInit();

  @override
  Future<void> initialize() async {
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
}
