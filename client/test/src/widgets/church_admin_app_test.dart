// ignore_for_file: discarded_futures

import 'package:church_admin/church_admin.dart';
import 'package:churchdata_core/churchdata_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:rxdart/subjects.dart';

import 'church_admin_app_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<LoggingService>(),
  MockSpec<AuthService>(),
  MockSpec<CADatabaseRepository>(),
  MockSpec<UsersQueries>(),
  MockSpec<PersonsQueries>(),
  MockSpec<AreasQueries>(),
  MockSpec<ServicesQueries>(),
  MockSpec<LocalAuthService>()
])
@GenerateNiceMocks([MockSpec<ConnectivityService>()])
void main() {
  final FirstScreenVariant firstScreenVariant = FirstScreenVariant();

  setUp(_setUp);

  tearDown(GetIt.I.reset);

  testWidgets(
    'Church Admin App => First Screen',
    (tester) async {
      await tester.pumpWidget(const ChurchAdminApp());

      if (firstScreenVariant.currentValue ==
          FirstScreenVariantEnum.values.first) {
        verify(GetIt.I<LoggingService>().navigatorObserver);
      }

      // await tester.pumpAndSettle();

      final goRouter = tester
          .firstWidget<InheritedGoRouter>(find.byType(InheritedGoRouter))
          .goRouter;

      expect(
        goRouter.location,
        firstScreenVariant.expectedLocation(),
      );

      await _disposeLocalAuthService();
    },
    variant: firstScreenVariant,
  );

  testWidgets(
    'Church Admin App => Observes ThemingService',
    (tester) async {
      _setUpAuthService();

      await tester.pumpWidget(const ChurchAdminApp());

      expect(
        tester.firstWidget<MaterialApp>(find.byType(MaterialApp)).theme,
        GetIt.I<ThemingService>().theme,
      );

      GetIt.I<ThemingService>().theme = ThemeData.dark();
      await tester.pumpAndSettle();

      expect(
        tester.firstWidget<MaterialApp>(find.byType(MaterialApp)).theme,
        GetIt.I<ThemingService>().theme,
      );
    },
  );

  testWidgets(
    'Church Admin App => Shows SnackBar on connectivity changed',
    (tester) async {
      _setUpAuthService();

      final _connectivityController = BehaviorSubject.seeded(true);
      addTearDown(_connectivityController.close);

      when(GetIt.I<ConnectivityService>().connectivityStream)
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

void _setUpAuthService() {
  final mock = MockAuthService();

  when(mock.isSignedIn).thenReturn(false);
  when(mock.userStream).thenAnswer((_) => Stream.value(null));

  GetIt.I.registerSingleton<AuthService>(mock);
}

Future<void> _disposeLocalAuthService() async {
  if (GetIt.I.isRegistered<LocalAuthService>()) {
    await GetIt.I<LocalAuthService>().dispose();
  }
}

void _setUp() {
  _setUpLoggingService();

  _setUpUserSettings();

  _setUpGoRouterRefreshStream();

  _setUpThemingService();

  _setUpDatabaseRepo();

  _setUpConnectivityService();
}

void _setUpConnectivityService() {
  final mock = MockConnectivityService();

  when(mock.connectivityStream).thenAnswer((_) => Stream.value(false));

  GetIt.I.registerSingleton<ConnectivityService>(mock);
}

void _setUpUserSettings() {
  GetIt.I.registerSingleton<UserSettingsService>(FakeUserSettings());
}

void _setUpDatabaseRepo() {
  final usersQueries = _setUpUsersQueries();
  final areasQueries = _setUpAreasQueries();
  final personsQueries = _setUpPersonsQueries();
  final servicesQueries = _setUpServiceQueries();

  final mockCADatabaseRepository = MockCADatabaseRepository();
  when(mockCADatabaseRepository.users).thenReturn(usersQueries);
  when(mockCADatabaseRepository.areas).thenReturn(areasQueries);
  when(mockCADatabaseRepository.persons).thenReturn(personsQueries);
  when(mockCADatabaseRepository.services).thenReturn(servicesQueries);

  GetIt.I.registerSingleton<CADatabaseRepository>(
    mockCADatabaseRepository,
  );
}

MockUsersQueries _setUpUsersQueries() {
  final usersQueries = MockUsersQueries();
  when(usersQueries.getUserInfoStream(uid: anyNamed('uid')))
      .thenAnswer((_) async* {});

  return usersQueries;
}

MockServicesQueries _setUpServiceQueries() {
  final servicesQueries = MockServicesQueries();
  when(
    servicesQueries.getServicesStream(
      searchQuery: anyNamed('searchQuery'),
    ),
  ).thenReturn(
    GQLPaginatableStream(
      subscriptionStreamCallback: (_) async* {},
    ),
  );

  return servicesQueries;
}

MockPersonsQueries _setUpPersonsQueries() {
  final personsQueries = MockPersonsQueries();
  when(
    personsQueries.paginatePersons(
      searchQuery: anyNamed('searchQuery'),
    ),
  ).thenReturn(
    GQLPaginatableStream(
      subscriptionStreamCallback: (_) async* {},
    ),
  );

  return personsQueries;
}

MockAreasQueries _setUpAreasQueries() {
  final areasQueries = MockAreasQueries();
  when(
    areasQueries.getAreasStream(
      searchQuery: anyNamed('searchQuery'),
    ),
  ).thenReturn(
    GQLPaginatableStream(
      subscriptionStreamCallback: (_) async* {},
    ),
  );

  return areasQueries;
}

void _setUpThemingService() {
  GetIt.I.registerSingleton<ThemingService>(
    ThemingService.withInitialThemeata(
      ThemeData.light(),
    ),
    dispose: (t) => t.dispose(),
  );
}

void _setUpGoRouterRefreshStream() {
  GetIt.I.registerSingleton<GoRouterRefreshStream>(
    GoRouterRefreshStream(
      const Stream.empty(),
    ),
    dispose: (g) => g.dispose(),
  );
}

void _setUpLoggingService() {
  final mockLoggingService = MockLoggingService();
  when(mockLoggingService.navigatorObserver).thenReturn(NavigatorObserver());

  GetIt.I.registerSingleton<LoggingService>(mockLoggingService);
}

class FirstScreenVariant extends ValueVariant<FirstScreenVariantEnum> {
  FirstScreenVariant() : super(FirstScreenVariantEnum.values.toSet());

  @override
  Future<FirstScreenVariantEnum> setUp(FirstScreenVariantEnum value) async {
    await super.setUp(value);

    _setUpAuthService(value);

    if (value != FirstScreenVariantEnum.login) {
      _setUpLocalAuthService(value);
    }

    return value;
  }

  void _setUpLocalAuthService(FirstScreenVariantEnum value) {
    final mockLocalAuthService = MockLocalAuthService();

    when(mockLocalAuthService.shouldAuthenticate)
        .thenReturn(value == FirstScreenVariantEnum.authenticate);
    when(mockLocalAuthService.canCheckBiometrics())
        .thenAnswer((_) async => false);

    GetIt.I.registerSingleton<LocalAuthService>(
      mockLocalAuthService,
    );
  }

  void _setUpAuthService(FirstScreenVariantEnum value) {
    final mock = MockAuthService();
    when(mock.isSignedIn).thenReturn(value != FirstScreenVariantEnum.login);
    when(mock.currentUser).thenReturn(
      User(
        uid: 'uid',
        name: '',
        password: '',
        permissions: CAPermissionsSet.fromSet(const {}),
        email: 'email',
        authId: 'firebaseAuthUID',
      ),
    );
    final user = User(
      uid: 'uid',
      name: 'name',
      password: 'pass',
      person: Person(
        id: 'id',
        name: 'name',
        otherPhones: const {},
        gender: true,
        isShammas: false,
        isStudent: false,
        isServant: false,
        lastKodas: value == FirstScreenVariantEnum.updateUserData
            ? null
            : LastRecordedByInfo(time: DateTime.now(), recordedBy: 'uid'),
        lastConfession: value == FirstScreenVariantEnum.updateUserData
            ? null
            : LastRecordedByInfo(time: DateTime.now(), recordedBy: 'uid'),
      ),
    );
    when(mock.currentUser).thenReturn(user);

    when(mock.userStream).thenAnswer((_) => Stream.value(user));

    GetIt.I.allowReassignment = true;
    GetIt.I.registerSingleton<AuthService>(mock);
    GetIt.I.allowReassignment = false;
  }

  String expectedLocation() {
    if (currentValue == FirstScreenVariantEnum.login) {
      return '/login';
    } else if (currentValue == FirstScreenVariantEnum.updateUserData) {
      return '/updateUserData?forced=true';
    } else if (currentValue == FirstScreenVariantEnum.authenticate) {
      return '/authenticate?next=%2F';
    } else {
      return '/';
    }
  }

  @override
  Future<void> tearDown(
    FirstScreenVariantEnum value,
    FirstScreenVariantEnum memento,
  ) async {
    await super.tearDown(value, memento);

    await GetIt.I.unregister<AuthService>();

    if (GetIt.I.isRegistered<LocalAuthService>()) {
      await GetIt.I.unregister<LocalAuthService>();
    }
  }
}

enum FirstScreenVariantEnum { login, updateUserData, authenticate, home }

class FakeUserSettings extends Fake implements UserSettingsService {
  @override
  String? getSecondLineFor(Type t) {
    return null;
  }
}
