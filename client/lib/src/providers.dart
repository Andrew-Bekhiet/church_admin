import 'package:church_admin/church_admin.dart';
import 'package:church_admin/graphql/links.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:dio/dio.dart';
import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/widgets.dart' hide Notification;
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_map_tile_caching/flutter_map_tile_caching.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:local_auth/local_auth.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:rxdart/rxdart.dart' hide Notification;
import 'package:zxcvbn/zxcvbn.dart';

import 'services/notifications/notifications_storage.dart';

ProviderContainer? _globalProviderContainer;

ProviderContainer get globalProviderContainer =>
    _globalProviderContainer ??= ProviderContainer();

@visibleForTesting
set globalProviderContainer(ProviderContainer? value) =>
    _globalProviderContainer = value;

@visibleForTesting
void resetGlobalProviderContainer() {
  _globalProviderContainer?.dispose();
  _globalProviderContainer = null;
}

@visibleForTesting
void initGlobalProviderContainer(List<Override> overrides) {
  globalProviderContainer = ProviderContainer(overrides: overrides);
}

late final PackageInfo packageInfoPluginInstance;
late final AndroidDeviceInfo androidDeviceInfoInstance;

final hiveProvider = Provider<HiveInterface>((ref) => Hive);

final encryptionServiceProvider = Provider<EncryptionService>((ref) {
  return const String.fromEnvironment('CI') == 'true'
      ? EncryptionServiceCIImpl()
      : EncryptionServiceImpl();
});

final Provider<DatabaseService> databaseServiceProvider =
    Provider<DatabaseService>(
  (ref) => DatabaseService(
    ref.watch(graphQLClientProvider),
  ),
);

final graphQLClientProvider = Provider<DBGraphQLClient>(
  (ref) => DBGraphQLClient(
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
      const LoggingLink(),
      AddAuthLink(
        getAuthService: () => globalProviderContainer.read(authServiceProvider),
        url: SecretsService.I.hasuraServer,
      ),
    ),
    cache: GraphQLCache(
      store: ref.watch(graphQLCacheStore),
    ),
    connectivityStream:
        ref.watch(connectivityServiceProvider).connectivityStream,
  ),
);

final graphQLCacheStore = Provider<HiveStore>(
  (ref) => HiveStore(
    ref.watch(hiveProvider).box('GQLCache'),
  ),
);

final connectivityPluginProvider = Provider<Connectivity>((ref) {
  return Connectivity();
});

final connectivityServiceProvider = Provider<ConnectivityService>(
  (ref) => ConnectivityService(
    connectivityPlugin: ref.watch(connectivityPluginProvider),
    dio: ref.watch(dioProvider),
    secretsService: ref.watch(secretsServiceProvider),
  ),
);

final secretsServiceProvider = Provider<SecretsService>(
  (ref) => const String.fromEnvironment('CI') == 'true'
      ? SecretsServiceCIImpl()
      : SecretsServiceImpl(),
);

final authServiceProvider = Provider<AuthService>(
  (ref) => AuthService(
    cache: AuthCache(secureStorage: ref.watch(secureStorageProvider)),
    adapter: FirebaseAuthAdapter(
      firebaseAuth: ref.watch(firebaseAuthProvider),
      googleSignIn: ref.watch(googleSignInProvider),
      databaseService: ref.watch(databaseServiceProvider),
    ),
    connectivityService: ref.watch(connectivityServiceProvider),
  ),
);

final googleSignInProvider = Provider<GoogleSignIn>((ref) => GoogleSignIn());

final loggingServiceProvider = Provider<LoggingService>(
  (ref) => LoggingService(),
);

final userSettingsServiceProvider = Provider<UserSettingsService>(
  (ref) => UserSettingsService(
    box: ref.read(hiveProvider).box('Settings'),
  ),
);

final firebaseAppCheckProvider = Provider((_) => FirebaseAppCheck.instance);
final firebaseAuthProvider = Provider((_) => FirebaseAuth.instance);
final firebaseDatabaseProvider = Provider((_) => FirebaseDatabase.instance);
final firebaseDynamicLinksProvider =
    Provider((_) => FirebaseDynamicLinks.instance);
final firebaseFunctionsProvider =
    Provider((_) => FirebaseFunctions.instanceFor(region: 'europe-west6'));
final firebaseMessagingProvider = Provider((_) => FirebaseMessaging.instance);

final dioProvider = Provider((_) => Dio());

final functionsServiceProvider = Provider<FunctionsService>(
  (ref) => FunctionsService(dio: ref.watch(dioProvider)),
);

final secureStorageProvider = Provider<FlutterSecureStorage>(
  (ref) => FlutterSecureStorage(
    aOptions: ref.read(currentPlatformServiceProvider).isAndroid
        ? AndroidOptions(
            sharedPreferencesName: 'secure_storage',
            encryptedSharedPreferences:
                androidDeviceInfoInstance.version.sdkInt >= 23,
          )
        : AndroidOptions.defaultOptions,
    webOptions: const WebOptions(
      dbName: 'secure_storage',
      publicKey: 'secure_storage_pub_key',
    ),
  ),
);

final localNotificationsPluginProvider =
    Provider<FlutterLocalNotificationsPlugin>(
  (ref) => FlutterLocalNotificationsPlugin(),
);

final notificationsServiceProvider = Provider<NotificationsService>(
  (ref) => NotificationsService(
    localNotificationsPlugin: ref.watch(localNotificationsPluginProvider),
    firebaseMessaging: ref.watch(firebaseMessagingProvider),
    userSettingsService: ref.watch(userSettingsServiceProvider),
    functionsService: ref.watch(functionsServiceProvider),
    getAuthService: () => globalProviderContainer.read(authServiceProvider),
    storage: ref.watch(notificationsStorageProvider),
    onForegroundMessageStream: FirebaseMessaging.onMessage,
    onMessageOpenedAppStream: FirebaseMessaging.onMessageOpenedApp,
  ),
);

final notificationsStorageProvider = Provider<NotificationsStorage>(
  (ref) => NotificationsStorageImpl(
    ref.watch(hiveProvider).lazyBox<Notification>('Notifications'),
  ),
);

final notificationsSettingsProvider = Provider<NotificationsSettingsStorage>(
  (ref) => NotificationsSettingsStorage(
    ref.watch(hiveProvider).box<NotificationSetting>('NotificationsSettings'),
  ),
);

final localAuthServiceProvider = Provider<LocalAuthService>(
  (ref) => LocalAuthService(
    localAuthPlugin: ref.watch(localAuthPluginProvider),
    notificationService: ref.watch(notificationsServiceProvider),
  ),
);

final localAuthPluginProvider = Provider<LocalAuthentication>(
  (ref) => LocalAuthentication(),
);

final userPersistenceServiceProvider = Provider<UserPersistenceService>(
  (ref) => UserPersistenceService(
    auth: ref.watch(authServiceProvider),
    connectivityService: ref.watch(connectivityServiceProvider),
    firebaseDatabase: ref.watch(firebaseDatabaseProvider),
  ),
);

final goRouterRefreshStreamProvider = Provider<GoRouterRefreshStream>(
  (ref) => GoRouterRefreshStream(
    Rx.combineLatest2(
      ref.watch(authServiceProvider).userStream,
      LocalAuthService.I.refreshUIStream.startWith(null),
      //Just notify when any stream emits
      (_, __) => Object(),
    ),
  ),
);

final viewableObjectServiceProvider = Provider<ViewableObjectService>(
  (ref) => ViewableObjectService(
    router: ChurchAdminApp.router,
    userSettingsService: ref.watch(userSettingsServiceProvider),
  ),
);

final baseCacheManagerProvider = Provider<BaseCacheManager>(
  (ref) => CacheManager(
    Config(
      'cachedImages',
      maxNrOfCacheObjects: 500,
    ),
  ),
);

final imageUrlCacheServiceProvider = Provider<ImageUrlCacheService>(
  (ref) => ImageUrlCacheService(
    cacheManager: ref.watch(baseCacheManagerProvider),
    box: ref.watch(hiveProvider).box<String>('ImageUrlsCache'),
  ),
);

final launcherServiceProvider = Provider<LauncherService>(
  (ref) => LauncherService(),
);

final packageInfoPluginProvider = Provider<PackageInfo>(
  (ref) => packageInfoPluginInstance,
);

final aboutAppServiceProvider = Provider<AboutAppService>(
  (ref) => AboutAppService(
    urlLauncher: ref.watch(launcherServiceProvider).launchUrl,
    version: ref.watch(packageInfoPluginProvider).version,
    appIcon: Image.asset('assets/Logo.png', width: 50, height: 50),
    privacyPolicyUrl: Uri(),
    termsOfServiceUrl: Uri(),
    githubUrl: Uri(
      scheme: 'https',
      host: 'github.com',
      path: 'Andrew-Bekhiet/church_admin',
    ),
  ),
);

final imagePickerServiceProvider = Provider<ImagePickerService>(
  (ref) => ImagePickerService(
    imagePicker: ref.watch(imagePickerPluginProvider),
    imageCropper: ref.watch(imageCropperPluginProvider),
  ),
);

final imagePickerPluginProvider = Provider<ImagePicker>(
  (ref) => ImagePicker(),
);

final imageCropperPluginProvider = Provider<ImageCropper>(
  (ref) => ImageCropper(),
);

final contactsServiceProvider = Provider<ContactsService>(
  (ref) => const ContactsService(),
);

final phoneNumberServiceProvider = Provider<PhoneNumberService>(
  (ref) => const PhoneNumberService(),
);

final themingServiceProvider = Provider<ThemingService>(
  (ref) => ThemingService(
    userSettingsService: ref.watch(userSettingsServiceProvider),
  ),
);

final fmtcProvider = Provider((_) => FMTC.instance);

final shareServiceProvider = Provider<ShareService>(
  (ref) => ShareService(),
);

final authAdapterProvider = Provider<AuthAdapter>(
  (ref) => FirebaseAuthAdapter(
    firebaseAuth: ref.watch(firebaseAuthProvider),
    googleSignIn: ref.watch(googleSignInProvider),
    databaseService: ref.watch(databaseServiceProvider),
  ),
);

final authCacheProvider = Provider<AuthCache>(
  (ref) => AuthCache(secureStorage: ref.watch(secureStorageProvider)),
);

final currentPlatformServiceProvider = Provider<CurrentPlatformService>(
  (ref) => const CurrentPlatformService(),
);

final zxcvbnProvider = Provider<Zxcvbn>((ref) => Zxcvbn());
