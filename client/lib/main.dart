import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart' hide Notification;
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:posthog_flutter/posthog_flutter.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

Future<void> main() async {
  FlutterNativeSplash.preserve(
    widgetsBinding: WidgetsFlutterBinding.ensureInitialized(),
  );
  FontLicenses.register();

  try {
    await InitializationService.I.initialize();
  } catch (e, stackTrace) {
    unawaited(Sentry.captureException(e, stackTrace: stackTrace));
  }

  runApp(
    UncontrolledProviderScope(
      container: globalProviderContainer,
      child: PostHogWidget(
        child: SentryWidget(child: const ChurchAdminSplashScreen()),
      ),
    ),
  );
  FlutterNativeSplash.remove();

  await AuthBloc.I.loaded;

  runApp(
    UncontrolledProviderScope(
      container: globalProviderContainer,
      child: PostHogWidget(
        child: SentryWidget(
          child: ChurchAdminApp(
            routerConfig: $appRouter,
          ),
        ),
      ),
    ),
  );
}
