import 'dart:async';

import 'package:bloc_test/bloc_test.dart';
import 'package:church_admin/church_admin.dart';
import 'package:clock/clock.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../utils.dart';
import '../../support/fake_home_daily_data_repository.dart';
import '../../support/home_bloc_fixture.dart';
import '../../support/home_state_tabs.dart';

void main() {
  late HomeBlocFixture fixture;

  setUp(() => fixture = HomeBlocFixture());

  tearDown(defaultTearDown);

  group('initial mode', () {
    blocTest<HomeBloc, HomeState>(
      'starts in the mode the user used last',
      setUp: () => fixture = HomeBlocFixture(lastHomeMode: HomeMode.churchData),
      build: () => fixture.buildBloc(),
      wait: Duration.zero,
      verify: (bloc) => expect(bloc.state.mode, HomeMode.churchData),
    );

    blocTest<HomeBloc, HomeState>(
      'starts in sunday school when no mode was stored',
      setUp: () => fixture = HomeBlocFixture(lastHomeMode: null),
      build: () => fixture.buildBloc(),
      wait: Duration.zero,
      verify: (bloc) => expect(bloc.state.mode, HomeMode.sundaySchool),
    );
  });

  group('tabs', () {
    blocTest<HomeBloc, HomeState>(
      'sunday school mode lists summary, services and persons',
      build: () => fixture.buildBloc(),
      wait: Duration.zero,
      verify: (bloc) => expect(bloc.state.entityTypesAfterSummary, [
        Service,
        Person,
      ]),
    );

    blocTest<HomeBloc, HomeState>(
      'church data mode lists summary, areas, streets, families, stores '
      'and persons',
      setUp: () => fixture = HomeBlocFixture(lastHomeMode: HomeMode.churchData),
      build: () => fixture.buildBloc(),
      wait: Duration.zero,
      verify: (bloc) => expect(bloc.state.entityTypesAfterSummary, [
        Area,
        Street,
        Family,
        Store,
        Person,
      ]),
    );

    blocTest<HomeBloc, HomeState>(
      'the services tab starts as a grid',
      build: () => fixture.buildBloc(),
      wait: Duration.zero,
      verify: (bloc) =>
          expect(bloc.state.pages[1].listType, ViewableObjectListType.grid),
    );
  });

  group('daily data', () {
    blocTest<HomeBloc, HomeState>(
      'shows the verse, sneksar and saying on start',
      build: () => fixture.buildBloc(),
      wait: Duration.zero,
      verify: (bloc) {
        final dailyData = bloc.state.dailyData;

        expect(dailyData?.verse, fixture.dailyData.verse);
        expect(dailyData?.sneksar, fixture.dailyData.sneksar);
        expect(dailyData?.saying, fixture.dailyData.saying);
      },
    );

    final pendingBirthdays = Completer<List<String>>();
    blocTest<HomeBloc, HomeState>(
      'shows the daily texts before the birthdays have loaded',
      setUp: () => fixture = HomeBlocFixture(
        dailyData: FakeHomeDailyDataRepository(
          loadBirthdays: () => pendingBirthdays.future,
        ),
      ),
      build: () => fixture.buildBloc(),
      wait: Duration.zero,
      verify: (bloc) {
        expect(bloc.state.dailyData?.verse, fixture.dailyData.verse);
        expect(bloc.state.dailyData?.birthdaysText, isEmpty);
      },
      tearDown: () => pendingBirthdays.complete([]),
    );

    blocTest<HomeBloc, HomeState>(
      'carries the birthdays query for opening advanced search',
      build: () => fixture.buildBloc(),
      wait: Duration.zero,
      verify: (bloc) => expect(
        bloc.state.dailyData?.birthdaysQuery,
        fixture.dailyData.birthdaysQuery,
      ),
    );

    blocTest<HomeBloc, HomeState>(
      'shows no birthdays text when nobody has a birthday today',
      build: () => fixture.buildBloc(),
      wait: Duration.zero,
      verify: (bloc) => expect(bloc.state.dailyData?.birthdaysText, isEmpty),
    );

    blocTest<HomeBloc, HomeState>(
      'joins three birthday names with the arabic comma',
      setUp: () => fixture = HomeBlocFixture(
        dailyData: FakeHomeDailyDataRepository(birthdays: ['ann', 'ben', 'cy']),
      ),
      build: () => fixture.buildBloc(),
      wait: Duration.zero,
      verify: (bloc) {
        final [first, second, third] = fixture.dailyData.birthdays;

        expect(bloc.state.dailyData?.birthdaysText, '$first، $second، $third');
      },
    );

    blocTest<HomeBloc, HomeState>(
      'shows the first three birthday names and an ellipsis when there are '
      'more',
      setUp: () => fixture = HomeBlocFixture(
        dailyData: FakeHomeDailyDataRepository(
          birthdays: ['ann', 'ben', 'cy', 'dee', 'eve'],
        ),
      ),
      build: () => fixture.buildBloc(),
      wait: Duration.zero,
      verify: (bloc) {
        final [first, second, third, ...] = fixture.dailyData.birthdays;

        expect(
          bloc.state.dailyData?.birthdaysText,
          '$first، $second، $third، ...',
        );
      },
    );

    blocTest<HomeBloc, HomeState>(
      'asking for another verse replaces only the verse',
      build: () => fixture.buildBloc(),
      act: (bloc) =>
          bloc.add(const HomeDailyDataGetNew(HomeDailyDataType.verse)),
      wait: Duration.zero,
      verify: (bloc) {
        final dailyData = bloc.state.dailyData;

        expect(dailyData?.verse, fixture.dailyData.refreshedVerse);
        expect(dailyData?.saying, fixture.dailyData.saying);
        expect(dailyData?.sneksar, fixture.dailyData.sneksar);
      },
    );

    blocTest<HomeBloc, HomeState>(
      'asking for another saying replaces only the saying',
      build: () => fixture.buildBloc(),
      act: (bloc) =>
          bloc.add(const HomeDailyDataGetNew(HomeDailyDataType.saying)),
      wait: Duration.zero,
      verify: (bloc) {
        final dailyData = bloc.state.dailyData;

        expect(dailyData?.saying, fixture.dailyData.refreshedSaying);
        expect(dailyData?.verse, fixture.dailyData.verse);
        expect(dailyData?.sneksar, fixture.dailyData.sneksar);
      },
    );

    blocTest<HomeBloc, HomeState>(
      'asking for the sneksar again keeps todays sneksar',
      build: () => fixture.buildBloc(),
      act: (bloc) =>
          bloc.add(const HomeDailyDataGetNew(HomeDailyDataType.sneksar)),
      wait: Duration.zero,
      verify: (bloc) =>
          expect(bloc.state.dailyData?.sneksar, fixture.dailyData.sneksar),
    );
  });

  group('changing mode', () {
    blocTest<HomeBloc, HomeState>(
      'from the sunday school persons tab lands on the church data persons tab',
      build: () => fixture.buildBloc(),
      act: (bloc) => bloc
        ..add(const HomePageChange(2))
        ..add(const HomeChangeMode(HomeMode.churchData)),
      wait: Duration.zero,
      verify: (bloc) {
        expect(bloc.state.mode, HomeMode.churchData);
        expect(bloc.state.currentTab.type, Person);
      },
    );

    blocTest<HomeBloc, HomeState>(
      'from the church data persons tab lands on the sunday school persons tab',
      setUp: () => fixture = HomeBlocFixture(lastHomeMode: HomeMode.churchData),
      build: () => fixture.buildBloc(),
      act: (bloc) => bloc
        ..add(const HomePageChange(5))
        ..add(const HomeChangeMode(HomeMode.sundaySchool)),
      wait: Duration.zero,
      verify: (bloc) {
        expect(bloc.state.mode, HomeMode.sundaySchool);
        expect(bloc.state.currentTab.type, Person);
      },
    );

    blocTest<HomeBloc, HomeState>(
      'from a tab the other mode lacks lands on the second tab',
      setUp: () => fixture = HomeBlocFixture(lastHomeMode: HomeMode.churchData),
      build: () => fixture.buildBloc(),
      act: (bloc) => bloc
        ..add(const HomePageChange(3))
        ..add(const HomeChangeMode(HomeMode.sundaySchool)),
      wait: Duration.zero,
      verify: (bloc) => expect(bloc.state.currentPage, 1),
    );

    blocTest<HomeBloc, HomeState>(
      'from the services tab lands on the second tab of church data',
      build: () => fixture.buildBloc(),
      act: (bloc) => bloc
        ..add(const HomePageChange(1))
        ..add(const HomeChangeMode(HomeMode.churchData)),
      wait: Duration.zero,
      verify: (bloc) => expect(bloc.state.currentPage, 1),
    );

    blocTest<HomeBloc, HomeState>(
      'from the summary stays on the summary',
      build: () => fixture.buildBloc(),
      act: (bloc) => bloc.add(const HomeChangeMode(HomeMode.churchData)),
      wait: Duration.zero,
      verify: (bloc) => expect(bloc.state.currentPage, 0),
    );

    blocTest<HomeBloc, HomeState>(
      'switching mode moves from sunday school to church data',
      build: () => fixture.buildBloc(),
      act: (bloc) => bloc.add(const HomeSwitchMode()),
      wait: Duration.zero,
      verify: (bloc) => expect(bloc.state.mode, HomeMode.churchData),
    );

    blocTest<HomeBloc, HomeState>(
      'switching mode twice returns to sunday school',
      build: () => fixture.buildBloc(),
      act: (bloc) async {
        bloc.add(const HomeSwitchMode());
        await pumpEventQueue();
        bloc.add(const HomeSwitchMode());
      },
      wait: Duration.zero,
      verify: (bloc) => expect(bloc.state.mode, HomeMode.sundaySchool),
    );

    blocTest<HomeBloc, HomeState>(
      'remembers the new mode for the next start',
      build: () => fixture.buildBloc(),
      act: (bloc) => bloc.add(const HomeChangeMode(HomeMode.churchData)),
      wait: Duration.zero,
      verify: (_) =>
          expect(fixture.preferences.lastHomeMode, HomeMode.churchData),
    );
  });

  group('list type', () {
    blocTest<HomeBloc, HomeState>(
      'a list type chosen on the services tab is kept after switching mode '
      'away and back',
      build: () => fixture.buildBloc(),
      act: (bloc) async {
        bloc
          ..add(const HomeSwitchPageListType(1, ViewableObjectListType.list))
          ..add(const HomeSwitchMode());
        await pumpEventQueue();
        bloc.add(const HomeSwitchMode());
      },
      wait: Duration.zero,
      verify: (bloc) =>
          expect(bloc.state.pages[1].listType, ViewableObjectListType.list),
    );
  });

  group('list controllers', () {
    final controllers = <Object>[];

    setUp(controllers.clear);

    blocTest<HomeBloc, HomeState>(
      'the persons tab uses the same list controller in both modes',
      build: () => fixture.buildBloc(),
      act: (bloc) async {
        await pumpEventQueue();
        controllers.add(bloc.state.pages.last.listController);
        bloc.add(const HomeChangeMode(HomeMode.churchData));
        await pumpEventQueue();
        controllers.add(bloc.state.pages.last.listController);
      },
      verify: (_) => expect(controllers.first, same(controllers.last)),
    );
  });

  group('snowfall', () {
    blocTest<HomeBloc, HomeState>(
      'shows snowfall during the christmas season',
      build: () =>
          withClock(Clock.fixed(DateTime(2026, 12, 26)), fixture.buildBloc),
      verify: (bloc) => expect(bloc.state.showSnowflakeAnimation, isTrue),
    );

    blocTest<HomeBloc, HomeState>(
      'shows no snowfall outside the christmas season',
      build: () => withClock(Clock.fixed(DateTime(2026, 7)), fixture.buildBloc),
      verify: (bloc) => expect(bloc.state.showSnowflakeAnimation, isFalse),
    );
  });
}
