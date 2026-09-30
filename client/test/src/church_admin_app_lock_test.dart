import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:rxdart/rxdart.dart';

import 'fakes/fake_feature_flags_repo.dart';

void main() {
  late bool isReauthDue;
  late StreamController<void> reauthChanges;

  setUp(() {
    isReauthDue = false;
    reauthChanges = StreamController<void>.broadcast();

    final localAuthService = _MockLocalAuthService();
    when(() => localAuthService.shouldAuthenticate).thenAnswer(
      (_) => isReauthDue,
    );
    when(
      () => localAuthService.refreshUIStream,
    ).thenAnswer((_) => reauthChanges.stream);
    when(localAuthService.canCheckBiometrics).thenAnswer((_) async => false);

    initGlobalProviderContainer([
      authBlocProvider.overrideWithValue(_signedInAuthBloc()),
      localAuthServiceProvider.overrideWithValue(localAuthService),
      authRepositoryProvider.overrideWithValue(_authRepository()),
      authStorageProvider.overrideWithValue(_MockAuthStorage()),
      encryptionServiceProvider.overrideWithValue(_MockEncryptionService()),
      databaseServiceProvider.overrideWithValue(_databaseService()),
      homeDailyDataRepositoryProvider.overrideWithValue(
        _homeDailyDataRepository(),
      ),
      loggingServiceProvider.overrideWithValue(_loggingService()),
      connectivityServiceProvider.overrideWithValue(_connectivityService()),
      notificationsServiceProvider.overrideWithValue(_notificationsService()),
      userPreferencesServiceProvider.overrideWithValue(_userPreferences()),
      themingServiceProvider.overrideWithValue(
        ThemingService.withInitialThemeata(
          initialTheme: ThemeData.light(),
          userPreferencesService: _userPreferences(),
        ),
      ),
      goRouterRefreshStreamProvider.overrideWithValue(
        GoRouterRefreshStream(reauthChanges.stream),
      ),
      featureFlagsRepoProvider.overrideWithValue(FakeFeatureFlagsRepo()),
      packageInfoPluginProvider.overrideWith(
        (_) => PackageInfo(
          appName: 'church_admin',
          packageName: 'church_admin',
          version: '1.0.0',
          buildNumber: '1',
        ),
      ),
    ]);
  });

  tearDown(() async {
    resetGlobalProviderContainer();
    await reauthChanges.close();
  });

  testWidgets(
    'a page opened from home is hidden behind the lock screen once '
    're-authentication is due',
    (tester) async {
      tester.view
        ..physicalSize = const Size(1170, 2532)
        ..devicePixelRatio = 3;
      addTearDown(tester.view.reset);
      tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.resumed);
      await tester.pumpWidget(const ChurchAdminApp());
      await tester.pump();

      $appRouter.go(const SettingsRoute().location);
      await tester.pump();
      await tester.pump(const Duration(seconds: 1));

      isReauthDue = true;
      reauthChanges.add(null);
      await tester.pump();
      await tester.pump(const Duration(seconds: 1));

      expect(find.byType(SettingsScreen).hitTestable(), findsNothing);
      expect(
        find.byKey(BiometricsAuthScreenKeys.passwordFieldKey).hitTestable(),
        findsOneWidget,
      );

      await tester.pumpWidget(const SizedBox.shrink());
    },
  );
}

AuthBloc _signedInAuthBloc() {
  const user = AuthUser(
    uid: 'uid',
    email: 'email',
    emailVerified: true,
    idToken: 'idToken',
    claims: {AuthUser.hasuraUserIdKey: 'hasura-user-id'},
  );
  final userData = User(
    uid: 'uid',
    name: 'name',
    permissions: PermissionsSet.fromSet({UserPermission.approved}),
    person: Person(
      id: 'id',
      name: 'name',
      lastKodas: LastRecordedByInfo(time: DateTime.now(), recordedBy: 'uid'),
      lastConfession: LastRecordedByInfo(
        time: DateTime.now(),
        recordedBy: 'uid',
      ),
    ),
  );
  final state = AuthAuthenticated(authUser: user, userData: userData);

  final authBloc = _MockAuthBloc();
  when(() => authBloc.state).thenReturn(state);
  when(() => authBloc.stream).thenAnswer((_) => const Stream.empty());
  when(() => authBloc.isSignedIn).thenReturn(true);
  when(
    () => authBloc.isSignedInStream,
  ).thenAnswer((_) => Stream.value(true));
  when(() => authBloc.currentUser).thenReturn(user);
  when(() => authBloc.currentUserData).thenReturn(userData);
  when(() => authBloc.userStream).thenAnswer((_) => Stream.value(user));
  when(
    () => authBloc.userDataStream,
  ).thenAnswer((_) => Stream.value(userData));

  return authBloc;
}

AuthRepository _authRepository() {
  final authRepository = _MockAuthRepository();
  when(
    () => authRepository.userChanges,
  ).thenAnswer((_) => const Stream.empty());

  return authRepository;
}

DatabaseService _databaseService() {
  final personsDAO = _MockPersonsDAO();
  when(
    () => personsDAO.streamAll(
      where: any(named: 'where'),
      orderBy: any(named: 'orderBy'),
    ),
  ).thenAnswer((_) => PaginatableStream.simple(factory: (_) async* {}));

  final servicesDAO = _MockServicesDAO();
  when(
    () => servicesDAO.streamAll(
      where: any(named: 'where'),
      orderBy: any(named: 'orderBy'),
    ),
  ).thenAnswer((_) => PaginatableStream.simple(factory: (_) async* {}));

  final databaseService = _MockDatabaseService();
  when(() => databaseService.persons).thenReturn(personsDAO);
  when(() => databaseService.services).thenReturn(servicesDAO);
  when(() => databaseService.areas).thenReturn(_MockAreasDAO());
  when(() => databaseService.streets).thenReturn(_MockStreetsDAO());
  when(() => databaseService.families).thenReturn(_MockFamiliesDAO());
  when(() => databaseService.stores).thenReturn(_MockStoresDAO());

  return databaseService;
}

HomeDailyDataRepository _homeDailyDataRepository() {
  final repository = _MockHomeDailyDataRepository();
  when(repository.getVerse).thenReturn('verse');
  when(repository.getTodaysSneksar).thenReturn('sneksar');
  when(repository.getSaying).thenReturn('saying');
  when(repository.getTodaysBirthdaysData).thenAnswer((_) async => []);

  return repository;
}

LoggingService _loggingService() {
  final loggingService = _MockLoggingService();
  when(() => loggingService.navigatorObservers).thenReturn([]);

  return loggingService;
}

ConnectivityService _connectivityService() {
  final connectivityService = _MockConnectivityService();
  when(
    () => connectivityService.connectivityStream,
  ).thenAnswer((_) => BehaviorSubject.seeded(true));

  return connectivityService;
}

NotificationsService _notificationsService() {
  final notificationsService = _MockNotificationsService();
  when(
    () => notificationsService.onNotificationTapStream,
  ).thenAnswer((_) => const Stream.empty());

  return notificationsService;
}

UserPreferencesService _userPreferences() {
  final userPreferences = _MockUserPreferencesService();
  when(() => userPreferences.darkTheme).thenReturn(false);
  when(() => userPreferences.greatFeastTheme).thenReturn(false);

  return userPreferences;
}

class _MockAuthBloc extends Mock implements AuthBloc {}

class _MockLocalAuthService extends Mock implements LocalAuthService {}

class _MockAuthRepository extends Mock implements AuthRepository {}

class _MockAuthStorage extends Mock implements AuthStorage {}

class _MockEncryptionService extends Mock implements EncryptionService {}

class _MockDatabaseService extends Mock implements DatabaseService {}

class _MockPersonsDAO extends Mock implements PersonsDAO {}

class _MockServicesDAO extends Mock implements ServicesDAO {}

class _MockAreasDAO extends Mock implements AreasDAO {}

class _MockStreetsDAO extends Mock implements StreetsDAO {}

class _MockFamiliesDAO extends Mock implements FamiliesDAO {}

class _MockStoresDAO extends Mock implements StoresDAO {}

class _MockHomeDailyDataRepository extends Mock
    implements HomeDailyDataRepository {}

class _MockLoggingService extends Mock implements LoggingService {}

class _MockConnectivityService extends Mock implements ConnectivityService {}

class _MockNotificationsService extends Mock implements NotificationsService {}

class _MockUserPreferencesService extends Mock
    implements UserPreferencesService {}
