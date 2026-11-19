import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gql/language.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:rxdart/rxdart.dart';

import '../../../fakes/recording_subscription_link.dart';

void main() {
  const subscriptionOperation = 'watchThing';
  const queryOperation = 'thing';

  late BehaviorSubject<bool> connectivity;
  late RecordingSubscriptionLink link;
  late DBGraphQLClient client;

  setUp(() {
    connectivity = BehaviorSubject();
    link = RecordingSubscriptionLink({
      subscriptionOperation: {
        'thing': {'__typename': 'Thing', 'id': '1'},
      },
      queryOperation: {
        'thing': {'__typename': 'Thing', 'id': '1'},
      },
    });
    client = DBGraphQLClient(
      connectivityStream: connectivity,
      link: link,
      cache: GraphQLCache(),
    );
  });

  tearDown(() => connectivity.close());

  Stream<QueryResult<Object?>> watchThing() => client.subscribe(
    SubscriptionOptions(
      document: parseString(
        'subscription $subscriptionOperation { thing { id } }',
      ),
      operationName: subscriptionOperation,
    ),
  );

  Future<QueryResult<Object?>> queryThing() => client.query(
    QueryOptions(
      document: parseString('query $queryOperation { thing { id } }'),
      operationName: queryOperation,
    ),
  );

  StreamSubscription<QueryResult<Object?>> listenTo(
    Stream<QueryResult<Object?>> results,
  ) {
    final subscription = results.listen(null);
    addTearDown(subscription.cancel);

    return subscription;
  }

  test('a subscription started while connected is sent once', () async {
    connectivity.add(true);

    listenTo(watchThing());
    await pumpEventQueue();

    expect(link.allRequestsNamed(subscriptionOperation), hasLength(1));
  });

  test('a subscription started while offline is sent once', () async {
    connectivity.add(false);

    listenTo(watchThing());
    await pumpEventQueue();

    expect(link.allRequestsNamed(subscriptionOperation), hasLength(1));
  });

  test(
    'a subscription started before connectivity is known is sent right away',
    () async {
      listenTo(watchThing());
      await pumpEventQueue();

      expect(link.allRequestsNamed(subscriptionOperation), hasLength(1));
    },
  );

  test(
    'a subscription started before connectivity is known is not sent again once connected',
    () async {
      listenTo(watchThing());
      await pumpEventQueue();

      connectivity.add(true);
      await pumpEventQueue();

      expect(link.allRequestsNamed(subscriptionOperation), hasLength(1));
    },
  );

  test(
    'a subscription listened to after going offline is sent once',
    () async {
      connectivity.add(true);
      final results = watchThing();
      connectivity.add(false);

      listenTo(results);
      await pumpEventQueue();

      expect(link.allRequestsNamed(subscriptionOperation), hasLength(1));
    },
  );

  test(
    'a subscription started after the earlier ones ended still follows connectivity',
    () async {
      connectivity.add(true);
      await listenTo(watchThing()).cancel();
      listenTo(watchThing());
      await pumpEventQueue();
      final requestsWhileOnline = link
          .allRequestsNamed(subscriptionOperation)
          .length;

      connectivity.add(false);
      await pumpEventQueue();
      final requestsWhileOffline = link
          .allRequestsNamed(subscriptionOperation)
          .length;
      connectivity.add(true);
      await pumpEventQueue();

      expect(requestsWhileOffline, requestsWhileOnline + 1);
      expect(
        link.allRequestsNamed(subscriptionOperation),
        hasLength(requestsWhileOnline + 2),
      );
    },
  );

  test('a subscription can be listened to more than once', () async {
    connectivity.add(true);
    final results = watchThing();

    listenTo(results);
    listenTo(results);
    await pumpEventQueue();

    expect(link.openRequestsNamed(subscriptionOperation), hasLength(2));
  });

  test('a query while offline is answered from the cache', () async {
    connectivity.add(true);
    await queryThing();
    connectivity.add(false);

    await queryThing();

    expect(link.allRequestsNamed(queryOperation), hasLength(1));
  });
}
