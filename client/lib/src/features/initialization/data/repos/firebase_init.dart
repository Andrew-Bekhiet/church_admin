import 'package:church_admin/church_admin.dart';
import 'package:church_admin/default_firebase_options.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';

class FirebaseInit implements Initializer {
  final String? kEmulatorsHost;

  const FirebaseInit({this.kEmulatorsHost});

  @override
  Future<void> initialize() async {
    await _initFirebaseApp();

    await _initFirebaseAppCheck();

    _initFirebaseFirebaseCloudMessaging();

    if (kEmulatorsHost case final kEmulatorsHost?
        when kEmulatorsHost.isNotEmpty && kDebugMode) {
      await _initializeFirebaseEmulators(kEmulatorsHost);
    }
  }

  Future<void> _initFirebaseApp() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }

  Future<void> _initFirebaseAppCheck() async {
    await FirebaseAppCheck.instance.activate(
      providerAndroid: kDebugMode
          ? const AndroidDebugProvider()
          : const AndroidPlayIntegrityProvider(),
      providerApple: kDebugMode
          ? const AppleDebugProvider()
          : const AppleAppAttestWithDeviceCheckFallbackProvider(),
      providerWeb: ReCaptchaV3Provider(SecretsService.I.webRecaptchaSiteKey),
    );

    if (kDebugMode) {
      await FirebaseAuth.instance.setSettings(
        forceRecaptchaFlow: kDebugMode,
      );
    }

    await FirebaseAppCheck.instance.setTokenAutoRefreshEnabled(true);
  }

  Future<void> _initializeFirebaseEmulators(String kEmulatorsHost) async {
    await FirebaseAuth.instance.useAuthEmulator(kEmulatorsHost, 9099);
    FirebaseFunctions.instanceFor(
      region: 'europe-west6',
    ).useFunctionsEmulator(kEmulatorsHost, 5001);
    FirebaseFunctions.instance.useFunctionsEmulator(kEmulatorsHost, 5001);
    FirebaseDatabase.instance.useDatabaseEmulator(kEmulatorsHost, 9000);
  }

  void _initFirebaseFirebaseCloudMessaging() {
    FirebaseMessaging.onBackgroundMessage(
      NotificationsServiceCallbacks.onBackgroundMessageReceived,
    );
  }
}
