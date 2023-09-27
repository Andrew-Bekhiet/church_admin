// ignore_for_file: discarded_futures, avoid_redundant_argument_values

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/services/database/gql_definintions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:rxdart_ext/not_replay_value_stream.dart';

import 'church_admin_app_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<LoggingService>(),
  MockSpec<AuthService>(),
  MockSpec<MultiFactorManager>(),
  MockSpec<DatabaseService>(),
  MockSpec<UsersDAO>(),
  MockSpec<PersonsDAO>(),
  MockSpec<AreasDAO>(),
  MockSpec<ServicesDAO>(),
  MockSpec<LocalAuthService>(),
  MockSpec<ConnectivityService>(),
  MockSpec<NotificationsService>(),
])
void main() {
  final FirstScreenVariant firstScreenVariant = FirstScreenVariant();

  setUp(_setUp);

  tearDown(resetGlobalProviderContainer);

  testWidgets(
    'Church Admin App => First Screen',
    (tester) async {
      await tester.pumpWidget(const ChurchAdminApp());

      if (firstScreenVariant.currentValue ==
          FirstScreenVariantEnum.values.first) {
        verify(LoggingService.I.navigatorObserver);
      }

      // await tester.pumpAndSettle();

      final goRouter = tester
          .firstWidget<InheritedGoRouter>(find.byType(InheritedGoRouter))
          .goRouter;

      final lastMatch = goRouter
          .routerDelegate
          .currentConfiguration.last;

      final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
          ? lastMatch.matches
          : goRouter.routerDelegate.currentConfiguration;

      expect(
        matchList.uri.toString(),
        firstScreenVariant.expectedLocation(),
      );

      // await _disposeLocalAuthService();
    },
    variant: firstScreenVariant,
  );

  testWidgets(
    'Church Admin App => Observes ThemingService',
    (tester) async {
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
    },
  );

  testWidgets(
    'Church Admin App => Shows SnackBar on connectivity changed',
    (tester) async {
      final _connectivityController = BehaviorSubject.seeded(true);
      addTearDown(_connectivityController.close);

      when(ConnectivityService.I.connectivityStream)
          .thenAnswer((_) => _connectivityController);

      tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.resumed);

      await tester.pumpWidget(const ChurchAdminApp());

      expect(find.byType(SnackBar), findsNothing);

      _connectivityController.add(false);

      await tester.pumpAndSettle();

      expect(find.byType(SnackBar), findsOneWidget);
    },
  );
}

Override _setUpAuthService() {
  final mock = MockAuthService();

  when(mock.isSignedIn).thenReturn(false);
  when(mock.userStream).thenAnswer((_) => BehaviorSubject.seeded(null));

  return authServiceProvider.overrideWithValue(mock);
}

List<Override> _setUp() {
  final overrides = [
    _setUpAuthService(),
    _setUpLoggingService(),
    userSettingsServiceProvider.overrideWithValue(FakeUserSettings()),
    _setUpGoRouterRefreshStream(),
    _setUpThemingService(FakeUserSettings()),
    _setUpDatabaseRepo(),
    _setUpConnectivityService(),
    _setUpNotificationsService(),
  ];

  initGlobalProviderContainer(overrides);

  return overrides;
}

Override _setUpConnectivityService() {
  final mock = MockConnectivityService();

  when(mock.connectivityStream)
      .thenAnswer((_) => BehaviorSubject.seeded(false));

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
  when(
    servicesDAO.streamAll(
      searchQuery: anyNamed('searchQuery'),
    ),
  ).thenAnswer(
    (_) => GQLPaginatableStream(
      subscriptionStreamCallback: (_) async* {},
    ),
  );

  return servicesDAO;
}

MockPersonsDAO _setUpPersonsDAO() {
  final personsDAO = MockPersonsDAO();
  when(
    personsDAO.streamAll(
      searchQuery: anyNamed('searchQuery'),
    ),
  ).thenAnswer(
    (_) => GQLPaginatableStream(
      subscriptionStreamCallback: (_) async* {},
    ),
  );

  return personsDAO;
}

MockAreasDAO _setUpAreasDAO() {
  final areasDAO = MockAreasDAO();
  when(
    areasDAO.streamAll(
      searchQuery: anyNamed('searchQuery'),
    ),
  ).thenAnswer(
    (_) => GQLPaginatableStream(
      subscriptionStreamCallback: (_) async* {},
    ),
  );

  return areasDAO;
}

Override _setUpThemingService(UserSettingsService userSettingsService) {
  return themingServiceProvider.overrideWithValue(
    ThemingService.withInitialThemeata(
      initialTheme: ThemeData.light(),
      userSettingsService: userSettingsService,
    ),
  );
}

Override _setUpGoRouterRefreshStream() {
  return goRouterRefreshStreamProvider.overrideWithValue(
    GoRouterRefreshStream(
      const Stream.empty(),
    ),
  );
}

Override _setUpLoggingService() {
  final mockLoggingService = MockLoggingService();
  when(mockLoggingService.navigatorObserver).thenReturn(NavigatorObserver());

  return loggingServiceProvider.overrideWithValue(mockLoggingService);
}

class FirstScreenVariant extends ValueVariant<FirstScreenVariantEnum> {
  FirstScreenVariant() : super(FirstScreenVariantEnum.values.toSet());

  @override
  Future<FirstScreenVariantEnum> setUp(FirstScreenVariantEnum value) async {
    await super.setUp(value);

    final overrides = [
      ..._setUp(),
      _setUpAuthService(value),
    ];

    if (value != FirstScreenVariantEnum.login) {
      overrides.add(_setUpLocalAuthService(value));
    }

    initGlobalProviderContainer(overrides);

    return value;
  }

  Override _setUpLocalAuthService(FirstScreenVariantEnum value) {
    final mockLocalAuthService = MockLocalAuthService();

    when(mockLocalAuthService.shouldAuthenticate)
        .thenReturn(value == FirstScreenVariantEnum.authenticate);
    when(mockLocalAuthService.canCheckBiometrics())
        .thenAnswer((_) async => false);

    return localAuthServiceProvider.overrideWithValue(mockLocalAuthService);
  }

  Override _setUpAuthService(FirstScreenVariantEnum value) {
    final mock = MockAuthService();
    when(mock.isSignedIn).thenReturn(value != FirstScreenVariantEnum.login);

    final user = User(
      uid: 'uid',
      name: 'name',
      permissions: PermissionsSet.fromSet(
        {
          if (value != FirstScreenVariantEnum.unapprovedUser)
            UserPermission.approved,
        },
      ),
      isMultiFactorEnrolled: value != FirstScreenVariantEnum.multiFactor,
      emailVerified: value != FirstScreenVariantEnum.emailVerification,
      passwordKeyHash: 'passwordKeyHash',
      person: Person(
        id: 'id',
        name: 'name',
        otherPhones: const {},
        gender: true,
        isShammas: false,
        isStudent: false,
        isServant: false,
        lastKodas: value == FirstScreenVariantEnum.updateUserSpiritData
            ? null
            : LastRecordedByInfo(time: DateTime.now(), recordedBy: 'uid'),
        lastConfession: value == FirstScreenVariantEnum.updateUserSpiritData
            ? null
            : LastRecordedByInfo(time: DateTime.now(), recordedBy: 'uid'),
      ),
    );
    when(mock.currentUser).thenReturn(user);
    when(mock.multiFactorManager).thenReturn(MockMultiFactorManager());

    when(mock.userStream).thenAnswer((_) => BehaviorSubject.seeded(user));

    return authServiceProvider.overrideWithValue(mock);
  }

  String expectedLocation() {
    switch (currentValue) {
      case FirstScreenVariantEnum.login:
        return '/login';
      case FirstScreenVariantEnum.emailVerification:
        return '/emailVerification';
      case FirstScreenVariantEnum.multiFactor:
        return '/multiFactor';
      case FirstScreenVariantEnum.unapprovedUser:
        return '/unapprovedUser';
      case FirstScreenVariantEnum.updateUserSpiritData:
        return '/updateUserSpiritData?forced=true';
      case FirstScreenVariantEnum.authenticate:
        return '/authenticate?next=%2F';
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
    await super.tearDown(value, memento);
  }
}

enum FirstScreenVariantEnum {
  login,
  emailVerification,
  multiFactor,
  unapprovedUser,
  updateUserSpiritData,
  authenticate,
  home
}

class FakeUserSettings extends Fake implements UserSettingsService {
  @override
  String? getSecondLineFor(Type t) {
    return null;
  }
}
