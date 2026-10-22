import 'package:bloc_test/bloc_test.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter_riverpod/misc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kaisel/kaisel.dart';
import 'package:material_ui/material_ui.dart';
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
  MockSpec<PackageInfo>(),
])
void main() {
  setUp(_setUp);

  tearDown(resetGlobalProviderContainer);

  testWidgets('the app uses the selected theme', (tester) async {
    final router = KaiselRouterConfig<AppRoute>(
      initial: const HomeScreenRoute(),
      builder: (context, route) => route.build(context),
    );
    addTearDown(router.dispose);
    await tester.pumpWidget(ChurchAdminApp(routerConfig: router));

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

  testWidgets('losing connectivity shows a snack bar', (tester) async {
    final connectivityController = BehaviorSubject.seeded(true);
    addTearDown(connectivityController.close);

    when(
      ConnectivityService.I.connectivityStream,
    ).thenAnswer((_) => connectivityController);

    tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.resumed);

    final router = KaiselRouterConfig<AppRoute>(
      initial: const HomeScreenRoute(),
      builder: (context, route) => route.build(context),
    );
    addTearDown(router.dispose);
    await tester.pumpWidget(ChurchAdminApp(routerConfig: router));

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

List<Override> _setUp() {
  final overrides = [
    _setUpAuthBloc(),
    _setUpUnlockedLocalAuthService(),
    _setUpLoggingService(),
    userPreferencesServiceProvider.overrideWithValue(
      FakeUserPreferencesService(),
    ),
    _setUpRouterRefreshStream(),
    _setUpThemingService(FakeUserPreferencesService()),
    _setUpDatabaseRepo(),
    _setUpConnectivityService(),
    _setUpNotificationsService(),
    _setUpHomeCubit(),
    packageInfoPluginProvider.overrideWith((_) => MockPackageInfo()),
    featureFlagsRepoProvider.overrideWithValue(FakeFeatureFlagsRepo()),
  ];

  initGlobalProviderContainer(overrides);

  return overrides;
}

Override _setUpUnlockedLocalAuthService() {
  final mock = MockLocalAuthService();

  when(mock.shouldAuthenticate).thenReturn(false);
  when(mock.refreshUIStream).thenAnswer((_) => const Stream.empty());

  return localAuthServiceProvider.overrideWithValue(mock);
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

Override _setUpRouterRefreshStream() {
  return routerRefreshStreamProvider.overrideWithValue(
    RouterRefreshStream(const Stream.empty()),
  );
}

Override _setUpLoggingService() {
  final mockLoggingService = MockLoggingService();
  when(
    mockLoggingService.navigatorObservers,
  ).thenReturn([NavigatorObserver()]);

  return loggingServiceProvider.overrideWithValue(mockLoggingService);
}

Override _setUpHomeCubit() {
  final mockHomeCubit = _MockHomeCubit();
  mocktail
      .when(() => mockHomeCubit.state)
      .thenReturn(
        HomeState(
          mode: HomeMode.sundaySchool,
          tabs: HomeMode.sundaySchool.tabs,
          currentTabIndex: 0,
          listTypes: const {},
          hero: HomeHero.forSeason(null),
          dailyData: const HomeDailyData(saying: '', verse: '', sneksar: ''),
        ),
      );

  return homeCubitProvider.overrideWithValue(mockHomeCubit);
}

class _MockHomeCubit extends MockCubit<HomeState> implements HomeCubit {}

class FakeUserPreferencesService extends Fake
    implements UserPreferencesService {
  @override
  Stream<({bool? darkTheme, bool greatFeastTheme})>
  get themePreferencesStream => const Stream.empty();
}
