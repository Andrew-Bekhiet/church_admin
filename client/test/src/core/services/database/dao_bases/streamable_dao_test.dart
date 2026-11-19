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
      countOperation: countResponse(7),
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

  Future<PaginatableStreamBase<Person>> listenToPersons() async {
    final persons = dao.streamAll(searchQuery: search, where: filters);
    addTearDown(persons.dispose);
    await persons.totalCountStream.firstWhere((count) => count != null);

    return persons;
  }

  test(
    'typing a new search with unchanged filters keeps the one count subscription',
    () async {
      await listenToPersons();

      search.add('ab');
      await pumpEventQueue();

      expect(link.requestsNamed(listOperation), hasLength(2));
      expect(link.requestsNamed(countOperation), hasLength(1));
    },
  );

  test('a count pushed after a search change reaches the list', () async {
    final persons = await listenToPersons();
    search.add('ab');
    await pumpEventQueue();

    link.pushToOpenSubscriptions(countOperation, countResponse(9));
    await pumpEventQueue();

    expect(persons.currentTotalCount, 9);
  });

  test(
    'loading the next page keeps the one live count subscription',
    () async {
      final persons = await listenToPersons();
      await persons.listenToNextPage();

      link.pushToOpenSubscriptions(countOperation, countResponse(9));
      await pumpEventQueue();

      expect(link.requestsNamed(countOperation), hasLength(1));
      expect(persons.currentTotalCount, 9);
    },
  );

  test(
    'changing the filters replaces the count subscription with one for the new filters',
    () async {
      await listenToPersons();

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
      final persons = await listenToPersons();
      link.dataByOperationName.remove(countOperation);

      filters.add([secondFilter]);
      await pumpEventQueue();
      final loadingBeforeCount = persons.isLoading;
      link.pushToOpenSubscriptions(countOperation, countResponse(3));
      await pumpEventQueue();

      expect(loadingBeforeCount, isTrue);
      expect(persons.isLoading, isFalse);
      expect(persons.currentTotalCount, 3);
    },
  );

  test('disposing the list cancels its count subscription', () async {
    final persons = await listenToPersons();
    expect(link.openRequestsNamed(countOperation), hasLength(1));

    await persons.dispose();
    await pumpEventQueue();

    expect(link.openRequestsNamed(countOperation), isEmpty);
  });
}
