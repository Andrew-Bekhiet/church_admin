import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../../../fakes/fake_feature_flags_repo.dart';
import '../../../../utils.dart';

class _MockAuthBloc extends Mock implements AuthBloc {}

class _MockDatabaseService extends Mock implements DatabaseService {}

class _MockPersonsDAO extends Mock implements PersonsDAO {}

class _MockServicesDAO extends Mock implements ServicesDAO {}

class _MockAreasDAO extends Mock implements AreasDAO {}

class _MockStreetsDAO extends Mock implements StreetsDAO {}

class _MockFamiliesDAO extends Mock implements FamiliesDAO {}

class _MockStoresDAO extends Mock implements StoresDAO {}

class _MockHomeDailyDataRepository extends Mock
    implements HomeDailyDataRepository {}

class _MockLocalAuthService extends Mock implements LocalAuthService {}

class _MockUserPreferencesService extends Mock
    implements UserPreferencesService {}

void main() {
  setUp(() {
    final authBloc = _MockAuthBloc();
    when(() => authBloc.userDataStream).thenAnswer((_) => const Stream.empty());

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

    final homeDailyDataRepository = _MockHomeDailyDataRepository();
    when(homeDailyDataRepository.getVerse).thenReturn('verse');
    when(homeDailyDataRepository.getTodaysSneksar).thenReturn('sneksar');
    when(homeDailyDataRepository.getSaying).thenReturn('saying');
    when(
      homeDailyDataRepository.getTodaysBirthdaysData,
    ).thenAnswer((_) async => []);

    final localAuthService = _MockLocalAuthService();
    when(() => localAuthService.shouldAuthenticate).thenReturn(false);
    when(
      () => localAuthService.refreshUIStream,
    ).thenAnswer((_) => const Stream.empty());
    when(localAuthService.canCheckBiometrics).thenAnswer((_) async => false);

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
        _MockUserPreferencesService(),
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
