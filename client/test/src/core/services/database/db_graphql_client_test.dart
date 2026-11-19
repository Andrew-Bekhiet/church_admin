import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gql/language.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:rxdart/rxdart.dart';

import '../../../fakes/recording_subscription_link.dart';

void main() {
  const operation = 'watchThing';

  late BehaviorSubject<bool> connectivity;
  late RecordingSubscriptionLink link;
  late DBGraphQLClient client;

  setUp(() {
    connectivity = BehaviorSubject();
    link = RecordingSubscriptionLink({
      operation: {
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
      document: parseString('subscription $operation { thing { id } }'),
      operationName: operation,
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

    expect(link.allRequestsNamed(operation), hasLength(1));
  });

  test('a subscription started while offline is sent once', () async {
    connectivity.add(false);

    listenTo(watchThing());
    await pumpEventQueue();

    expect(link.allRequestsNamed(operation), hasLength(1));
  });

  test(
    'a subscription started before connectivity is known is sent right away and not again once connected',
    () async {
      listenTo(watchThing());
      await pumpEventQueue();
      final requestsBeforeConnectivity = link
          .allRequestsNamed(operation)
          .length;

      connectivity.add(true);
      await pumpEventQueue();

      expect(requestsBeforeConnectivity, 1);
      expect(link.allRequestsNamed(operation), hasLength(1));
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

      expect(link.allRequestsNamed(operation), hasLength(1));
    },
  );

  test(
    'a subscription started after the earlier ones ended is sent again when the connection returns',
    () async {
      connectivity.add(true);
      await listenTo(watchThing()).cancel();
      listenTo(watchThing());
      connectivity.add(false);
      await pumpEventQueue();
      final requestsWhileOffline = link.allRequestsNamed(operation).length;

      connectivity.add(true);
      await pumpEventQueue();

      expect(
        link.allRequestsNamed(operation),
        hasLength(requestsWhileOffline + 1),
      );
    },
  );
}
