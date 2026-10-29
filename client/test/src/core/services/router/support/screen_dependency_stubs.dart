import 'package:bloc_test/bloc_test.dart';
import 'package:church_admin/church_admin.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../features/home/support/fake_home_dao.dart';

abstract final class ScreenDependencyStubs {
  static LoggingService loggingService() {
    final loggingService = _MockLoggingService();
    when(() => loggingService.navigatorObservers).thenReturn([]);

    return loggingService;
  }

  static ConnectivityService connectivityService() {
    final connectivityService = _MockConnectivityService();
    when(
      () => connectivityService.connectivityStream,
    ).thenAnswer((_) => BehaviorSubject.seeded(true));

    return connectivityService;
  }

  static UserPreferencesService userPreferences() {
    final userPreferences = _MockUserPreferencesService();
    when(() => userPreferences.themeChoice).thenReturn(ThemeChoice.light);
    when(() => userPreferences.greatFeastTheme).thenReturn(false);
    when(
      () => userPreferences.themePreferencesStream,
    ).thenAnswer((_) => const Stream.empty());

    return userPreferences;
  }

  static DatabaseService databaseService() {
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

    registerFallbackValue(_MockStreamAllConfig<User>());
    final usersDAO = _MockUsersDAO();
    when(() => usersDAO.baseStreamAllConfig).thenReturn(
      _MockStreamAllConfig<User>(),
    );
    when(
      () => usersDAO.streamAllWithConfig(
        streamAllConfig: any(named: 'streamAllConfig'),
        searchQuery: any(named: 'searchQuery'),
        where: any(named: 'where'),
        overrideTotalLimit: any(named: 'overrideTotalLimit'),
      ),
    ).thenAnswer((_) => PaginatableStream.simple(factory: (_) async* {}));

    final databaseService = _MockDatabaseService();
    when(() => databaseService.users).thenReturn(usersDAO);
    when(() => databaseService.persons).thenReturn(personsDAO);
    when(() => databaseService.services).thenReturn(servicesDAO);
    when(() => databaseService.areas).thenReturn(_MockAreasDAO());
    when(() => databaseService.streets).thenReturn(_MockStreetsDAO());
    when(() => databaseService.families).thenReturn(_MockFamiliesDAO());
    when(() => databaseService.stores).thenReturn(_MockStoresDAO());
    when(() => databaseService.home).thenReturn(FakeHomeDao());

    return databaseService;
  }

  static HomeCubit homeCubit() {
    final homeCubit = _MockHomeCubit();
    when(() => homeCubit.state).thenReturn(
      HomeState(
        mode: HomeMode.sundaySchool,
        tabs: HomeMode.sundaySchool.tabs,
        currentTabIndex: 0,
        listTypes: const {},
        hero: HomeHero.forSeason(null),
        dailyData: const HomeDailyData(saying: '', verse: '', sneksar: ''),
      ),
    );

    return homeCubit;
  }
}

class _MockHomeCubit extends MockCubit<HomeState> implements HomeCubit {}

class _MockDatabaseService extends Mock implements DatabaseService {}

class _MockUsersDAO extends Mock implements UsersDAO {}

class _MockStreamAllConfig<T extends ViewableWithID> extends Mock
    implements StreamAllConfig<T> {}

class _MockPersonsDAO extends Mock implements PersonsDAO {}

class _MockServicesDAO extends Mock implements ServicesDAO {}

class _MockAreasDAO extends Mock implements AreasDAO {}

class _MockStreetsDAO extends Mock implements StreetsDAO {}

class _MockFamiliesDAO extends Mock implements FamiliesDAO {}

class _MockStoresDAO extends Mock implements StoresDAO {}

class _MockLoggingService extends Mock implements LoggingService {}

class _MockConnectivityService extends Mock implements ConnectivityService {}

class _MockUserPreferencesService extends Mock
    implements UserPreferencesService {}
