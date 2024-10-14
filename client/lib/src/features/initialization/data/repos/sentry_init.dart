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
        ..diagnosticLevel = SentryLevel.warning
        ..environment = kReleaseMode ? 'Production' : 'Debug'
        ..attachScreenshot = true
        ..attachViewHierarchy = true
        ..screenshotQuality = SentryScreenshotQuality.medium
        ..enableUserInteractionTracing = true,
    );
  }
}
