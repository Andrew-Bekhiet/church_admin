import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/firebase_options.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:device_info_plus/device_info_plus.dart';
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
      child: SentryScreenshotWidget(
        child: SentryUserInteractionWidget(
          child: const ChurchAdminApp(),
        ),
      ),
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

  await _initializeAndroidDeviceInfo();

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

Future<void> _initializeAndroidDeviceInfo() async {
  androidDeviceInfoInstance = await DeviceInfoPlugin().androidInfo;
}

Future<void> _initializeSentry() async {
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

Future<void> _initializeHive(ProviderContainer ref) async {
  final hive = ref.read(hiveProvider);

  await hive.initFlutter('church_admin');
  hive.registerAdapter(NotificationSettingAdapter());

  await hive.openBox<Map?>(
    'GQLCache',
    encryptionCipher: await ref.read(encryptionServiceProvider).getHiveCipher(
          boxName: 'GQLCache',
        ),
  );
  await Future.wait([
    hive.openBox('Settings'),
    hive.openBox<String>(
      'ImageUrlsCache',
      encryptionCipher: await ref.read(encryptionServiceProvider).getHiveCipher(
            boxName: 'ImageUrlsCache',
          ),
    ),
    hive.openLazyBox<Notification>('Notifications'),
    hive.openBox<NotificationSetting>('NotificationsSettings'),
  ]);
}

Future<void> _initializeFirebase(ProviderContainer ref) async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  if (!UniversalPlatform.isDesktop) {
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
