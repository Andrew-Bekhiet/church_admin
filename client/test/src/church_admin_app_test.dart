import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/misc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:mocktail/mocktail.dart' as mocktail;
import 'package:package_info_plus/package_info_plus.dart';
import 'package:rxdart_ext/not_replay_value_stream.dart';

import 'church_admin_app_test.mocks.dart';
import 'fakes/fake_feature_flags_repo.dart';

@GenerateNiceMocks([
  MockSpec<LoggingService>(),
  MockSpec<AuthBloc>(),
  MockSpec<DatabaseService>(),
  MockSpec<UsersDAO>(),
  MockSpec<PersonsDAO>(),
  MockSpec<AreasDAO>(),
  MockSpec<ServicesDAO>(),
  MockSpec<LocalAuthService>(),
  MockSpec<ConnectivityService>(),
  MockSpec<NotificationsService>(),
  MockSpec<HomeBloc>(),
  MockSpec<PackageInfo>(),
])
void main() {
  final firstScreenVariant = FirstScreenVariant();

  setUp(_setUp);

  tearDown(resetGlobalProviderContainer);

  testWidgets(
    'the first screen matches the account authentication state',
    (tester) async {
      await tester.pumpWidget(const ChurchAdminApp());
      await tester.pump();

      if (firstScreenVariant.currentValue ==
          FirstScreenVariantEnum.values.first) {
        verify(LoggingService.I.navigatorObservers);
      }

      final goRouter = tester
          .firstWidget<InheritedGoRouter>(find.byType(InheritedGoRouter))
          .goRouter;

      final lastMatch = goRouter.routerDelegate.currentConfiguration.last;

      final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
          ? lastMatch.matches
          : goRouter.routerDelegate.currentConfiguration;

      expect(matchList.uri.toString(), firstScreenVariant.expectedLocation());

      if (firstScreenVariant.currentValue ==
          FirstScreenVariantEnum.authenticate) {
        expect(
          find.byType(BiometricsAuthScreen, skipOffstage: false),
          findsOneWidget,
        );
      }
    },
    variant: firstScreenVariant,
  );

  testWidgets('the app uses the selected theme', (tester) async {
    await tester.pumpWidget(const ChurchAdminApp());

    expect(
      tester.firstWidget<MaterialApp>(find.byType(MaterialApp)).theme,
      ThemingService.I.theme,
    );

    ThemingService.I.theme = ThemeData.dark();
    await tester.pumpAndSettle();

    expect(
      tester.firstWidget<MaterialApp>(find.byType(MaterialApp)).theme,
      ThemingService.I.theme,
    );
  });

  testWidgets('losing connectivity shows a snack bar', (
    tester,
  ) async {
    final connectivityController = BehaviorSubject.seeded(true);
    addTearDown(connectivityController.close);

    when(
      ConnectivityService.I.connectivityStream,
    ).thenAnswer((_) => connectivityController);

    tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.resumed);

    await tester.pumpWidget(const ChurchAdminApp());

    expect(find.byType(SnackBar), findsNothing);

    connectivityController.add(false);

    await tester.pumpAndSettle();

    expect(find.byType(SnackBar), findsOneWidget);
  });
}

Override _setUpAuthBloc() {
  final mock = MockAuthBloc();

  provideDummy<AuthState>(const AuthUnauthenticated());

  when(mock.isSignedIn).thenReturn(false);
  when(mock.userStream).thenAnswer((_) => BehaviorSubject.seeded(null));
  when(mock.state).thenReturn(const AuthUnauthenticated());

  return authBlocProvider.overrideWithValue(mock);
}

List<Override> _setUp({bool withAuthBloc = true}) {
  final overrides = [
    if (withAuthBloc) _setUpAuthBloc(),
    _setUpLoggingService(),
    userPreferencesServiceProvider.overrideWithValue(
      FakeUserPreferencesService(),
    ),
    _setUpGoRouterRefreshStream(),
    _setUpThemingService(FakeUserPreferencesService()),
    _setUpDatabaseRepo(),
    _setUpConnectivityService(),
    _setUpNotificationsService(),
    _setUpHomeBloc(),
    packageInfoPluginProvider.overrideWith((_) => MockPackageInfo()),
    featureFlagsRepoProvider.overrideWithValue(FakeFeatureFlagsRepo()),
  ];

  initGlobalProviderContainer(overrides);

  return overrides;
}

Override _setUpConnectivityService() {
  final mock = MockConnectivityService();

  when(
    mock.connectivityStream,
  ).thenAnswer((_) => BehaviorSubject.seeded(false));

  return connectivityServiceProvider.overrideWithValue(mock);
}

Override _setUpNotificationsService() {
  final mock = MockNotificationsService();

  when(mock.onNotificationTapStream).thenAnswer((_) => const Stream.empty());

  return notificationsServiceProvider.overrideWithValue(mock);
}

Override _setUpDatabaseRepo() {
  final usersDAO = _setUpUsersDAO();
  final areasDAO = _setUpAreasDAO();
  final personsDAO = _setUpPersonsDAO();
  final servicesDAO = _setUpServiceDAO();

  final mockCADatabaseRepository = MockDatabaseService();
  when(mockCADatabaseRepository.users).thenReturn(usersDAO);
  when(mockCADatabaseRepository.areas).thenReturn(areasDAO);
  when(mockCADatabaseRepository.persons).thenReturn(personsDAO);
  when(mockCADatabaseRepository.services).thenReturn(servicesDAO);

  return databaseServiceProvider.overrideWithValue(mockCADatabaseRepository);
}

MockUsersDAO _setUpUsersDAO() {
  final usersDAO = MockUsersDAO();
  when(usersDAO.streamSingleById(id: anyNamed('id'))).thenAnswer((_) async* {});

  return usersDAO;
}

MockServicesDAO _setUpServiceDAO() {
  final servicesDAO = MockServicesDAO();
  when(servicesDAO.streamAll(searchQuery: anyNamed('searchQuery'))).thenAnswer(
    (_) => PaginatableStream.simple(factory: (_) async* {}),
  );

  return servicesDAO;
}

MockPersonsDAO _setUpPersonsDAO() {
  final personsDAO = MockPersonsDAO();
  when(personsDAO.streamAll(searchQuery: anyNamed('searchQuery'))).thenAnswer(
    (_) => PaginatableStream.simple(factory: (_) async* {}),
  );

  return personsDAO;
}

MockAreasDAO _setUpAreasDAO() {
  final areasDAO = MockAreasDAO();
  when(areasDAO.streamAll(searchQuery: anyNamed('searchQuery'))).thenAnswer(
    (_) => PaginatableStream.simple(factory: (_) async* {}),
  );

  return areasDAO;
}

Override _setUpThemingService(UserPreferencesService userPreferencesService) {
  return themingServiceProvider.overrideWithValue(
    ThemingService.withInitialThemeata(
      initialTheme: ThemeData.light(),
      userPreferencesService: userPreferencesService,
    ),
  );
}

Override _setUpGoRouterRefreshStream() {
  return goRouterRefreshStreamProvider.overrideWithValue(
    GoRouterRefreshStream(const Stream.empty()),
  );
}

Override _setUpLoggingService() {
  final mockLoggingService = MockLoggingService();
  when(
    mockLoggingService.navigatorObservers,
  ).thenReturn([NavigatorObserver()]);

  return loggingServiceProvider.overrideWithValue(mockLoggingService);
}

Override _setUpHomeBloc() {
  provideDummy<HomeState>(
    HomeState(
      pageController: PageController(),
      dailyData: const HomeDailyData(saying: '', verse: '', sneksar: ''),
      pages: const [HomePageConfig(label: '', pageIcon: Icons.home)],
    ),
  );
  final mockHomeBloc = MockHomeBloc();

  return homeBlocProvider.overrideWithValue(mockHomeBloc);
}

class FirstScreenVariant extends ValueVariant<FirstScreenVariantEnum> {
  FirstScreenVariant() : super(FirstScreenVariantEnum.values.toSet());

  @override
  Future<FirstScreenVariantEnum> setUp(FirstScreenVariantEnum value) async {
    await super.setUp(value);

    final overrides = [..._setUp(withAuthBloc: false), _setUpAuthBloc(value)];

    if (value != FirstScreenVariantEnum.login) {
      overrides.add(_setUpLocalAuthService(value));
    }
    if (value == FirstScreenVariantEnum.authenticate) {
      final authRepository = _AuthRepositoryMock();
      mocktail
          .when(() => authRepository.userChanges)
          .thenAnswer((_) => const Stream.empty());
      overrides.add(authRepositoryProvider.overrideWithValue(authRepository));
    }

    initGlobalProviderContainer(overrides);

    return value;
  }

  Override _setUpLocalAuthService(FirstScreenVariantEnum value) {
    final mockLocalAuthService = MockLocalAuthService();

    when(
      mockLocalAuthService.shouldAuthenticate,
    ).thenReturn(value == FirstScreenVariantEnum.authenticate);
    when(
      mockLocalAuthService.canCheckBiometrics(),
    ).thenAnswer((_) async => false);

    return localAuthServiceProvider.overrideWithValue(mockLocalAuthService);
  }

  Override _setUpAuthBloc(FirstScreenVariantEnum value) {
    final mock = MockAuthBloc();
    when(mock.isSignedIn).thenReturn(value != FirstScreenVariantEnum.login);

    final user = value != FirstScreenVariantEnum.login
        ? AuthUser(
            uid: 'uid',
            email: 'email',
            emailVerified: value != FirstScreenVariantEnum.emailVerification,
            idToken: 'idToken',
            claims: {AuthUser.hasuraUserIdKey: 'hasura-user-id'},
          )
        : null;

    final userData = value != FirstScreenVariantEnum.login
        ? User(
            uid: 'uid',
            name: 'name',
            permissions: PermissionsSet.fromSet({
              if (value != FirstScreenVariantEnum.unapprovedUser)
                UserPermission.approved,
            }),
            person: Person(
              id: 'id',
              name: 'name',
              lastKodas: value == FirstScreenVariantEnum.updateUserSpiritData
                  ? null
                  : LastRecordedByInfo(
                      time: DateTime.now(),
                      recordedBy: 'uid',
                    ),
              lastConfession:
                  value == FirstScreenVariantEnum.updateUserSpiritData
                  ? null
                  : LastRecordedByInfo(
                      time: DateTime.now(),
                      recordedBy: 'uid',
                    ),
            ),
          )
        : null;

    when(mock.currentUser).thenReturn(user);
    when(mock.currentUserData).thenReturn(userData);

    when(mock.state).thenAnswer(
      (_) => user != null
          ? AuthAuthenticated(authUser: user, userData: userData)
          : const AuthUnauthenticated(),
    );

    when(mock.userStream).thenAnswer((_) => BehaviorSubject.seeded(user));
    when(
      mock.userDataStream,
    ).thenAnswer((_) => BehaviorSubject.seeded(userData));

    return authBlocProvider.overrideWithValue(mock);
  }

  String expectedLocation() {
    switch (currentValue) {
      case FirstScreenVariantEnum.login:
        return const LoginRoute().location;

      case FirstScreenVariantEnum.emailVerification:
        return const EmailVerificationRoute().location;

      case FirstScreenVariantEnum.unapprovedUser:
        return const UnapprovedUserRoute().location;

      case FirstScreenVariantEnum.updateUserSpiritData:
        return const UpdateUserSpiritDataRoute(forced: true).location;

      case FirstScreenVariantEnum.authenticate:
      case FirstScreenVariantEnum.home:
        return '/';

      case null:
        throw Exception('currentValue is null');
    }
  }

  @override
  Future<void> tearDown(
    FirstScreenVariantEnum value,
    FirstScreenVariantEnum memento,
  ) async {
    resetGlobalProviderContainer();
    await super.tearDown(value, memento);
  }
}

enum FirstScreenVariantEnum {
  login,
  emailVerification,
  unapprovedUser,
  updateUserSpiritData,
  authenticate,
  home,
}

class FakeUserPreferencesService extends Fake
    implements UserPreferencesService {}

class _AuthRepositoryMock extends mocktail.Mock implements AuthRepository {}
