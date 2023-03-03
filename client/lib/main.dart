import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/firebase_options.dart';
import 'package:churchdata_core/churchdata_core.dart'
    hide Json, LoggingService, Notification;
import 'package:cloud_functions/cloud_functions.dart';
import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' hide Notification;
import 'package:flutter_map_tile_caching/flutter_map_tile_caching.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:timeago/timeago.dart';
import 'package:universal_platform/universal_platform.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initializeChurchAdmin();

  runApp(
    ProviderScope(
      parent: globalProviderContainer,
      child: const ChurchAdminApp(),
    ),
  );
}

final Completer<void> _initialization = Completer();
bool _initializing = false;

Future<void> initializeChurchAdmin() async {
  if (_initializing) return _initialization.future;
  _initializing = true;

  final ref = globalProviderContainer;
  usePathUrlStrategy();

  await _initializeSentry();

  await _initializePackageInfo();

  await _initializeHive(ref);

  await _initializeFirebase(ref);

  await _initializeFMTC();

  _initializeLocalMessages();

  final authService = ref.read(authServiceProvider);
  await authService.userStream.first;

  return _initialization.complete();
}

Future<void> _initializePackageInfo() async {
  packageInfoPluginInstance = await PackageInfo.fromPlatform();
}

Future<void> _initializeSentry() async {
  await SentryFlutter.init(
    (options) => options
      ..dsn = globalProviderContainer.read(secretsServiceProvider).sentryDSN
      ..diagnosticLevel = SentryLevel.warning
      ..environment = kReleaseMode ? 'Production' : 'Debug',
  );
}

Future<void> _initializeHive(ProviderContainer ref) async {
  final hive = ref.read(hiveProvider);

  await hive.initFlutter();
  hive.registerAdapter(NotificationSettingAdapter());

  await hive.openBox<Map?>(
    'cache',
    encryptionCipher: await ref.read(encryptionServiceProvider).getHiveCipher(
          boxName: 'cache',
        ),
  );
  await hive.openBox('Settings');
  await hive.openBox<String>('ImageUrlsCache');
  await hive.openLazyBox<Notification>('Notifications');
}

Future<void> _initializeFirebase(ProviderContainer ref) async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  if (!UniversalPlatform.isWindows) {
    await FirebaseAppCheck.instance.activate(
      webRecaptchaSiteKey: SecretsService.I.webRecaptchaSiteKey,
    );
    await FirebaseAppCheck.instance.setTokenAutoRefreshEnabled(true);
  }

  String? kEmulatorsHost;

  if (kDebugMode) {
    final devBox = await ref.read(hiveProvider).openBox('Dev');
    kEmulatorsHost = devBox.get('kEmulatorsHost');

    if (kEmulatorsHost != null) {
      // await FirebaseAuth.instance.useAuthEmulator(kEmulatorsHost, 9099);
      // FirebaseDatabase.instance.useDatabaseEmulator(kEmulatorsHost, 9000);
      FirebaseFunctions.instanceFor(region: 'europe-west6')
          .useFunctionsEmulator(kEmulatorsHost, 5001);
      FirebaseFunctions.instance.useFunctionsEmulator(kEmulatorsHost, 5001);
    }
  }
}

Future<void> _initializeFMTC() async {
  await FMTC.initialise(
    settings: FMTCSettings(
      defaultTileProviderSettings: FMTCTileProviderSettings(
        cachedValidDuration: const Duration(days: 30),
      ),
    ),
  );

  await FMTC.instance.call('default').manage.createAsync();
}

void _initializeLocalMessages() {
  setLocaleMessages('ar', ArMessages());
}
