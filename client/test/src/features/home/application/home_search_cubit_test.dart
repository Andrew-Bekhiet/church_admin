import 'dart:async';

import 'package:bloc_test/bloc_test.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../fakes/fake_logging_service.dart';
import '../../../fakes/recording_analytics_provider.dart';
import '../support/fake_home_dao.dart';

void main() {
  const family = Family(id: '1', name: 'family');
  const area = Area(id: '2', name: 'area');

  late FakeHomeDao dao;
  late RecordingAnalyticsProvider analytics;

  setUp(() {
    dao = FakeHomeDao();
    analytics = RecordingAnalyticsProvider();
  });

  group('HomeSearchCubit', () {
    blocTest<HomeSearchCubit, HomeSearchState>(
      'an empty query is idle and never reaches the DAO',
      build: () => HomeSearchCubit(
        homeDao: dao,
        analyticsService: AnalyticsService([analytics], FakeLoggingService()),
      ),
      act: (cubit) => cubit.search(''),
      wait: HomeSearchCubit.debounceDuration,
      expect: () => [isA<HomeSearchIdle>()],
      verify: (_) => expect(dao.queries, isEmpty),
    );

    blocTest<HomeSearchCubit, HomeSearchState>(
      'clearing the query goes back to idle',
      build: () => HomeSearchCubit(
        homeDao: dao,
        analyticsService: AnalyticsService([analytics], FakeLoggingService()),
      ),
      act: (cubit) async {
        cubit.search('typed');
        await Future<void>.delayed(
          HomeSearchCubit.debounceDuration + const Duration(milliseconds: 50),
        );
        cubit.search('');
      },
      wait: HomeSearchCubit.debounceDuration,
      verify: (cubit) => expect(cubit.state, isA<HomeSearchIdle>()),
    );

    blocTest<HomeSearchCubit, HomeSearchState>(
      'typing quickly searches once with the latest query after the debounce',
      build: () => HomeSearchCubit(
        homeDao: dao,
        analyticsService: AnalyticsService([analytics], FakeLoggingService()),
      ),
      act: (cubit) async {
        cubit.search('first');
        await Future<void>.delayed(HomeSearchCubit.debounceDuration ~/ 3);
        cubit.search('latest');
      },
      wait: HomeSearchCubit.debounceDuration + const Duration(milliseconds: 50),
      verify: (_) => expect(dao.queries, ['latest']),
    );

    blocTest<HomeSearchCubit, HomeSearchState>(
      'a query with results lists its sections',
      setUp: () => dao.results = const HomeSearchResults(
        families: [family],
        areas: [area],
      ),
      build: () => HomeSearchCubit(
        homeDao: dao,
        analyticsService: AnalyticsService([analytics], FakeLoggingService()),
      ),
      act: (cubit) => cubit.search('anyone'),
      wait: HomeSearchCubit.debounceDuration,
      expect: () => [
        isA<HomeSearchLoading>(),
        isA<HomeSearchFound>().having(
          (found) => found.sections,
          'sections',
          dao.results.sections,
        ),
      ],
    );

    blocTest<HomeSearchCubit, HomeSearchState>(
      'a search is tracked by its length and result count, not its text',
      setUp: () => dao.results = const HomeSearchResults(
        families: [family],
        areas: [area],
      ),
      build: () => HomeSearchCubit(
        homeDao: dao,
        analyticsService: AnalyticsService([analytics], FakeLoggingService()),
      ),
      act: (cubit) => cubit.search('anyone'),
      wait: HomeSearchCubit.debounceDuration,
      verify: (_) => expect(analytics.trackedEvents.single.properties, {
        'query_length': 'anyone'.length,
        'outcome': HomeSearchOutcome.found.name,
        'section_count': 2,
        'result_count': 2,
      }),
    );

    blocTest<HomeSearchCubit, HomeSearchState>(
      'a query without results is nothing found',
      build: () => HomeSearchCubit(
        homeDao: dao,
        analyticsService: AnalyticsService([analytics], FakeLoggingService()),
      ),
      act: (cubit) => cubit.search('nobody'),
      wait: HomeSearchCubit.debounceDuration,
      expect: () => [
        isA<HomeSearchLoading>(),
        isA<HomeSearchNothingFound>(),
      ],
    );

    blocTest<HomeSearchCubit, HomeSearchState>(
      'a DAO error is failed',
      setUp: () => dao.error = StateError('offline'),
      build: () => HomeSearchCubit(
        homeDao: dao,
        analyticsService: AnalyticsService([analytics], FakeLoggingService()),
      ),
      act: (cubit) => cubit.search('anyone'),
      wait: HomeSearchCubit.debounceDuration,
      expect: () => [
        isA<HomeSearchLoading>(),
        isA<HomeSearchFailed>().having(
          (failed) => failed.error,
          'error',
          dao.error,
        ),
      ],
    );

    blocTest<HomeSearchCubit, HomeSearchState>(
      'repeating the same query does not search again',
      build: () => HomeSearchCubit(
        homeDao: dao,
        analyticsService: AnalyticsService([analytics], FakeLoggingService()),
      ),
      act: (cubit) async {
        cubit.search('same');
        await Future<void>.delayed(
          HomeSearchCubit.debounceDuration + const Duration(milliseconds: 50),
        );
        cubit.search('same');
      },
      wait: HomeSearchCubit.debounceDuration,
      verify: (_) => expect(dao.queries, ['same']),
    );

    blocTest<HomeSearchCubit, HomeSearchState>(
      'retyping a query right after clearing it still searches',
      setUp: () => dao.results = const HomeSearchResults(families: [family]),
      build: () => HomeSearchCubit(
        homeDao: dao,
        analyticsService: AnalyticsService([analytics], FakeLoggingService()),
      ),
      act: (cubit) async {
        cubit.search('a');
        await Future<void>.delayed(
          HomeSearchCubit.debounceDuration + const Duration(milliseconds: 50),
        );
        cubit.search('');
        await Future<void>.delayed(HomeSearchCubit.debounceDuration ~/ 5);
        cubit.search('a');
      },
      wait: HomeSearchCubit.debounceDuration * 2,
      verify: (cubit) => expect(cubit.state, isA<HomeSearchFound>()),
    );

    blocTest<HomeSearchCubit, HomeSearchState>(
      'clearing the query while a search is in flight ends idle',
      setUp: () => dao.gate = Completer(),
      build: () => HomeSearchCubit(
        homeDao: dao,
        analyticsService: AnalyticsService([analytics], FakeLoggingService()),
      ),
      act: (cubit) async {
        cubit.search('slow');
        await Future<void>.delayed(
          HomeSearchCubit.debounceDuration + const Duration(milliseconds: 50),
        );
        cubit.search('');
        await Future<void>.delayed(const Duration(milliseconds: 20));
        dao.gate?.complete(const HomeSearchResults(families: [family]));
      },
      wait: const Duration(milliseconds: 100),
      verify: (cubit) => expect(cubit.state, isA<HomeSearchIdle>()),
    );

    blocTest<HomeSearchCubit, HomeSearchState>(
      'clearing the query goes idle without waiting for the pending search',
      setUp: () => dao.gate = Completer(),
      build: () => HomeSearchCubit(
        homeDao: dao,
        analyticsService: AnalyticsService([analytics], FakeLoggingService()),
      ),
      act: (cubit) async {
        cubit.search('slow');
        await Future<void>.delayed(
          HomeSearchCubit.debounceDuration + const Duration(milliseconds: 50),
        );
        cubit.search('');
      },
      wait: const Duration(milliseconds: 100),
      expect: () => [isA<HomeSearchLoading>(), isA<HomeSearchIdle>()],
    );
  });
}
