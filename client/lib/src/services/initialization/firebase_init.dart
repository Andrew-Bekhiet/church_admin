import 'package:church_admin/church_admin.dart';
import 'package:church_admin/firebase_options.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';

class FirebaseInit implements Initializer {
  const FirebaseInit();

  @override
  Future<void> initialize() async {
    await _initFirebaseApp();

    await _initFirebaseAppCheck();

    _initFirebaseFirebaseCloudMessaging();

    if (kDebugMode) await _initializeFirebaseEmulators();
  }

  Future<void> _initFirebaseApp() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }

  Future<void> _initFirebaseAppCheck() async {
    await FirebaseAppCheck.instance.activate(
      androidProvider:
          kDebugMode ? AndroidProvider.debug : AndroidProvider.playIntegrity,
      appleProvider:
          kDebugMode ? AppleProvider.debug : AppleProvider.deviceCheck,
      webProvider: ReCaptchaV3Provider(SecretsService.I.webRecaptchaSiteKey!),
    );

    await FirebaseAppCheck.instance.setTokenAutoRefreshEnabled(true);
  }

  Future<void> _initializeFirebaseEmulators() async {
    final devBox =
        await globalProviderContainer.read(hiveProvider).openBox('Dev');

    final kEmulatorsHost = devBox.get('kEmulatorsHost');

    if (kEmulatorsHost != null) {
      FirebaseFunctions.instanceFor(region: 'europe-west6')
          .useFunctionsEmulator(kEmulatorsHost, 5001);
      FirebaseFunctions.instance.useFunctionsEmulator(kEmulatorsHost, 5001);
    }
  }

  void _initFirebaseFirebaseCloudMessaging() {
    FirebaseMessaging.onBackgroundMessage(
      NotificationsServiceCallbacks.onBackgroundMessageReceived,
    );
  }
}
