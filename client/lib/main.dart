import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart' hide Notification;
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

Future<void> main() async {
  FlutterNativeSplash.preserve(
    widgetsBinding: WidgetsFlutterBinding.ensureInitialized(),
  );

  await InitializationService.I.initialize();
  runApp(
    UncontrolledProviderScope(
      container: globalProviderContainer,
      child: SentryWidget(child: const ChurchAdminSplashScreen()),
    ),
  );
  FlutterNativeSplash.remove();

  await AuthBloc.I.loaded.whenComplete(
    () {
      runApp(
        UncontrolledProviderScope(
          container: globalProviderContainer,
          child: SentryWidget(child: const ChurchAdminApp()),
        ),
      );
    },
  );
}
