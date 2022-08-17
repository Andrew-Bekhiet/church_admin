import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/firebase_options.dart';
import 'package:church_admin/graphql/church_admin_link.dart';
import 'package:churchdata_core/churchdata_core.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' hide Notification;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:rxdart/rxdart.dart';
import 'package:timeago/timeago.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initializeChurchAdmin();

  runApp(const ChurchAdminApp());
}

Completer<void> _initialization = Completer();
bool _initializing = false;

Future<void> initializeChurchAdmin() async {
  if (_initializing) return _initialization.future;
  _initializing = true;

  await dotenv.load();

  await Hive.initFlutter();

  await initializeFirebase();

  GetIt.I.registerSingleton<HiveInterface>(Hive);

  GetIt.I.registerSingleton<UserSettings>(UserSettings(), signalsReady: true);
  await GetIt.I.isReady<UserSettings>();

  await registerGraphQLClient();

  await initCore(
    sentryDSN: dotenv.env['SENTRY_DSN']!,
    userBoxCipher: await EncryptionService.getHiveCipher(
      boxName: 'User',
    ),
    overrides: {
      AuthRepository: () {
        final instance = CAAuthRepository();

        GetIt.I.registerSingleton<CAAuthRepository>(
          instance,
          signalsReady: true,
          dispose: (a) => a.dispose(),
        );

        return instance;
      },
      DatabaseRepository: () {
        final instance = CADatabaseRepository();

        GetIt.I.registerSingleton<CADatabaseRepository>(instance);

        return instance;
      },
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

  GetIt.I.registerSingleton<LocalAuthService>(
    LocalAuthService(),
    dispose: (l) => l.dispose(),
  );

  GetIt.I.registerSingleton<GoRouterRefreshStream>(
    GoRouterRefreshStream(
      Rx.combineLatest3(
        CAAuthRepository.I.userStream,
        CAAuthRepository.I.userDataStream,
        LocalAuthService.I.refreshUIStream.startWith(null),
        //Just notify when any stream emits
        (a, b, c) => [a, b, c],
      ),
    ),
    dispose: (g) => g.dispose(),
  );

  GetIt.I.registerSingleton<DefaultViewableObjectService>(
    CAViewableObjectService(
      ChurchAdminApp.router,
    ),
  );

  setLocaleMessages('ar', ArMessages());

  return _initialization.complete();
}

Future<void> registerGraphQLClient() async {
  GetIt.I.registerSingleton<GraphQLClient>(
    GraphQLClient(
      cache: GraphQLCache(
        store: HiveStore(
          await GetIt.I<HiveInterface>().openBox(
            'cache',
            encryptionCipher: await EncryptionService.getHiveCipher(
              boxName: 'cache',
            ),
          ),
        ),
      ),
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
      link: ChurchAdminLink(
        url: dotenv.env['HASURA_SERVER']!,
      ),
    ),
  );
}

Future<void> initializeFirebase() async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  await FirebaseAppCheck.instance
      .activate(webRecaptchaSiteKey: webRecaptchaSiteKey);
  await FirebaseAppCheck.instance.setTokenAutoRefreshEnabled(true);

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

  registerFirebaseDependencies();
}

void registerFirebaseDependencies() {
  GetIt.I.registerSingleton<GoogleSignIn>(GoogleSignIn());
  GetIt.I.registerSingleton<FirebaseAuth>(FirebaseAuth.instance);
  GetIt.I.registerSingleton<FirebaseDatabase>(FirebaseDatabase.instance);
  GetIt.I.registerSingleton<FirebaseFunctions>(
    FirebaseFunctions.instanceFor(region: 'europe-west6'),
  );
  GetIt.I.registerSingleton<FirebaseMessaging>(FirebaseMessaging.instance);
  GetIt.I
      .registerSingleton<FirebaseDynamicLinks>(FirebaseDynamicLinks.instance);
}
