import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../fakes/fake_feature_flags_repo.dart';
import '../../../../fakes/recording_subscription_link.dart';

void main() {
  const listOperation = 'watchAllPersons';
  const countOperation = 'watchPersonsCount';

  late BehaviorSubject<bool> connectivity;
  late RecordingSubscriptionLink link;
  late PersonsDAO dao;
  late BehaviorSubject<String?> search;
  late BehaviorSubject<List<Filter>> filters;

  final firstFilter = Filter<Object>(
    PersonFields().id,
    MultiSelectOperator.anyOf,
    ['00000000-0000-0000-0000-000000000001'],
  );
  final secondFilter = Filter<Object>(
    PersonFields().id,
    MultiSelectOperator.anyOf,
    ['00000000-0000-0000-0000-000000000002'],
  );

  Json countResponse(int count) => {
    'personsAggregate': {
      '__typename': 'PersonsAggregate',
      'aggregate': {'__typename': 'PersonsAggregateFields', 'count': count},
    },
  };

  setUp(() {
    initGlobalProviderContainer([
      featureFlagsRepoProvider.overrideWithValue(FakeFeatureFlagsRepo()),
    ]);
    connectivity = BehaviorSubject.seeded(true);
    link = RecordingSubscriptionLink({
      listOperation: {'persons': <Object?>[]},
    });
    dao = PersonsDAO(
      db: DatabaseService(
        DBGraphQLClient(
          connectivityStream: connectivity,
          link: link,
          cache: GraphQLCache(),
          autoChangeFetchPolicy: false,
        ),
      ),
    );
    search = BehaviorSubject.seeded('a');
    filters = BehaviorSubject.seeded([firstFilter]);
  });

  tearDown(() async {
    await search.close();
    await filters.close();
    await connectivity.close();
    resetGlobalProviderContainer();
  });

  Future<PaginatableStreamBase<Person>> listenUntilPersonsCounted(
    int initialCount,
  ) async {
    link.dataByOperationName[countOperation] = countResponse(initialCount);
    final persons = dao.streamAll(searchQuery: search, where: filters);
    addTearDown(persons.dispose);
    await persons.totalCountStream.firstWhere((count) => count == initialCount);

    return persons;
  }

  test(
    'typing a new search with unchanged filters keeps the one count subscription',
    () async {
      await listenUntilPersonsCounted(7);

      search.add('ab');
      await pumpEventQueue();

      expect(link.allRequestsNamed(listOperation), hasLength(2));
      expect(link.allRequestsNamed(countOperation), hasLength(1));
    },
  );

  test('a count pushed after a search change reaches the list', () async {
    const initialCount = 7;
    const pushedCount = 9;
    final persons = await listenUntilPersonsCounted(initialCount);
    search.add('ab');
    await pumpEventQueue();

    link.pushToOpenSubscriptions(countOperation, countResponse(pushedCount));
    await pumpEventQueue();

    expect(persons.currentTotalCount, pushedCount);
  });

  test(
    'loading the next page keeps the one live count subscription',
    () async {
      const initialCount = 7;
      const pushedCount = 9;
      final persons = await listenUntilPersonsCounted(initialCount);
      await persons.listenToNextPage();
      expect(link.allRequestsNamed(listOperation), hasLength(2));

      link.pushToOpenSubscriptions(countOperation, countResponse(pushedCount));
      await pumpEventQueue();

      expect(link.allRequestsNamed(countOperation), hasLength(1));
      expect(persons.currentTotalCount, pushedCount);
    },
  );

  test(
    'changing the filters replaces the count subscription with one for the new filters',
    () async {
      await listenUntilPersonsCounted(7);

      filters.add([secondFilter]);
      await pumpEventQueue();

      expect(
        link
            .openRequestsNamed(countOperation)
            .map((request) => request.variables['where']),
        [
          [secondFilter.queryToJson()],
        ],
      );
    },
  );

  test(
    'changing the filters keeps the list loading until their own count arrives',
    () async {
      const secondFilterCount = 3;
      final persons = await listenUntilPersonsCounted(7);
      link.dataByOperationName.remove(countOperation);

      filters.add([secondFilter]);
      await pumpEventQueue();
      final loadingBeforeCount = persons.isLoading;
      link.pushToOpenSubscriptions(
        countOperation,
        countResponse(secondFilterCount),
      );
      await pumpEventQueue();

      expect(loadingBeforeCount, isTrue);
      expect(persons.isLoading, isFalse);
      expect(persons.currentTotalCount, secondFilterCount);
    },
  );

  test(
    'a list without a count finishes loading after its filters change',
    () async {
      final persons = dao.streamAllWithConfig(
        streamAllConfig: dao.baseStreamAllConfig,
        searchQuery: search,
        where: filters,
      );
      addTearDown(persons.dispose);
      await persons.first;

      filters.add([secondFilter]);
      await pumpEventQueue();

      expect(link.allRequestsNamed(listOperation), hasLength(2));
      expect(persons.isLoading, isFalse);
    },
  );

  test('disposing the list cancels its count subscription', () async {
    final persons = await listenUntilPersonsCounted(7);
    expect(link.openRequestsNamed(countOperation), hasLength(1));

    await persons.dispose();
    await pumpEventQueue();

    expect(link.openRequestsNamed(countOperation), isEmpty);
  });
}
