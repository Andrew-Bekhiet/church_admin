import 'dart:async';

import 'package:bloc_test/bloc_test.dart';
import 'package:church_admin/church_admin.dart';
import 'package:clock/clock.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../utils.dart';
import '../support/fake_home_daily_data_repository.dart';
import '../support/home_cubit_fixture.dart';
import '../support/home_database_fixture.dart';
import '../support/home_state_tabs.dart';

void main() {
  late HomeCubitFixture fixture;

  setUp(() => fixture = HomeCubitFixture());

  tearDown(defaultTearDown);

  group('initial mode', () {
    blocTest<HomeCubit, HomeState>(
      'starts in the mode the user used last',
      setUp: () =>
          fixture = HomeCubitFixture(lastHomeMode: HomeMode.churchData),
      build: () => fixture.buildCubit(),
      wait: Duration.zero,
      verify: (cubit) => expect(cubit.state.mode, HomeMode.churchData),
    );

    blocTest<HomeCubit, HomeState>(
      'starts in sunday school when no mode was stored',
      setUp: () => fixture = HomeCubitFixture(lastHomeMode: null),
      build: () => fixture.buildCubit(),
      wait: Duration.zero,
      verify: (cubit) => expect(cubit.state.mode, HomeMode.sundaySchool),
    );
  });

  group('tabs', () {
    blocTest<HomeCubit, HomeState>(
      'sunday school mode lists summary, services and persons',
      build: () => fixture.buildCubit(),
      wait: Duration.zero,
      verify: (cubit) => expect(cubit.state.entityTypesAfterSummary, [
        Service,
        Person,
      ]),
    );

    blocTest<HomeCubit, HomeState>(
      'church data mode lists summary, areas, streets, families, stores '
      'and persons',
      setUp: () =>
          fixture = HomeCubitFixture(lastHomeMode: HomeMode.churchData),
      build: () => fixture.buildCubit(),
      wait: Duration.zero,
      verify: (cubit) => expect(cubit.state.entityTypesAfterSummary, [
        Area,
        Street,
        Family,
        Store,
        Person,
      ]),
    );

    blocTest<HomeCubit, HomeState>(
      'the services tab starts as a grid',
      build: () => fixture.buildCubit(),
      wait: Duration.zero,
      verify: (cubit) => expect(
        cubit.state.listTypeOf(HomeTab.services),
        ViewableObjectListType.grid,
      ),
    );

    blocTest<HomeCubit, HomeState>(
      'the services tab is a grid after switching from church data mode',
      setUp: () =>
          fixture = HomeCubitFixture(lastHomeMode: HomeMode.churchData),
      build: () => fixture.buildCubit(),
      act: (cubit) => cubit.switchMode(),
      verify: (cubit) => expect(
        cubit.state.listTypeOf(HomeTab.services),
        ViewableObjectListType.grid,
      ),
    );

    blocTest<HomeCubit, HomeState>(
      'selecting a tab past the last one lands on the last tab',
      build: () => fixture.buildCubit(),
      act: (cubit) => cubit.selectTab(cubit.state.tabs.length),
      wait: Duration.zero,
      verify: (cubit) =>
          expect(cubit.state.currentTabIndex, cubit.state.tabs.length - 1),
    );

    blocTest<HomeCubit, HomeState>(
      'selecting a tab before the first one lands on the summary',
      build: () => fixture.buildCubit(),
      act: (cubit) => cubit
        ..selectTab(2)
        ..selectTab(-1),
      wait: Duration.zero,
      verify: (cubit) => expect(cubit.state.currentTab, HomeTab.summary),
    );
  });

  group('daily data', () {
    blocTest<HomeCubit, HomeState>(
      'shows the verse, sneksar and saying on start',
      build: () => fixture.buildCubit(),
      wait: Duration.zero,
      verify: (cubit) {
        final dailyData = cubit.state.dailyData;

        expect(dailyData?.verse, fixture.dailyData.verse);
        expect(dailyData?.sneksar, fixture.dailyData.sneksar);
        expect(dailyData?.saying, fixture.dailyData.saying);
      },
    );

    final pendingBirthdays = Completer<List<String>>();
    blocTest<HomeCubit, HomeState>(
      'shows the daily texts before the birthdays have loaded',
      setUp: () => fixture = HomeCubitFixture(
        dailyData: FakeHomeDailyDataRepository(
          loadBirthdays: () => pendingBirthdays.future,
        ),
      ),
      build: () => fixture.buildCubit(),
      wait: Duration.zero,
      verify: (cubit) {
        expect(cubit.state.dailyData?.verse, fixture.dailyData.verse);
        expect(cubit.state.birthdays, isNull);
      },
      tearDown: () => pendingBirthdays.complete([]),
    );

    blocTest<HomeCubit, HomeState>(
      'carries the birthdays query for opening advanced search',
      build: () => fixture.buildCubit(),
      wait: Duration.zero,
      verify: (cubit) => expect(
        cubit.state.birthdays?.query,
        fixture.dailyData.birthdaysQuery,
      ),
    );

    blocTest<HomeCubit, HomeState>(
      'shows no birthdays text when nobody has a birthday today',
      build: () => fixture.buildCubit(),
      wait: Duration.zero,
      verify: (cubit) => expect(cubit.state.birthdays?.preview, isEmpty),
    );

    blocTest<HomeCubit, HomeState>(
      'joins three birthday names with the arabic comma',
      setUp: () => fixture = HomeCubitFixture(
        dailyData: FakeHomeDailyDataRepository(birthdays: ['ann', 'ben', 'cy']),
      ),
      build: () => fixture.buildCubit(),
      wait: Duration.zero,
      verify: (cubit) {
        final [first, second, third] = fixture.dailyData.birthdays;

        expect(cubit.state.birthdays?.preview, '$first، $second، $third');
      },
    );

    blocTest<HomeCubit, HomeState>(
      'shows the first three birthday names and an ellipsis when there are '
      'more',
      setUp: () => fixture = HomeCubitFixture(
        dailyData: FakeHomeDailyDataRepository(
          birthdays: ['ann', 'ben', 'cy', 'dee', 'eve'],
        ),
      ),
      build: () => fixture.buildCubit(),
      wait: Duration.zero,
      verify: (cubit) {
        final [first, second, third, ...] = fixture.dailyData.birthdays;

        expect(
          cubit.state.birthdays?.preview,
          '$first، $second، $third، ...',
        );
      },
    );

    blocTest<HomeCubit, HomeState>(
      'asking for another verse replaces only the verse',
      build: () => fixture.buildCubit(),
      act: (cubit) => cubit.showAnotherDailyText(HomeDailyDataType.verse),
      wait: Duration.zero,
      verify: (cubit) {
        final dailyData = cubit.state.dailyData;

        expect(dailyData?.verse, fixture.dailyData.refreshedVerse);
        expect(dailyData?.saying, fixture.dailyData.saying);
        expect(dailyData?.sneksar, fixture.dailyData.sneksar);
      },
    );

    blocTest<HomeCubit, HomeState>(
      'asking for another saying replaces only the saying',
      build: () => fixture.buildCubit(),
      act: (cubit) => cubit.showAnotherDailyText(HomeDailyDataType.saying),
      wait: Duration.zero,
      verify: (cubit) {
        final dailyData = cubit.state.dailyData;

        expect(dailyData?.saying, fixture.dailyData.refreshedSaying);
        expect(dailyData?.verse, fixture.dailyData.verse);
        expect(dailyData?.sneksar, fixture.dailyData.sneksar);
      },
    );

    blocTest<HomeCubit, HomeState>(
      'asking for the sneksar again keeps todays sneksar',
      build: () => fixture.buildCubit(),
      act: (cubit) => cubit.showAnotherDailyText(HomeDailyDataType.sneksar),
      wait: Duration.zero,
      verify: (cubit) =>
          expect(cubit.state.dailyData?.sneksar, fixture.dailyData.sneksar),
    );

    blocTest<HomeCubit, HomeState>(
      'asking for another verse keeps the loaded birthdays',
      build: () => fixture.buildCubit(),
      act: (cubit) async {
        await pumpEventQueue();
        cubit.showAnotherDailyText(HomeDailyDataType.verse);
      },
      wait: Duration.zero,
      verify: (cubit) => expect(
        cubit.state.birthdays?.query,
        fixture.dailyData.birthdaysQuery,
      ),
    );
  });

  group('changing mode', () {
    blocTest<HomeCubit, HomeState>(
      'from the sunday school persons tab lands on the church data persons tab',
      build: () => fixture.buildCubit(),
      act: (cubit) async {
        cubit.selectTab(2);
        await cubit.changeMode(HomeMode.churchData);
      },
      wait: Duration.zero,
      verify: (cubit) {
        expect(cubit.state.mode, HomeMode.churchData);
        expect(cubit.state.currentTab.entity, Person);
      },
    );

    blocTest<HomeCubit, HomeState>(
      'from the church data persons tab lands on the sunday school persons tab',
      setUp: () =>
          fixture = HomeCubitFixture(lastHomeMode: HomeMode.churchData),
      build: () => fixture.buildCubit(),
      act: (cubit) async {
        cubit.selectTab(5);
        await cubit.changeMode(HomeMode.sundaySchool);
      },
      wait: Duration.zero,
      verify: (cubit) {
        expect(cubit.state.mode, HomeMode.sundaySchool);
        expect(cubit.state.currentTab.entity, Person);
      },
    );

    blocTest<HomeCubit, HomeState>(
      'from a tab the other mode lacks lands on the second tab',
      setUp: () =>
          fixture = HomeCubitFixture(lastHomeMode: HomeMode.churchData),
      build: () => fixture.buildCubit(),
      act: (cubit) async {
        cubit.selectTab(3);
        await cubit.changeMode(HomeMode.sundaySchool);
      },
      wait: Duration.zero,
      verify: (cubit) => expect(cubit.state.currentTabIndex, 1),
    );

    blocTest<HomeCubit, HomeState>(
      'from the services tab lands on the second tab of church data',
      build: () => fixture.buildCubit(),
      act: (cubit) async {
        cubit.selectTab(1);
        await cubit.changeMode(HomeMode.churchData);
      },
      wait: Duration.zero,
      verify: (cubit) => expect(cubit.state.currentTabIndex, 1),
    );

    blocTest<HomeCubit, HomeState>(
      'from the summary stays on the summary',
      build: () => fixture.buildCubit(),
      act: (cubit) => cubit.changeMode(HomeMode.churchData),
      wait: Duration.zero,
      verify: (cubit) => expect(cubit.state.currentTabIndex, 0),
    );

    blocTest<HomeCubit, HomeState>(
      'switching mode moves from sunday school to church data',
      build: () => fixture.buildCubit(),
      act: (cubit) => cubit.switchMode(),
      wait: Duration.zero,
      verify: (cubit) => expect(cubit.state.mode, HomeMode.churchData),
    );

    blocTest<HomeCubit, HomeState>(
      'switching mode twice returns to sunday school',
      build: () => fixture.buildCubit(),
      act: (cubit) async {
        await cubit.switchMode();
        await cubit.switchMode();
      },
      wait: Duration.zero,
      verify: (cubit) => expect(cubit.state.mode, HomeMode.sundaySchool),
    );

    blocTest<HomeCubit, HomeState>(
      'remembers the new mode for the next start',
      build: () => fixture.buildCubit(),
      act: (cubit) => cubit.changeMode(HomeMode.churchData),
      wait: Duration.zero,
      verify: (_) =>
          expect(fixture.preferences.lastHomeMode, HomeMode.churchData),
    );
  });

  group('list type', () {
    blocTest<HomeCubit, HomeState>(
      'a list type chosen on the services tab is kept after switching mode '
      'away and back',
      build: () => fixture.buildCubit(),
      act: (cubit) async {
        cubit
          ..selectTab(1)
          ..toggleListType();
        await cubit.switchMode();
        await cubit.switchMode();
      },
      wait: Duration.zero,
      verify: (cubit) => expect(
        cubit.state.listTypeOf(HomeTab.services),
        ViewableObjectListType.list,
      ),
    );

    blocTest<HomeCubit, HomeState>(
      'toggling twice on the services tab returns to the grid',
      build: () => fixture.buildCubit(),
      act: (cubit) => cubit
        ..selectTab(1)
        ..toggleListType()
        ..toggleListType(),
      wait: Duration.zero,
      verify: (cubit) => expect(
        cubit.state.listTypeOf(HomeTab.services),
        ViewableObjectListType.grid,
      ),
    );

    blocTest<HomeCubit, HomeState>(
      'a tab without a list type stays without one when toggled',
      build: () => fixture.buildCubit(),
      act: (cubit) => cubit
        ..selectTab(2)
        ..toggleListType(),
      wait: Duration.zero,
      verify: (cubit) => expect(
        cubit.state.listTypeOf(HomeTab.sundaySchoolPersons),
        isNull,
      ),
    );

    blocTest<HomeCubit, HomeState>(
      'toggling on the summary leaves the services tab as a grid',
      build: () => fixture.buildCubit(),
      act: (cubit) => cubit.toggleListType(),
      wait: Duration.zero,
      verify: (cubit) => expect(
        cubit.state.listTypeOf(HomeTab.services),
        ViewableObjectListType.grid,
      ),
    );
  });

  group('list controllers', () {
    final controllers = <Object?>[];

    setUp(controllers.clear);

    blocTest<HomeCubit, HomeState>(
      'the persons tab uses the same list controller in both modes',
      build: () => fixture.buildCubit(),
      act: (cubit) async {
        controllers.add(cubit.listControllerFor(cubit.state.tabs.last));
        await cubit.changeMode(HomeMode.churchData);
        controllers.add(cubit.listControllerFor(cubit.state.tabs.last));
      },
      verify: (_) {
        expect(controllers.first, isNotNull);
        expect(controllers.first, same(controllers.last));
      },
    );

    const area = Area(id: 'scoped-area', name: 'Scoped Area');
    blocTest<HomeCubit, HomeState>(
      'a user scoped to an area gets an areas list limited to that area',
      setUp: () => fixture = HomeCubitFixture(
        lastHomeMode: HomeMode.churchData,
        userDataStream: Stream.value(
          const User(
            uid: 'scoped',
            name: 'scoped',
            adminOn: [AdminOnData(permissionId: 'permission', area: area)],
          ),
        ),
      ),
      build: () => fixture.buildCubit(),
      act: (cubit) async {
        cubit.selectTab(1);
        await pumpEventQueue();
      },
      verify: (_) => expect(
        fixture.database.latestFiltersByEntity[Area]?.map(
          (filter) => filter.queryToJson(),
        ),
        [
          {
            'id': {
              '_in': [area.id],
            },
          },
        ],
      ),
    );

    blocTest<HomeCubit, HomeState>(
      'a user with global read access gets an unfiltered areas list',
      setUp: () => fixture = HomeCubitFixture(
        lastHomeMode: HomeMode.churchData,
        userDataStream: Stream.value(
          const User(
            uid: 'global',
            name: 'global',
            permissions: PermissionsSet.fromSet({UserPermission.readAllData}),
          ),
        ),
      ),
      build: () => fixture.buildCubit(),
      act: (cubit) async {
        cubit.selectTab(1);
        await pumpEventQueue();
      },
      verify: (_) =>
          expect(fixture.database.latestFiltersByEntity[Area], isEmpty),
    );

    blocTest<HomeCubit, HomeState>(
      'closing the cubit disposes the list controllers it created',
      build: () => fixture.buildCubit(),
      act: (cubit) async {
        cubit.selectTab(1);
        await cubit.close();
      },
      verify: (_) =>
          expect(fixture.database.disposedEntities, contains(Service)),
    );
  });

  group('tab total', () {
    const totals = {Service: 3, Person: 9};

    blocTest<HomeCubit, HomeState>(
      'follows the total of the selected tab',
      setUp: () => fixture = HomeCubitFixture(
        database: HomeDatabaseFixture(totals: totals),
      ),
      build: () => fixture.buildCubit(),
      act: (cubit) async {
        cubit.selectTab(1);
        await pumpEventQueue();
        cubit.selectTab(2);
      },
      wait: Duration.zero,
      verify: (cubit) => expect(cubit.state.currentTabTotal, totals[Person]),
    );

    blocTest<HomeCubit, HomeState>(
      'is absent on the summary',
      setUp: () => fixture = HomeCubitFixture(
        database: HomeDatabaseFixture(totals: totals),
      ),
      build: () => fixture.buildCubit(),
      act: (cubit) async {
        cubit.selectTab(1);
        await pumpEventQueue();
        cubit.selectTab(0);
      },
      wait: Duration.zero,
      verify: (cubit) => expect(cubit.state.currentTabTotal, isNull),
    );

    blocTest<HomeCubit, HomeState>(
      'follows the total of the tab a mode change lands on',
      setUp: () => fixture = HomeCubitFixture(
        database: HomeDatabaseFixture(totals: totals),
      ),
      build: () => fixture.buildCubit(),
      act: (cubit) async {
        cubit.selectTab(2);
        await pumpEventQueue();
        await cubit.changeMode(HomeMode.churchData);
      },
      wait: Duration.zero,
      verify: (cubit) => expect(cubit.state.currentTabTotal, totals[Person]),
    );
  });

  group('signed-in user', () {
    const manager = User(
      uid: 'manager',
      name: 'manager',
      permissions: PermissionsSet.fromSet({UserPermission.manageAllUsers}),
    );

    blocTest<HomeCubit, HomeState>(
      'a user who can manage some users is allowed to manage users',
      setUp: () => fixture = HomeCubitFixture(
        userDataStream: Stream.value(manager),
      ),
      build: () => fixture.buildCubit(),
      wait: Duration.zero,
      verify: (cubit) => expect(cubit.state.canManageUsers, isTrue),
    );

    blocTest<HomeCubit, HomeState>(
      'a user who cannot manage users is not allowed to',
      setUp: () => fixture = HomeCubitFixture(
        userDataStream: Stream.value(
          const User(uid: 'servant', name: 'servant'),
        ),
      ),
      build: () => fixture.buildCubit(),
      wait: Duration.zero,
      verify: (cubit) => expect(cubit.state.canManageUsers, isFalse),
    );

    blocTest<HomeCubit, HomeState>(
      'the account is the signed-in user',
      setUp: () => fixture = HomeCubitFixture(
        userDataStream: Stream.value(manager),
      ),
      build: () => fixture.buildCubit(),
      wait: Duration.zero,
      verify: (cubit) => expect(cubit.state.account, manager),
    );

    blocTest<HomeCubit, HomeState>(
      'signing out clears the account',
      setUp: () => fixture = HomeCubitFixture(
        userDataStream: Stream.fromIterable([manager, null]),
      ),
      build: () => fixture.buildCubit(),
      wait: Duration.zero,
      verify: (cubit) => expect(cubit.state.account, isNull),
    );
  });

  group('hero', () {
    blocTest<HomeCubit, HomeState>(
      'shows snowfall during the christmas season',
      build: () =>
          withClock(Clock.fixed(DateTime(2026, 12, 26)), fixture.buildCubit),
      verify: (cubit) => expect(cubit.state.hero.showsSnowfall, isTrue),
    );

    blocTest<HomeCubit, HomeState>(
      'shows no snowfall outside the christmas season',
      build: () =>
          withClock(Clock.fixed(DateTime(2026, 7)), fixture.buildCubit),
      verify: (cubit) => expect(cubit.state.hero.showsSnowfall, isFalse),
    );
  });
}
