import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart' hide Notification;
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

Future<void> main() async {
  debugPrint('App starting...');
  
  FlutterNativeSplash.preserve(
    widgetsBinding: WidgetsFlutterBinding.ensureInitialized(),
  );

  debugPrint('Initializing services...');
  try {
    await InitializationService.I.initialize();
    debugPrint('Services initialized successfully');
  } catch (e, stackTrace) {
    // Log initialization error but continue
    debugPrint('Initialization error: $e');
    Sentry.captureException(e, stackTrace: stackTrace);
  }

  debugPrint('Showing splash screen...');
  runApp(
    UncontrolledProviderScope(
      container: globalProviderContainer,
      child: SentryWidget(child: const ChurchAdminSplashScreen()),
    ),
  );
  FlutterNativeSplash.remove();

  debugPrint('Waiting for auth to load...');
  try {
    // Add timeout to prevent infinite waiting
    await AuthBloc.I.loaded.timeout(
      const Duration(seconds: 10),
      onTimeout: () {
        debugPrint('Auth loading timed out, proceeding anyway');
        return;
      },
    );
    debugPrint('Auth loaded successfully');
  } catch (e, stackTrace) {
    // Log auth loading error but continue
    debugPrint('Auth loading error: $e');
    Sentry.captureException(e, stackTrace: stackTrace);
  }

  debugPrint('Starting main app...');
  runApp(
    UncontrolledProviderScope(
      container: globalProviderContainer,
      child: SentryWidget(child: const ChurchAdminApp()),
    ),
  );
}
