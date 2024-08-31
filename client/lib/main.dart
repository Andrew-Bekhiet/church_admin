import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart' hide Notification;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await InitializationService.I.initialize();

  runApp(
    UncontrolledProviderScope(
      container: globalProviderContainer,
      child: SentryScreenshotWidget(
        child: SentryUserInteractionWidget(
          child: const ChurchAdminApp(),
        ),
      ),
    ),
  );
}
