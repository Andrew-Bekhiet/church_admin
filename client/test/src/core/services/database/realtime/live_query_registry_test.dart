import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:fake_async/fake_async.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fakes/ash_responses.dart';
import '../../../../fakes/fake_ash_server.dart';

void main() {
  const mina = AshTestItem(id: 'mina', name: 'مينا');
  const settleTime = Duration(seconds: 5);

  test('the server never sees more than four refetches at once', () {
    fakeAsync((async) {
      final rows = [
        for (var index = 0; index < 8; index++)
          AshTestItem(id: 'item$index', name: 'اسم $index'),
      ];
      final harness = LiveQueryHarness(
        rows,
        latency: const Duration(milliseconds: 300),
      )..goOffline();
      final subscriptions = [
        for (final row in rows)
          harness.watchEntity(row.id).listen(null, onError: (Object _) {}),
      ];
      async.elapse(settleTime);
      harness.server.maxRequestsInFlight = 0;

      harness.goOnline();
      async.elapse(settleTime);

      expect(harness.server.maxRequestsInFlight, 4);

      for (final subscription in subscriptions) {
        unawaited(subscription.cancel());
      }
      harness.dispose();
    });
  });

  test('a cancelled query is no longer refetched', () {
    fakeAsync((async) {
      final harness = LiveQueryHarness([mina])..goOffline();
      final subscription = harness.watchList().listen(
        null,
        onError: (Object _) {},
      );
      async.elapse(settleTime);
      unawaited(subscription.cancel());
      async.flushMicrotasks();
      final requestsWhileListened = harness.server.requestCount;

      harness.goOnline();
      async.elapse(settleTime);

      expect(harness.server.requestCount, requestsWhileListened);

      harness.dispose();
    });
  });

  group('a registration', () {
    test('the channel fails to take is sent again after a delay', () {
      fakeAsync((async) {
        final harness = LiveQueryHarness([mina]);
        harness.changeFeedServer.failRegistrations = true;
        final emitted = <List<AshTestItem>>[];
        final subscription = harness.watchList().listen(emitted.add);
        async.elapse(settleTime);
        final registeredWhileFailing = {
          ...harness.changeFeedServer.registrations,
        };

        harness.changeFeedServer.failRegistrations = false;
        async.elapse(
          LiveQueryRegistry.registerRetryDelay + const Duration(seconds: 15),
        );
        final ref = harness.changeFeedServer.registeredRefs.single;
        harness.changeFeedServer.pushFull(ref, {
          '__typename': 'Query',
          'testItems': AshResponses.page([mina.renamed('مينا جرجس').toJson()]),
        });
        async.elapse(settleTime);

        expect(registeredWhileFailing, isEmpty);
        expect(emitted.last, [mina.renamed('مينا جرجس')]);

        unawaited(subscription.cancel());
        harness.dispose();
      });
    });

    test('the server refuses is not sent again, and the query keeps its '
        'rows', () {
      fakeAsync((async) {
        final harness = LiveQueryHarness([mina]);
        var attempts = 0;
        harness.changeFeedServer.refusalFor = (_) {
          attempts++;

          return 'too_many';
        };
        final emitted = <List<AshTestItem>>[];
        final subscription = harness.watchList().listen(emitted.add);

        async.elapse(const Duration(minutes: 1));

        expect(attempts, 1);
        expect(emitted.last, [mina]);

        unawaited(subscription.cancel());
        harness.dispose();
      });
    });

    test('is dropped with its results once the query is cancelled', () {
      fakeAsync((async) {
        final harness = LiveQueryHarness([mina]);
        final emitted = <List<AshTestItem>>[];
        final subscription = harness.watchList().listen(emitted.add);
        async.elapse(settleTime);
        final ref = harness.changeFeedServer.registeredRefs.single;

        unawaited(subscription.cancel());
        async.elapse(settleTime);
        harness.changeFeedServer.pushFull(ref, {
          '__typename': 'Query',
          'testItems': AshResponses.page([
            mina.renamed('بعد الإلغاء').toJson(),
          ]),
        });
        async.elapse(settleTime);

        expect(harness.changeFeedServer.unregisteredRefs, [ref]);
        expect(emitted.last, [mina]);

        harness.dispose();
      });
    });
  });

  test('a result for a registration nobody holds is dropped', () {
    fakeAsync((async) {
      final harness = LiveQueryHarness([mina]);
      final emitted = <List<AshTestItem>>[];
      final subscription = harness.watchList().listen(emitted.add);
      async.elapse(settleTime);
      final emittedBeforePush = [...emitted];

      harness.changeFeedServer.pushFull('nobody', {
        '__typename': 'Query',
        'testItems': AshResponses.page([mina.renamed('مجهول').toJson()]),
      });
      async.elapse(settleTime);

      expect(emitted, emittedBeforePush);

      unawaited(subscription.cancel());
      harness.dispose();
    });
  });
}
