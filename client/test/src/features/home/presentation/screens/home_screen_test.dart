import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../../../fakes/fake_feature_flags_repo.dart';
import '../../../../utils.dart';
import 'home_screen_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<AuthBloc>(),
  MockSpec<DatabaseService>(),
  MockSpec<PersonsDAO>(),
  MockSpec<ServicesDAO>(),
  MockSpec<HomeDailyDataRepository>(),
  MockSpec<LocalAuthService>(),
  MockSpec<UserPreferencesService>(),
])
void main() {
  setUp(() {
    final authBloc = MockAuthBloc();
    when(authBloc.userDataStream).thenAnswer((_) => const Stream.empty());

    final personsDAO = MockPersonsDAO();
    when(
      personsDAO.streamAll(
        where: anyNamed('where'),
        orderBy: anyNamed('orderBy'),
      ),
    ).thenAnswer((_) => PaginatableStream.simple(factory: (_) async* {}));

    final servicesDAO = MockServicesDAO();
    when(
      servicesDAO.streamAll(
        where: anyNamed('where'),
        orderBy: anyNamed('orderBy'),
      ),
    ).thenAnswer((_) => PaginatableStream.simple(factory: (_) async* {}));

    final databaseService = MockDatabaseService();
    when(databaseService.persons).thenReturn(personsDAO);
    when(databaseService.services).thenReturn(servicesDAO);

    final homeDailyDataRepository = MockHomeDailyDataRepository();
    when(homeDailyDataRepository.getVerse()).thenReturn('verse');
    when(homeDailyDataRepository.getTodaysSneksar()).thenReturn('sneksar');
    when(homeDailyDataRepository.getSaying()).thenReturn('saying');
    when(
      homeDailyDataRepository.getTodaysBirthdaysData(),
    ).thenAnswer((_) async => []);

    final localAuthService = MockLocalAuthService();
    when(localAuthService.shouldAuthenticate).thenReturn(false);
    when(
      localAuthService.refreshUIStream,
    ).thenAnswer((_) => const Stream.empty());
    when(localAuthService.canCheckBiometrics()).thenAnswer((_) async => false);

    initGlobalProviderContainer([
      authBlocProvider.overrideWithValue(authBloc),
      databaseServiceProvider.overrideWithValue(databaseService),
      homeDailyDataRepositoryProvider.overrideWithValue(
        homeDailyDataRepository,
      ),
      localAuthServiceProvider.overrideWithValue(localAuthService),
      featureFlagsRepoProvider.overrideWithValue(FakeFeatureFlagsRepo()),
      packageInfoPluginProvider.overrideWith(
        (_) => PackageInfo(
          appName: 'church_admin',
          packageName: 'church_admin',
          version: '1.0.0',
          buildNumber: '1',
        ),
      ),
      userPreferencesServiceProvider.overrideWithValue(
        MockUserPreferencesService(),
      ),
    ]);
  });

  tearDown(defaultTearDown);

  testWidgets('unmounting the home screen leaves the shared home bloc open', (
    tester,
  ) async {
    await tester.pumpWidget(const MaterialApp(home: HomeScreen()));
    await tester.pumpWidget(const SizedBox.shrink());

    expect(HomeBloc.I.isClosed, isFalse);
  });

  testWidgets('disposing the providers after the home screen is unmounted '
      'closes the home bloc cleanly', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: HomeScreen()));
    await tester.pumpWidget(const SizedBox.shrink());

    final homeBloc = HomeBloc.I;
    resetGlobalProviderContainer();

    await tester.pump();

    expect(homeBloc.isClosed, isTrue);
  });
}
