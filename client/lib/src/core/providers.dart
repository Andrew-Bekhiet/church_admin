import 'package:church_admin/church_admin.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:dio/dio.dart';
import 'package:file/file.dart' show FileSystem;
import 'package:file/local.dart';
import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart' hide Notification;
import 'package:flutter_cache_manager/flutter_cache_manager.dart'
    hide FileSystem;
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_map_tile_caching/flutter_map_tile_caching.dart';
import 'package:flutter_riverpod/misc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:local_auth/local_auth.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:riverpod/riverpod.dart';
import 'package:rxdart/rxdart.dart' hide Notification;

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

final deviceInfoServiceProvider = FutureProvider<DeviceInfoService>(
  (ref) async {
    final currentPlatformService = ref.read(currentPlatformServiceProvider);
    final deviceInfoPlugin = DeviceInfoPlugin();

    return DeviceInfoService(
      androidDeviceInfo: currentPlatformService.isAndroid
          ? await deviceInfoPlugin.androidInfo
          : null,
      iosDeviceInfo: currentPlatformService.isIOS
          ? await deviceInfoPlugin.iosInfo
          : null,
      webBrowserInfo: currentPlatformService.isWeb
          ? await deviceInfoPlugin.webBrowserInfo
          : null,
      linuxDeviceInfo: currentPlatformService.isLinux
          ? await deviceInfoPlugin.linuxInfo
          : null,
      macOSDeviceInfo: currentPlatformService.isMacOS
          ? await deviceInfoPlugin.macOsInfo
          : null,
      windowsDeviceInfo: currentPlatformService.isWindows
          ? await deviceInfoPlugin.windowsInfo
          : null,
    );
  },
);

final encryptionServiceProvider = Provider<EncryptionService>(
  (ref) => EncryptionService(),
);

final Provider<DatabaseService> databaseServiceProvider =
    Provider<DatabaseService>(
      (ref) => DatabaseService(ref.watch(graphQLClientProvider)),
    );

final graphQLClientProvider = Provider<DBGraphQLClient>(
  (ref) {
    final loggingService = ref.read(loggingServiceProvider);

    return DBGraphQLClient(
      defaultPolicies: DefaultPolicies(
        query: Policies(fetch: FetchPolicy.cacheAndNetwork),
        watchQuery: Policies(fetch: FetchPolicy.cacheAndNetwork),
        subscribe: Policies(fetch: FetchPolicy.cacheAndNetwork),
      ),
      link: Link.concat(
        loggingService.loggingLink,
        AddAuthLink(
          idTokenStream: ref
              .watch(authStorageProvider)
              .getAuthDataFromCache()
              .asStream()
              .concatWith([ref.watch(authRepositoryProvider).userChanges])
              .map(
                (u) => u?.idToken,
              ),
          url: ref.watch(secretsServiceProvider).hasuraServer,
        ),
      ),
      cache: GraphQLCache(
        store: ref.watch(graphQLCacheStore),
        typePolicies: GqlTypePolicies.policies,
      ),
      connectivityStream: ref
          .watch(connectivityServiceProvider)
          .connectivityStream,
    );
  },
);

final graphQLCacheStore = Provider<GqlKvStore>((ref) {
  final store = GqlKvStore(
    SyncKVStore.fromLoaded<Json>(GqlKvStore.storeName),
  );

  ref.onDispose(store.close);

  return store;
});

final connectivityPluginProvider = Provider<Connectivity>(
  (ref) => Connectivity(),
);

final connectivityServiceProvider = Provider<ConnectivityService>((ref) {
  final service = ConnectivityService(
    connectivityPlugin: ref.watch(connectivityPluginProvider),
    dio: ref.watch(dioProvider),
    secretsService: ref.watch(secretsServiceProvider),
  );

  ref.onDispose(service.dispose);

  return service;
});

final secretsServiceProvider = Provider<SecretsService>(
  (ref) => const SecretsService(),
);

final authBlocProvider = Provider<AuthBloc>((ref) {
  final authBloc = AuthBloc(
    authRepository: ref.watch(authRepositoryProvider),
    authStorage: ref.watch(authStorageProvider),
    databaseService: ref.watch(databaseServiceProvider),
    connectivityStream: ref
        .watch(connectivityServiceProvider)
        .connectivityStream,
  );

  ref.onDispose(authBloc.close);

  return authBloc;
});

final loggingServiceProvider = Provider<LoggingService>(
  (ref) => LoggingService(),
);

final userPreferencesServiceProvider = Provider<UserPreferencesService>(
  (ref) => UserPreferencesService(
    box: SyncKVStore.fromLoaded(UserPreferencesService.storeName),
    databaseService: ref.watch(databaseServiceProvider),
    authBloc: ref.watch(authBlocProvider),
  ),
);

final firebaseAppCheckProvider = Provider((_) => FirebaseAppCheck.instance);
final firebaseAuthProvider = Provider((_) => FirebaseAuth.instance);
final firebaseDatabaseProvider = Provider((_) => FirebaseDatabase.instance);
final firebaseFunctionsProvider = Provider(
  (_) => FirebaseFunctions.instanceFor(region: 'europe-west6'),
);
final firebaseMessagingProvider = Provider((_) => FirebaseMessaging.instance);
final firebaseRemoteConfigProvider = Provider(
  (_) => FirebaseRemoteConfig.instance,
);

final featureFlagsRepoProvider = Provider<FeatureFlagsRepository>(
  (ref) => FeatureFlagsRepository(
    packageInfo: ref.read(packageInfoPluginProvider).requireValue,
    remoteConfig: ref.read(firebaseRemoteConfigProvider),
  ),
);

final dioProvider = Provider(
  (ref) {
    final dio = Dio();
    ref.onDispose(dio.close);

    final loggingService = ref.read(loggingServiceProvider);
    dio.interceptors.add(loggingService.dioInterceptor);

    return dio;
  },
);

final functionsServiceProvider = Provider<FunctionsService>(
  (ref) => FunctionsService(dio: ref.watch(dioProvider)),
);

final secureStorageProvider = Provider<FlutterSecureStorage>(
  (ref) => FlutterSecureStorage(
    aOptions: ref.watch(currentPlatformServiceProvider).isAndroid
        ? AndroidOptions(
            sharedPreferencesName: 'secure_storage',
            encryptedSharedPreferences:
                ref
                    .read(deviceInfoServiceProvider)
                    .requireValue
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

final notificationsServiceProvider = Provider<NotificationsService>((ref) {
  final notificationsService = NotificationsService(
    localNotificationsPlugin: ref.watch(localNotificationsPluginProvider),
    firebaseMessaging: ref.watch(firebaseMessagingProvider),
    authBloc: ref.watch(authBlocProvider),
    databaseService: ref.watch(databaseServiceProvider),
    storage: ref.watch(notificationsStorageProvider),
    onForegroundMessageStream: FirebaseMessaging.onMessage,
    onMessageOpenedAppStream: FirebaseMessaging.onMessageOpenedApp,
  );

  ref.onDispose(notificationsService.dispose);

  return notificationsService;
});

final notificationsStorageProvider = Provider<NotificationsStorage>(
  (ref) => NotificationsStorageImpl(
    ref
        .read(sembastProvider(KvDatabase.shared))
        .requireValue
        .serializableKv(
          'Notifications',
          fromJson: Notification.fromJson,
          toJson: (n) => n.toJson(),
        ),
  ),
);

final notificationsSettingsProvider = Provider<NotificationsSettingsStorage>(
  (ref) => NotificationsSettingsStorage(
    SyncKVStore.fromLoaded<NotificationSetting>('NotificationsSettings'),
  ),
);

final localAuthServiceProvider = Provider<LocalAuthService>((ref) {
  final localAuthBloc = LocalAuthService(
    localAuthPlugin: ref.watch(localAuthPluginProvider),
    notificationService: ref.watch(notificationsServiceProvider),
  );

  ref.onDispose(localAuthBloc.dispose);

  return localAuthBloc;
});

final localAuthPluginProvider = Provider<LocalAuthentication>(
  (ref) => LocalAuthentication(),
);

final userPersistenceServiceProvider = Provider<UserPersistenceService>((ref) {
  final userPersistenceService = UserPersistenceService(
    auth: ref.watch(authBlocProvider),
    connectivityService: ref.watch(connectivityServiceProvider),
    firebaseDatabase: ref.watch(firebaseDatabaseProvider),
  );

  ref.onDispose(userPersistenceService.dispose);

  return userPersistenceService;
});

final goRouterRefreshStreamProvider = Provider<GoRouterRefreshStream>((ref) {
  final authBloc = ref.watch(authBlocProvider);

  final goRouterRefreshStream = GoRouterRefreshStream(
    Rx.combineLatest3(
      authBloc.stream.startWith(authBloc.state),
      ref.watch(localAuthServiceProvider).refreshUIStream.startWith(null),
      ref.watch(featureFlagsRepoProvider).onConfigChanged.startWith(null),
      //Just notify when any stream emits
      (_, _, _) => Object(),
    ),
  );

  ref.onDispose(goRouterRefreshStream.dispose);

  return goRouterRefreshStream;
});

final viewableObjectServiceProvider = Provider<ViewableObjectService>(
  (ref) => kIsWeb
      ? throw Exception('Web version does not support viewing data')
      : ViewableObjectService(router: $appRouter),
);

final baseCacheManagerProvider = Provider<BaseCacheManager>((ref) {
  final cacheManager = CacheManager(
    Config(
      'cachedImages',
      maxNrOfCacheObjects: 500,
      stalePeriod: const Duration(days: 365),
    ),
  );

  ref.onDispose(cacheManager.dispose);

  return cacheManager;
});

final imageUrlCacheServiceProvider = Provider<ImageUrlCacheService>(
  (ref) => ImageUrlCacheService(
    cacheManager: ref.watch(baseCacheManagerProvider),
    box: SyncKVStore.fromLoaded<String>('ImageUrlsCache'),
  ),
);

final launcherServiceProvider = Provider<LauncherService>(
  (ref) => LauncherService(),
);

final locationParsingServiceProvider = Provider<LocationParsingService>(
  (ref) => const LocationParsingService(),
);

final packageInfoPluginProvider = FutureProvider<PackageInfo>(
  (ref) => PackageInfo.fromPlatform(),
);

final aboutAppServiceProvider = Provider<AboutAppService>(
  (ref) => AboutAppService(
    urlLauncher: ref.watch(launcherServiceProvider).launchUrl,
    version: ref.watch(packageInfoPluginProvider).requireValue.version,
    appIcon: Image.asset('assets/logo.png', width: 50, height: 50),
    privacyPolicyUrl: Uri.parse(
      'https://church-data-admin.firebaseapp.com/privacy-policy/',
    ),
    termsOfServiceUrl: Uri.parse(
      'https://church-data-admin.firebaseapp.com/terms-of-service/',
    ),
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

final imagePickerPluginProvider = Provider<ImagePicker>((ref) => ImagePicker());

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
    userPreferencesService: ref.watch(userPreferencesServiceProvider),
  ),
);

final shareServiceProvider = Provider<ShareService>(
  (ref) => const ShareService(),
);

final authRepositoryProvider = Provider<AuthRepository>(
  (ref) {
    final firebaseAuthRepository = FirebaseAuthRepository(
      auth: ref.watch(firebaseAuthProvider),
    );
    ref.onDispose(firebaseAuthRepository.dispose);

    return firebaseAuthRepository;
  },
);

final authStorageProvider = Provider<AuthStorage>(
  (ref) => AuthStorage(secureStorage: ref.watch(secureStorageProvider)),
);

final currentPlatformServiceProvider = Provider<CurrentPlatformService>(
  (ref) => const CurrentPlatformService(),
);

final homeDailyDataRepositoryProvider = Provider<HomeDailyDataRepository>(
  (ref) => HomeDailyDataRepository(
    advancedQueryParser: ref.watch(databaseServiceProvider).advancedQueryParser,
    currentIndexes: SyncKVStore.fromLoaded<Map>('HomeDailyDataIndexes'),
    versesData: kVersesData,
    // Chunks the sneksar data into a list of list of 30 strings or less
    // each corresponding to a day in the coptic calendar month
    sneksarData: kRawSneksarData.fold(
      [[]],
      (acc, c) => [
        ...acc.take(acc.length - 1),
        if (acc.last.length < 30)
          [...acc.last, c]
        else ...[
          acc.last,
          [c],
        ],
      ],
    ),
    sayingData: kSayings,
  ),
);

final homeBlocProvider = Provider<HomeBloc>(
  (ref) {
    final homeBloc = HomeBloc(
      userPreferencesService: ref.watch(userPreferencesServiceProvider),
      pageController: PageController(),
      databaseService: ref.watch(databaseServiceProvider),
      homeDailyDataRepository: ref.watch(homeDailyDataRepositoryProvider),
      userDataStream: ref.watch(authBlocProvider).userDataStream,
    );
    ref.onDispose(homeBloc.close);

    return homeBloc;
  },
);

final flutterMapTileCacheProvider = Provider<FMTCTileProvider>(
  (ref) {
    final fmtcTileProvider = FMTCTileProvider(
      stores: const {'default': BrowseStoreStrategy.readUpdateCreate},
      cachedValidDuration: const Duration(days: 30),
    );
    ref.onDispose(fmtcTileProvider.dispose);

    return fmtcTileProvider;
  },
);

final fileSystemProvider = Provider<FileSystem>(
  (ref) => const LocalFileSystem(),
);
