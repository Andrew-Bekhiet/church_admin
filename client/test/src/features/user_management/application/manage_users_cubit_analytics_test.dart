import 'package:bloc_test/bloc_test.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../fakes/fake_logging_service.dart';
import '../../../fakes/recording_analytics_provider.dart';

class _MockUsersDAO extends Mock implements UsersDAO {}

class _MockStreamAllConfig extends Mock implements StreamAllConfig<User> {}

void main() {
  group('ManageUsersCubit analytics', () {
    const searchQuery = 'مينا';

    late _MockUsersDAO dao;
    late RecordingAnalyticsProvider analytics;

    setUpAll(() => registerFallbackValue(_MockStreamAllConfig()));

    setUp(() {
      dao = _MockUsersDAO();
      analytics = RecordingAnalyticsProvider();

      when(() => dao.baseStreamAllConfig).thenReturn(_MockStreamAllConfig());
      when(
        () => dao.streamAllWithConfig(
          streamAllConfig: any(named: 'streamAllConfig'),
          searchQuery: any(named: 'searchQuery'),
          where: any(named: 'where'),
          overrideTotalLimit: any(named: 'overrideTotalLimit'),
        ),
      ).thenAnswer(
        (_) => PaginatableStream<User, String?>(
          parametersStream: Stream.value(null),
          pageSize: 1,
          factory: (_) =>
              Stream.value(const PaginatableStreamResponse(data: [])),
        ),
      );
    });

    ManageUsersCubit buildCubit() => ManageUsersCubit(
      usersDao: dao,
      analyticsService: AnalyticsService([analytics], FakeLoggingService()),
    );

    blocTest<ManageUsersCubit, ManageUsersState>(
      'a settled search is tracked as run with the query length',
      build: buildCubit,
      act: (cubit) => cubit.search(searchQuery),
      wait: HomeSearchCubit.debounceDuration * 2,
      verify: (_) => expect(analytics.trackedEvents, [
        isA<ManageUsersSearchRun>().having(
          (event) => event.queryLength,
          'queryLength',
          searchQuery.length,
        ),
      ]),
    );

    blocTest<ManageUsersCubit, ManageUsersState>(
      'repeating a search after clearing it is tracked again',
      build: buildCubit,
      act: (cubit) async {
        final settle = HomeSearchCubit.debounceDuration * 2;
        cubit.search(searchQuery);
        await Future<void>.delayed(settle);
        cubit.search('');
        await Future<void>.delayed(settle);
        cubit.search(searchQuery);
      },
      wait: HomeSearchCubit.debounceDuration * 2,
      verify: (_) => expect(
        analytics.trackedEventsOf<ManageUsersSearchRun>(),
        hasLength(2),
      ),
    );

    blocTest<ManageUsersCubit, ManageUsersState>(
      'clearing the search is not tracked as running a search',
      build: buildCubit,
      act: (cubit) => cubit.search(''),
      wait: HomeSearchCubit.debounceDuration * 2,
      verify: (_) => expect(analytics.trackedEvents, isEmpty),
    );
  });
}
