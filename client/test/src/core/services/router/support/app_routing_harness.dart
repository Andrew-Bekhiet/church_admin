import 'dart:async';
import 'dart:typed_data';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kaisel/kaisel.dart';
import 'package:local_auth/local_auth.dart';
import 'package:material_ui/material_ui.dart' hide Notification;
import 'package:mocktail/mocktail.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:rxdart/rxdart.dart';

import 'adjustable_feature_flags_repo.dart';
import 'screen_dependency_stubs.dart';

class AppRoutingHarness {
  static const String localPassword = 'local-password';
  static const Size _phoneSize = Size(720, 1600);
  static const double _phonePixelRatio = 1;
  static const int _settleFrames = 5;
  static const Duration _settleFrameDuration = Duration(milliseconds: 300);

  final AdjustableFeatureFlagsRepo featureFlags = AdjustableFeatureFlagsRepo();
  final StreamController<Notification> _notificationTaps =
      StreamController.broadcast();
  final StreamController<AuthState> _authStates = StreamController.broadcast();
  final _MockLocalAuthentication _localAuthPlugin = _MockLocalAuthentication();

  late LocalAuthService localAuth;
  late KaiselRouterConfig<AppRoute> router;
  bool locksOnStart = false;
  AuthState _authState = const AuthUnauthenticated();

  static User approvedUser({
    Set<UserPermission> permissions = const {},
    bool spiritDataUpToDate = true,
  }) {
    final lastRecorded = LastRecordedByInfo(
      time: DateTime.now(),
      recordedBy: 'uid',
    );

    return User(
      uid: 'uid',
      name: 'name',
      permissions: PermissionsSet.fromSet({
        UserPermission.approved,
        ...permissions,
      }),
      person: Person(
        id: 'person-id',
        name: 'name',
        lastKodas: spiritDataUpToDate ? lastRecorded : null,
        lastConfession: spiritDataUpToDate ? lastRecorded : null,
      ),
    );
  }

  void signIn(User user, {bool emailVerified = true}) => _changeAuthState(
    AuthAuthenticated(
      authUser: AuthUser(
        uid: user.uid,
        email: 'user@example.com',
        emailVerified: emailVerified,
        idToken: 'token',
        claims: const {AuthUser.hasuraUserIdKey: 'hasura-user-id'},
      ),
      userData: user,
    ),
  );

  void signOut() => _changeAuthState(const AuthUnauthenticated());

  Future<void> pump(WidgetTester tester) async {
    await pumpFirstFrame(tester);
    await settle(tester);
  }

  Future<void> pumpFirstFrame(WidgetTester tester) async {
    tester.view
      ..physicalSize = _phoneSize
      ..devicePixelRatio = _phonePixelRatio;
    addTearDown(tester.view.reset);
    tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.resumed);
    _installProviders();
    router = AppRouter.create();
    addTearDown(_tearDown);

    await tester.pumpWidget(ChurchAdminApp(routerConfig: router));
  }

  Future<void> settle(WidgetTester tester) async {
    for (var frame = 0; frame < _settleFrames; frame++) {
      await tester.pump(_settleFrameDuration);
    }
  }

  Future<void> open(WidgetTester tester, AppRoute route) async {
    unawaited(router.router.push(route));
    await settle(tester);
  }

  Future<void> openPlatformLink(WidgetTester tester, String link) async {
    await tester.binding.handlePushRoute(link);
    await settle(tester);
  }

  Future<void> tapNotification(
    WidgetTester tester,
    Notification notification,
  ) async {
    _notificationTaps.add(notification);
    await tester.pump();
    tester.binding.scheduleFrame();
    await settle(tester);
  }

  Future<void> tapBackButton(WidgetTester tester) async {
    await tester.tap(find.byType(BackButton).hitTestable());
    await settle(tester);
  }

  Future<void> popScreenAsRemoteConfigChanges(WidgetTester tester) async {
    router.navigator?.pop();
    featureFlags.publishConfigChange();
    await settle(tester);
  }

  Future<void> pressSystemBack(WidgetTester tester) async {
    await tester.binding.handlePopRoute();
    await settle(tester);
  }

  Future<void> unlockWithPassword(WidgetTester tester) async {
    await tester.enterText(
      find.byKey(BiometricsAuthScreenKeys.passwordFieldKey),
      localPassword,
    );
    await tester.testTextInput.receiveAction(TextInputAction.done);
    await settle(tester);
  }

  void _changeAuthState(AuthState state) {
    _authState = state;
    _authStates.add(state);
  }

  void _installProviders() {
    final authRepository = _MockAuthRepository();
    when(() => authRepository.isSignedIn).thenAnswer(
      (_) => _authState is AuthAuthenticated,
    );
    when(() => authRepository.currentUserEmail).thenReturn('user@example.com');
    when(
      () => authRepository.userChanges,
    ).thenAnswer((_) => const Stream.empty());

    final notificationsService = _MockNotificationsService();
    when(() => notificationsService.isPaused).thenReturn(false);
    when(
      () => notificationsService.onNotificationTapStream,
    ).thenAnswer((_) => _notificationTaps.stream);

    when(() => _localAuthPlugin.canCheckBiometrics).thenAnswer((_) async {
      return false;
    });
    when(_localAuthPlugin.isDeviceSupported).thenAnswer((_) async => false);

    initGlobalProviderContainer([
      authBlocProvider.overrideWithValue(_authBloc()),
      authRepositoryProvider.overrideWithValue(authRepository),
      authStorageProvider.overrideWithValue(_authStorage()),
      encryptionServiceProvider.overrideWithValue(_encryptionService()),
      localAuthServiceProvider.overrideWith(
        (ref) => locksOnStart
            ? LocalAuthService(
                localAuthPlugin: _localAuthPlugin,
                userDataWiper: _MockUserDataWiper(),
                authRepository: authRepository,
                notificationService: notificationsService,
              )
            : LocalAuthService.noInitialAuth(
                localAuthPlugin: _localAuthPlugin,
                userDataWiper: _MockUserDataWiper(),
                authRepository: authRepository,
                notificationService: notificationsService,
              ),
      ),
      notificationsServiceProvider.overrideWithValue(notificationsService),
      featureFlagsRepoProvider.overrideWithValue(featureFlags),
      loggingServiceProvider.overrideWithValue(
        ScreenDependencyStubs.loggingService(),
      ),
      connectivityServiceProvider.overrideWithValue(
        ScreenDependencyStubs.connectivityService(),
      ),
      userPreferencesServiceProvider.overrideWithValue(
        ScreenDependencyStubs.userPreferences(),
      ),
      themingServiceProvider.overrideWithValue(
        ThemingService.withInitialThemeata(
          initialTheme: ThemeData.light(),
          userPreferencesService: ScreenDependencyStubs.userPreferences(),
        ),
      ),
      databaseServiceProvider.overrideWithValue(
        ScreenDependencyStubs.databaseService(),
      ),
      homeCubitProvider.overrideWithValue(ScreenDependencyStubs.homeCubit()),
      viewableObjectServiceProvider.overrideWith(
        (_) => ViewableObjectService(router: router),
      ),
      packageInfoPluginProvider.overrideWith(
        (_) => PackageInfo(
          appName: 'church_admin',
          packageName: 'church_admin',
          version: '1.0.0',
          buildNumber: '1',
        ),
      ),
    ]);
    localAuth = LocalAuthService.I;
  }

  AuthBloc _authBloc() {
    final authBloc = _MockAuthBloc();
    when(() => authBloc.state).thenAnswer((_) => _authState);
    when(() => authBloc.stream).thenAnswer((_) => _authStates.stream);
    when(() => authBloc.isSignedIn).thenAnswer(
      (_) => _authState.unwrapped is AuthAuthenticated,
    );
    when(() => authBloc.currentUser).thenAnswer(
      (_) => switch (_authState.unwrapped) {
        AuthAuthenticated(:final authUser) => authUser,
        _ => null,
      },
    );
    when(() => authBloc.currentUserData).thenAnswer(
      (_) => switch (_authState.unwrapped) {
        AuthAuthenticated(:final userData) => userData,
        _ => null,
      },
    );
    when(() => authBloc.isSignedInStream).thenAnswer(
      (_) => _authStates.stream
          .map((state) => state.unwrapped is AuthAuthenticated)
          .startWith(authBloc.isSignedIn),
    );
    when(() => authBloc.userStream).thenAnswer(
      (_) => BehaviorSubject.seeded(authBloc.currentUser),
    );
    when(() => authBloc.userDataStream).thenAnswer(
      (_) => BehaviorSubject.seeded(authBloc.currentUserData),
    );

    return authBloc;
  }

  AuthStorage _authStorage() {
    final authStorage = _MockAuthStorage();
    when(authStorage.getPasswordHash).thenAnswer((_) async => 'hash');

    return authStorage;
  }

  EncryptionService _encryptionService() {
    registerFallbackValue(Uint8List(0));
    final encryptionService = _MockEncryptionService();
    when(
      () => encryptionService.deriveKey(
        password: any(named: 'password'),
        salt: any(named: 'salt'),
      ),
    ).thenAnswer((_) async => Uint8List(0));
    when(
      () => encryptionService.verifyPassword(
        passwordToVerify: any(named: 'passwordToVerify'),
        keyBytes: any(named: 'keyBytes'),
        storedPasswordHash: any(named: 'storedPasswordHash'),
      ),
    ).thenAnswer(
      (invocation) async =>
          invocation.namedArguments[#passwordToVerify] == localPassword,
    );

    return encryptionService;
  }

  Future<void> _tearDown() async {
    imageCache
      ..clear()
      ..clearLiveImages();
    router.dispose();
    await localAuth.dispose();
    resetGlobalProviderContainer();
    await featureFlags.close();
    await _notificationTaps.close();
    await _authStates.close();
  }
}

class _MockAuthBloc extends Mock implements AuthBloc {}

class _MockLocalAuthentication extends Mock implements LocalAuthentication {}

class _MockAuthRepository extends Mock implements AuthRepository {}

class _MockAuthStorage extends Mock implements AuthStorage {}

class _MockEncryptionService extends Mock implements EncryptionService {}

class _MockUserDataWiper extends Mock implements UserDataWiper {}

class _MockNotificationsService extends Mock implements NotificationsService {}
