import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/firebase_options.dart';
import 'package:church_admin/graphql/links.dart';
import 'package:churchdata_core/churchdata_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' hide Notification;
import 'package:flutter_map_tile_caching/flutter_map_tile_caching.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:local_auth/local_auth.dart';
import 'package:rxdart/rxdart.dart';
import 'package:timeago/timeago.dart';
import 'package:universal_platform/universal_platform.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initializeChurchAdmin();

  runApp(const ChurchAdminApp());
}

final Completer<void> _initialization = Completer();

bool _initializing = false;

Future<void> initializeChurchAdmin() async {
  if (_initializing) return _initialization.future;
  _initializing = true;

  usePathUrlStrategy();

  _initializeSecretsRepo();

  await _initializeEncryptionService();

  await _initializeHive();

  await _initializeUserSettings();

  await _initializeFirebase();

  await initCore(
    sentryDSN: SecretsService.I.sentryDSN,
    userBoxCipher: await EncryptionService.I.getHiveCipher(
      boxName: 'User',
    ),
    overrides: {
      NotificationsService: () {
        final instance = CANotificationsService();

        GetIt.I.registerSingleton<CANotificationsService>(
          instance,
          signalsReady: true,
          dispose: (n) => n.dispose(),
        );

        return instance;
      },
      FunctionsService: () {
        final instance = CAFunctionsService();

        GetIt.I.registerSingleton<CAFunctionsService>(instance);

        return instance;
      },
      ThemingService: () {
        final instance = CAThemingService();

        GetIt.I.registerSingleton<CAThemingService>(
          instance,
          dispose: (t) => t.dispose(),
        );

        return instance;
      },
      ShareService: () {
        final instance = CAShareService();

        GetIt.I.registerSingleton<CAShareService>(instance);

        return instance;
      },
      UpdatesService: UpdatesService.new,
    },
  );
  _initializeDio();

  _initializeConnectivityService();

  await _initializeGraphQLClient();

  _initializeCADatabaseService();

  _initializeAuthService();

  _initializeLocalAuthService();

  _initializePersistenceService();

  _initializeGoRouterRefreshStream();

  _initializeViewableObjectService();

  _initializeImagePickerService();
  _initializeContactsService();
  _initializePhoneNumberService();

  await _initializeFMTC();

  _initializeLocalMessages();

  await AuthService.instance.userStream.first;

  return _initialization.complete();
}

void _initializeAuthService() {
  GetIt.I.registerSingleton<AuthCache>(
    AuthCache(secureStorage: const FlutterSecureStorage()),
  );
  GetIt.I.registerSingleton<AuthAdapter>(FirebaseAuthAdapter());

  GetIt.I.registerSingleton<AuthService>(
    AuthService(),
    dispose: (a) async => a.dispose(),
  );
}

void _initializeCADatabaseService() {
  GetIt.I.registerSingleton<CADatabaseRepository>(const CADatabaseRepository());
}

void _initializeConnectivityService() {
  GetIt.I.registerSingleton<ConnectivityService>(
    ConnectivityService(
      connectivityPlugin: Connectivity(),
    ),
  );
}

void _initializeContactsService() {
  GetIt.I.registerSingleton<ContactsService>(const ContactsService());
}

void _initializeDio() {
  GetIt.I.registerSingleton<Dio>(Dio());
}

Future<void> _initializeEncryptionService() async {
  final encryptionServiceImpl = EncryptionServiceImpl();

  await encryptionServiceImpl.init();

  GetIt.I.registerSingleton<EncryptionService>(encryptionServiceImpl);
}

Future<void> _initializeFirebase() async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  if (!UniversalPlatform.isWindows) {
    await FirebaseAppCheck.instance.activate(
      webRecaptchaSiteKey: SecretsService.I.webRecaptchaSiteKey,
    );
    await FirebaseAppCheck.instance.setTokenAutoRefreshEnabled(true);
  }

  String? kEmulatorsHost;

  if (kDebugMode) {
    final devBox = await Hive.openBox('Dev');
    kEmulatorsHost = devBox.get('kEmulatorsHost');

    if (kEmulatorsHost != null) {
      // await FirebaseAuth.instance.useAuthEmulator(kEmulatorsHost, 9099);
      // FirebaseDatabase.instance.useDatabaseEmulator(kEmulatorsHost, 9000);
      FirebaseFunctions.instanceFor(region: 'europe-west6')
          .useFunctionsEmulator(kEmulatorsHost, 5001);
      FirebaseFunctions.instance.useFunctionsEmulator(kEmulatorsHost, 5001);
    }
  }

  _initializeFirebaseDependencies();
}

void _initializeFirebaseDependencies() {
  GetIt.I.registerSingleton<GoogleSignIn>(GoogleSignIn());

  /* if (UniversalPlatform.isDesktop) {
    FirebaseAuthPlatform.instance = FirebaseAuthDesktop.instance;
    FirebaseFunctionsPlatform.instance = FirebaseFunctionsDesktop(
      app: FirebaseFunctionsDesktop.instance.app,
      region: 'europe-west6',
    );
  } */

  GetIt.I.registerSingleton<FirebaseAuth>(FirebaseAuth.instance);
  GetIt.I.registerSingleton<FirebaseDatabase>(FirebaseDatabase.instance);
  GetIt.I.registerSingleton<FirebaseFirestore>(FirebaseFirestore.instance);
  GetIt.I.registerSingleton<FirebaseFunctions>(
    FirebaseFunctions.instanceFor(region: 'europe-west6'),
  );
  GetIt.I.registerSingleton<FirebaseMessaging>(FirebaseMessaging.instance);
  GetIt.I
      .registerSingleton<FirebaseDynamicLinks>(FirebaseDynamicLinks.instance);
}

Future<void> _initializeFMTC() async {
  FMTC.initialise(
    await RootDirectory.normalCache,
    settings: FMTCSettings(
      defaultTileProviderSettings: FMTCTileProviderSettings(
        cachedValidDuration: const Duration(days: 30),
      ),
    ),
  );

  GetIt.I.registerSingleton<FMTC>(FMTC.instance);
}

void _initializeGoRouterRefreshStream() {
  GetIt.I.registerSingleton<GoRouterRefreshStream>(
    GoRouterRefreshStream(
      Rx.combineLatest2(
        AuthService.instance.userStream,
        LocalAuthService.I.refreshUIStream.startWith(null),
        //Just notify when any stream emits
        (_, __) => Object(),
      ),
    ),
    dispose: (g) async => g.dispose(),
  );
}

Future<void> _initializeGraphQLClient() async {
  GetIt.I.registerSingleton<GraphQLClient>(
    GraphQLClient(
      defaultPolicies: DefaultPolicies(
        query: Policies(
          fetch: FetchPolicy.cacheAndNetwork,
        ),
        watchQuery: Policies(
          fetch: FetchPolicy.cacheAndNetwork,
        ),
        subscribe: Policies(
          fetch: FetchPolicy.cacheAndNetwork,
        ),
      ),
      link: Link.concat(
        AddAuthLink(url: SecretsService.I.hasuraServer),
        const LoggingLink(),
      ),
      cache: GraphQLCache(
        store: HiveStore(
          await GetIt.I<HiveInterface>().openBox(
            'cache',
            encryptionCipher: await EncryptionService.I.getHiveCipher(
              boxName: 'cache',
            ),
          ),
        ),
      ),
    ),
    dispose: (c) => c.link.dispose(),
  );
}

Future<void> _initializeHive() async {
  await Hive.initFlutter();

  GetIt.I.registerSingleton<HiveInterface>(Hive);
}

void _initializeImagePickerService() {
  GetIt.I.registerSingleton<ImagePickerService>(
    ImagePickerService(
      imageCropper: ImageCropper(),
      imagePicker: ImagePicker(),
    ),
  );
}

void _initializeLocalAuthService() {
  GetIt.I.registerSingleton<LocalAuthService>(
    LocalAuthService(localAuthPlugin: LocalAuthentication()),
    dispose: (l) async => l.dispose(),
  );
}

void _initializeLocalMessages() {
  setLocaleMessages('ar', ArMessages());
}

void _initializePersistenceService() {
  GetIt.I.registerSingleton(UserPersistenceService());
}

void _initializePhoneNumberService() {
  GetIt.I.registerSingleton<PhoneNumberService>(const PhoneNumberService());
}

void _initializeSecretsRepo() {
  GetIt.I.registerSingleton<SecretsService>(SecretsServiceImpl());
}

Future<void> _initializeUserSettings() async {
  GetIt.I.registerSingleton<UserSettingsService>(
    UserSettingsService(box: await Hive.openBox('Settings')),
  );
}

void _initializeViewableObjectService() {
  GetIt.I.registerSingleton<CAViewableObjectService>(
    CAViewableObjectService(
      ChurchAdminApp.router,
    ),
  );
  GetIt.I.registerSingleton<DefaultViewableObjectService>(
    GetIt.I<CAViewableObjectService>(),
  );
}
