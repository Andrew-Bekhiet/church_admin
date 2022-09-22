import 'package:church_admin/church_admin.dart';
import 'package:churchdata_core/churchdata_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'church_admin_app_test.mocks.dart';

@GenerateMocks([
  LoggingService,
  CAAuthRepository,
  CADatabaseRepository,
  UsersQueries,
  PersonsQueries,
  AreasQueries,
  ServicesQueries,
  LocalAuthService
])
void main() {
  group(
    'Church Admin App widget tests: ',
    () {
      final FirstScreenVariant firstScreenVariant = FirstScreenVariant();

      setUp(
        () async {
          final mockLoggingService = MockLoggingService();
          when(mockLoggingService.navigatorObserver)
              .thenReturn(NavigatorObserver());

          GetIt.I.registerSingleton<LoggingService>(mockLoggingService);
          GetIt.I.registerSingleton<GoRouterRefreshStream>(
            GoRouterRefreshStream(
              const Stream.empty(),
            ),
            dispose: (g) => g.dispose(),
          );

          GetIt.I.registerSingleton<ThemingService>(
            ThemingService.withInitialThemeata(
              ThemeData.light(),
            ),
            dispose: (t) => t.dispose(),
          );

          final usersQueries = MockUsersQueries();
          final areasQueries = MockAreasQueries();
          final personsQueries = MockPersonsQueries();
          final servicesQueries = MockServicesQueries();

          when(usersQueries.getUserInfoStream()).thenAnswer((_) async* {});
          when(areasQueries.getAreasStream(
                  searchQuery: anyNamed('searchQuery')))
              .thenReturn(
            GQLPaginatableStream(
              subscriptionStream: (_) async* {},
            ),
          );
          when(personsQueries.getPersonsStream(
                  searchQuery: anyNamed('searchQuery')))
              .thenReturn(
            GQLPaginatableStream(
              subscriptionStream: (_) async* {},
            ),
          );
          when(servicesQueries.getServicesStream(
                  searchQuery: anyNamed('searchQuery')))
              .thenReturn(
            GQLPaginatableStream(
              subscriptionStream: (_) async* {},
            ),
          );

          final mockCADatabaseRepository = MockCADatabaseRepository();
          when(mockCADatabaseRepository.users).thenReturn(usersQueries);
          when(mockCADatabaseRepository.areas).thenReturn(areasQueries);
          when(mockCADatabaseRepository.persons).thenReturn(personsQueries);
          when(mockCADatabaseRepository.services).thenReturn(servicesQueries);

          GetIt.I.registerSingleton<CADatabaseRepository>(
              mockCADatabaseRepository);
        },
      );

      tearDown(GetIt.I.reset);

      testWidgets(
        'First Screen',
        (tester) async {
          await tester.pumpWidget(const ChurchAdminApp());

          if (firstScreenVariant.currentValue ==
              FirstScreenVariantEnum.values.first) {
            verify(GetIt.I<LoggingService>().navigatorObserver);
          }

          expect(
            tester
                .firstWidget<InheritedGoRouter>(find.byType(InheritedGoRouter))
                .goRouter
                .location,
            firstScreenVariant.currentValue == FirstScreenVariantEnum.login
                ? '/login'
                : firstScreenVariant.currentValue ==
                        FirstScreenVariantEnum.updateUserData
                    ? '/updateUserData?forced=true'
                    : firstScreenVariant.currentValue ==
                            FirstScreenVariantEnum.authenticate
                        ? '/authenticate?next=%2F'
                        : '/',
          );
        },
        variant: firstScreenVariant,
      );

      testWidgets(
        'Observes ThemingService',
        (tester) async {
          final mock = MockCAAuthRepository();
          when(mock.isSignedIn).thenReturn(false);
          GetIt.I.registerSingleton<CAAuthRepository>(mock);

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
        variant: ValueVariant({FirstScreenVariantEnum.login}),
      );
    },
  );
}

class FirstScreenVariant extends ValueVariant<FirstScreenVariantEnum> {
  FirstScreenVariant() : super(FirstScreenVariantEnum.values.toSet());

  @override
  Future<FirstScreenVariantEnum> setUp(FirstScreenVariantEnum value) async {
    await super.setUp(value);

    final mock = MockCAAuthRepository();
    when(mock.isSignedIn).thenReturn(value != FirstScreenVariantEnum.login);
    when(mock.currentUser).thenReturn(
      User(
        name: '',
        userData: UserData(
          password: '',
          uid: 'uid',
          permissions: CAPermissionsSet.fromSet(const {}),
          email: 'email',
          firebaseAuthUid: 'firebaseAuthUID',
        ),
        uid: 'uid',
      ),
    );
    when(mock.currentUserData).thenReturn(
      Person(
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

    GetIt.I.registerSingleton<CAAuthRepository>(mock);

    if (value != FirstScreenVariantEnum.login) {
      final mockLocalAuthService = MockLocalAuthService();

      when(mockLocalAuthService.shouldAuthenticate)
          .thenReturn(value == FirstScreenVariantEnum.authenticate);
      when(mockLocalAuthService.canCheckBiometrics())
          .thenAnswer((_) async => false);

      GetIt.I.registerSingleton<LocalAuthService>(
        mockLocalAuthService,
      );
    }

    return value;
  }

  @override
  Future<void> tearDown(
      FirstScreenVariantEnum value, FirstScreenVariantEnum memento) async {
    await super.tearDown(value, memento);

    await GetIt.I.unregister<CAAuthRepository>();

    if (GetIt.I.isRegistered<LocalAuthService>()) {
      await GetIt.I.unregister<LocalAuthService>();
    }
  }
}

enum FirstScreenVariantEnum { login, updateUserData, authenticate, home }
