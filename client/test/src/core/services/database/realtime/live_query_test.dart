import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:fake_async/fake_async.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gql/language.dart';

import '../../../../fakes/ash_responses.dart';
import '../../../../fakes/fake_ash_server.dart';

void main() {
  const mina = AshTestItem(id: 'mina', name: 'مينا');
  const marina = AshTestItem(id: 'marina', name: 'مارينا');
  const renamedName = 'مينا جرجس';
  const settleTime = Duration(seconds: 2);

  Json entityData(AshTestItem? item) => {
    '__typename': 'Query',
    'testItem': item?.toJson(),
  };

  Json listData(List<AshTestItem> items) => {
    '__typename': 'Query',
    'testItems': AshResponses.page([for (final item in items) item.toJson()]),
  };

  test('a record registers its document and variables after loading, '
      'without a window', () {
    fakeAsync((async) {
      final harness = LiveQueryHarness([mina, marina]);
      final subscription = harness.watchEntity(mina.id).listen(null);
      async.elapse(settleTime);

      final registration =
          harness.liveQueriesServer.registrations.values.single;
      expect(
        registration['document'],
        printNode(LiveQueryHarness.entityDocument),
      );
      expect(registration['variables'], {'id': mina.id});
      expect(registration['window'], isNull);

      unawaited(subscription.cancel());
      harness.dispose();
    });
  });

  test('a record sends the hash the server issued for its result', () {
    fakeAsync((async) {
      final harness = LiveQueryHarness([mina]);
      harness.server.sendsResultHashes = true;
      final subscription = harness.watchEntity(mina.id).listen(null);
      async.elapse(settleTime);

      final registration =
          harness.liveQueriesServer.registrations.values.single;
      expect(registration['resultHashes'], harness.server.issuedResultHashes);

      unawaited(subscription.cancel());
      harness.dispose();
    });
  });

  test('a single record emits the data of a full push', () {
    fakeAsync((async) {
      final harness = LiveQueryHarness([mina, marina]);
      final emitted = <AshTestItem?>[];
      final subscription = harness.watchEntity(mina.id).listen(emitted.add);
      async.elapse(settleTime);

      harness.liveQueriesServer.pushFull(
        harness.liveQueriesServer.registeredRefs.single,
        entityData(mina.renamed(renamedName)),
      );
      async.elapse(settleTime);

      expect(emitted.last, mina.renamed(renamedName));

      unawaited(subscription.cancel());
      harness.dispose();
    });
  });

  test('a single record emits null when a full push says it is gone', () {
    fakeAsync((async) {
      final harness = LiveQueryHarness([mina]);
      final emitted = <AshTestItem?>[];
      final subscription = harness.watchEntity(mina.id).listen(emitted.add);
      async.elapse(settleTime);

      harness.liveQueriesServer.pushFull(
        harness.liveQueriesServer.registeredRefs.single,
        entityData(null),
      );
      async.elapse(settleTime);

      expect(emitted.last, isNull);

      unawaited(subscription.cancel());
      harness.dispose();
    });
  });

  test('a list query emits the rows of a full push', () {
    fakeAsync((async) {
      final harness = LiveQueryHarness([mina]);
      final emitted = <List<AshTestItem>>[];
      final subscription = harness.watchList().listen(emitted.add);
      async.elapse(settleTime);

      harness.liveQueriesServer.pushFull(
        harness.liveQueriesServer.registeredRefs.single,
        listData([marina, mina.renamed(renamedName)]),
      );
      async.elapse(settleTime);

      expect(emitted.last, [marina, mina.renamed(renamedName)]);

      unawaited(subscription.cancel());
      harness.dispose();
    });
  });

  test('a full push the cache cannot store is answered by refetching', () {
    fakeAsync((async) {
      final harness = LiveQueryHarness([mina]);
      final emitted = <List<AshTestItem>>[];
      final subscription = harness.watchList().listen(emitted.add);
      async.elapse(settleTime);
      harness.server.rename(mina.id, renamedName);

      harness.liveQueriesServer.pushFull(
        harness.liveQueriesServer.registeredRefs.single,
        {'testItems': AshResponses.page(const [])},
      );
      async.elapse(settleTime);

      expect(emitted.last, [mina.renamed(renamedName)]);

      unawaited(subscription.cancel());
      harness.dispose();
    });
  });

  test('a paused query catches up when it resumes', () {
    fakeAsync((async) {
      final harness = LiveQueryHarness([mina]);
      final emitted = <List<AshTestItem>>[];
      final subscription = harness.watchList().listen(emitted.add);
      async.elapse(settleTime);

      subscription.pause();
      harness.liveQueriesServer.pushFull(
        harness.liveQueriesServer.registeredRefs.single,
        listData([mina.renamed(renamedName)]),
      );
      async.elapse(settleTime);
      subscription.resume();
      async.elapse(settleTime);

      expect(emitted.last, [mina.renamed(renamedName)]);

      unawaited(subscription.cancel());
      harness.dispose();
    });
  });

  test('a reconnect registers the query again', () {
    fakeAsync((async) {
      final harness = LiveQueryHarness([mina]);
      final emitted = <List<AshTestItem>>[];
      final subscription = harness.watchList().listen(emitted.add);
      async.elapse(settleTime);
      final ref = harness.liveQueriesServer.registeredRefs.single;

      unawaited(harness.liveQueriesServer.dropConnection());
      async.elapse(const Duration(seconds: 10));
      final registeredAfterDrop = {...harness.liveQueriesServer.registrations};
      harness.liveQueriesServer.pushFull(ref, listData([marina]));
      async.elapse(settleTime);

      expect(registeredAfterDrop.keys, [ref]);
      expect(emitted.last, [marina]);

      unawaited(subscription.cancel());
      harness.dispose();
    });
  });
}
