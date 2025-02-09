import 'dart:async';
import 'package:flutter/material.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart' hide Notification;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

   WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await InitializationService.I.initialize();

  await AuthService.I.userStream.first;

  runApp(
    UncontrolledProviderScope(
      container: globalProviderContainer,
      child: const SentryWidget(
        child: ChurchAdminApp(),
      ),
    ),
  );

  Future.delayed(const Duration(seconds:2), FlutterNativeSplash.remove);
}
