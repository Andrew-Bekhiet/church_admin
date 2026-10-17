import 'package:bloc_test/bloc_test.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import '../support/fake_home_dao.dart';

void main() {
  late FakeHomeDao dao;

  setUp(() => dao = FakeHomeDao());

  group('HomeSearchCubit', () {
    blocTest<HomeSearchCubit, HomeSearchState>(
      'an empty query is idle and never reaches the DAO',
      build: () => HomeSearchCubit(homeDao: dao),
      act: (cubit) => cubit.search(''),
      wait: HomeSearchCubit.debounceDuration,
      expect: () => [isA<HomeSearchIdle>()],
      verify: (_) => expect(dao.queries, isEmpty),
    );

    blocTest<HomeSearchCubit, HomeSearchState>(
      'clearing the query goes back to idle',
      build: () => HomeSearchCubit(homeDao: dao),
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
      build: () => HomeSearchCubit(homeDao: dao),
      act: (cubit) async {
        cubit.search('first');
        await Future<void>.delayed(HomeSearchCubit.debounceDuration ~/ 3);
        cubit.search('latest');
      },
      wait: HomeSearchCubit.debounceDuration,
      verify: (_) => expect(dao.queries, ['latest']),
    );

    blocTest<HomeSearchCubit, HomeSearchState>(
      'a query with results lists its sections',
      setUp: () => dao.results = HomeSearchResults.fromJson(const {
        'families': [
          {'id': '1', 'name': 'family'},
        ],
        'areas': [
          {'id': '2', 'name': 'area'},
        ],
      }),
      build: () => HomeSearchCubit(homeDao: dao),
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
      'a query without results is nothing found',
      build: () => HomeSearchCubit(homeDao: dao),
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
      build: () => HomeSearchCubit(homeDao: dao),
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
      build: () => HomeSearchCubit(homeDao: dao),
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
  });
}
