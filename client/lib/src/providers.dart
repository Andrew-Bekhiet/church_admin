import 'package:church_admin/church_admin.dart';
import 'package:church_admin/graphql/links.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/widgets.dart' hide Notification;
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:local_auth/local_auth.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:riverpod/riverpod.dart';
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

late final DeviceInfoService deviceInfoServiceInstance;

final deviceInfoServiceProvider = Provider<DeviceInfoService>(
  (ref) => deviceInfoServiceInstance,
);

final hiveProvider = Provider<HiveInterface>((ref) {
  ref.onDispose(Hive.close);
  return Hive;
});

final encryptionServiceProvider =
    Provider<EncryptionService>((ref) => EncryptionServiceImpl());

final Provider<DatabaseService> databaseServiceProvider =
    Provider<DatabaseService>(
  (ref) => DatabaseService(ref.watch(graphQLClientProvider)),
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
        url: ref.watch(secretsServiceProvider).hasuraServer,
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
  (ref) => HiveStore(ref.watch(hiveProvider).box('GQLCache')),
);

final connectivityPluginProvider =
    Provider<Connectivity>((ref) => Connectivity());

final connectivityServiceProvider = Provider<ConnectivityService>(
  (ref) {
    final service = ConnectivityService(
      connectivityPlugin: ref.watch(connectivityPluginProvider),
      dio: ref.watch(dioProvider),
      secretsService: ref.watch(secretsServiceProvider),
    );

    ref.onDispose(service.dispose);

    return service;
  },
);

final secretsServiceProvider = Provider<SecretsService>(
  (ref) => SecretsServiceImpl(),
);

final authServiceProvider = Provider<AuthService>(
  (ref) {
    final authService = AuthService(
      storage: AuthStorage(secureStorage: ref.watch(secureStorageProvider)),
      adapter: ref.watch(authAdapterProvider),
      connectivityService: ref.watch(connectivityServiceProvider),
    );

    ref.onDispose(authService.dispose);

    return authService;
  },
);

final multiFactorManagerAdapterProvider = Provider<MultiFactorManagerAdapter>(
  (ref) => FirebaseMultiFactorManagerAdapter(
    firebaseAuth: ref.watch(firebaseAuthProvider),
  ),
);

final loggingServiceProvider = Provider<LoggingService>(
  (ref) => LoggingService(),
);

final userSettingsServiceProvider = Provider<UserSettingsService>(
  (ref) => UserSettingsService(box: ref.watch(hiveProvider).box('Settings')),
);

final firebaseAppCheckProvider = Provider((_) => FirebaseAppCheck.instance);
final firebaseAuthProvider = Provider((_) => FirebaseAuth.instance);
final firebaseDatabaseProvider = Provider((_) => FirebaseDatabase.instance);
final firebaseFunctionsProvider =
    Provider((_) => FirebaseFunctions.instanceFor(region: 'europe-west6'));
final firebaseMessagingProvider = Provider((_) => FirebaseMessaging.instance);

final dioProvider = Provider((_) => Dio());

final functionsServiceProvider = Provider<FunctionsService>(
  (ref) => FunctionsService(dio: ref.watch(dioProvider)),
);

final secureStorageProvider = Provider<FlutterSecureStorage>(
  (ref) => FlutterSecureStorage(
    aOptions: ref.watch(currentPlatformServiceProvider).isAndroid
        ? AndroidOptions(
            sharedPreferencesName: 'secure_storage',
            encryptedSharedPreferences: ref
                    .read(deviceInfoServiceProvider)
                    .androidDeviceInfo!
                    .version
                    .sdkInt >=
                23,
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
  (ref) {
    final notificationsService = NotificationsService(
      localNotificationsPlugin: ref.watch(localNotificationsPluginProvider),
      firebaseMessaging: ref.watch(firebaseMessagingProvider),
      userSettingsService: ref.watch(userSettingsServiceProvider),
      functionsService: ref.watch(functionsServiceProvider),
      getAuthService: () => ref.watch(authServiceProvider),
      storage: ref.watch(notificationsStorageProvider),
      onForegroundMessageStream: FirebaseMessaging.onMessage,
      onMessageOpenedAppStream: FirebaseMessaging.onMessageOpenedApp,
    );

    ref.onDispose(notificationsService.dispose);

    return notificationsService;
  },
);

final notificationsStorageProvider = Provider<NotificationsStorage>(
  (ref) => NotificationsStorageImpl(ref.watch(hiveProvider), 'Notifications'),
);

final notificationsSettingsProvider = Provider<NotificationsSettingsStorage>(
  (ref) => NotificationsSettingsStorage(
    ref.watch(hiveProvider).box<NotificationSetting>('NotificationsSettings'),
  ),
);

final localAuthServiceProvider = Provider<LocalAuthService>(
  (ref) {
    final localAuthService = LocalAuthService(
      localAuthPlugin: ref.watch(localAuthPluginProvider),
      notificationService: ref.watch(notificationsServiceProvider),
    );

    ref.onDispose(localAuthService.dispose);

    return localAuthService;
  },
);

final localAuthPluginProvider = Provider<LocalAuthentication>(
  (ref) => LocalAuthentication(),
);

final userPersistenceServiceProvider = Provider<UserPersistenceService>(
  (ref) {
    final userPersistenceService = UserPersistenceService(
      auth: ref.watch(authServiceProvider),
      connectivityService: ref.watch(connectivityServiceProvider),
      firebaseDatabase: ref.watch(firebaseDatabaseProvider),
    );

    ref.onDispose(userPersistenceService.dispose);

    return userPersistenceService;
  },
);

final goRouterRefreshStreamProvider = Provider<GoRouterRefreshStream>(
  (ref) {
    final goRouterRefreshStream = GoRouterRefreshStream(
      Rx.combineLatest2(
        ref.watch(authServiceProvider).userStream,
        ref.watch(localAuthServiceProvider).refreshUIStream.startWith(null),
        //Just notify when any stream emits
        (_, __) => Object(),
      ),
    );

    ref.onDispose(goRouterRefreshStream.dispose);

    return goRouterRefreshStream;
  },
);

final viewableObjectServiceProvider = Provider<ViewableObjectService>(
  (ref) => ViewableObjectService(
    router: $appRouter,
    userSettingsService: ref.watch(userSettingsServiceProvider),
  ),
);

final baseCacheManagerProvider = Provider<BaseCacheManager>(
  (ref) {
    final cacheManager = CacheManager(
      Config(
        'cachedImages',
        maxNrOfCacheObjects: 500,
        stalePeriod: const Duration(days: 365),
      ),
    );

    ref.onDispose(cacheManager.dispose);

    return cacheManager;
  },
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
  (ref) {
    final firebaseAuthAdapter = FirebaseAuthAdapter(
      firebaseAuth: ref.watch(firebaseAuthProvider),
      databaseService: ref.watch(databaseServiceProvider),
      multiFactorManagerAdapter: ref.watch(multiFactorManagerAdapterProvider)
          as FirebaseMultiFactorManagerAdapter,
    );

    ref.onDispose(firebaseAuthAdapter.dispose);

    return firebaseAuthAdapter;
  },
);

final authStorageProvider = Provider<AuthStorage>(
  (ref) => AuthStorage(secureStorage: ref.watch(secureStorageProvider)),
);

final currentPlatformServiceProvider = Provider<CurrentPlatformService>(
  (ref) => const CurrentPlatformService(),
);

final zxcvbnProvider = Provider<Zxcvbn>((ref) => Zxcvbn());
