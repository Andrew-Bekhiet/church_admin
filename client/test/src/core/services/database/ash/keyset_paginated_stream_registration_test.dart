import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:fake_async/fake_async.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../fakes/ash_responses.dart';
import '../../../../fakes/fake_ash_server.dart';
import '../../../../fakes/keyset_stream_harness.dart';

void main() {
  const pageSize = KeysetStreamHarness.pageSize;
  const settleTime = KeysetStreamHarness.settleTime;

  group('the live registration', () {
    test('the window grown by a next page is registered again, and a push '
        'for the old registration is dropped', () {
      fakeAsync((async) {
        final harness = LiveQueryHarness(KeysetStreamHarness.rowsNamed(10));
        harness.server.sendsResultHashes = true;
        final stream = KeysetStreamHarness.streamOver(harness);
        final emitted = <List<AshTestItem>>[];
        final subscription = stream.listen(emitted.add);
        async.elapse(settleTime);
        final oldRef = harness.liveQueriesServer.registeredRefs.single;

        unawaited(stream.listenToNextPage());
        async.elapse(settleTime);
        final newRef = harness.liveQueriesServer.registeredRefs.last;
        final shownAfterGrowth = [...emitted.last];
        harness.liveQueriesServer.pushFull(
          oldRef,
          KeysetStreamHarness.pageData([
            const AshTestItem(id: 'stale', name: 'قديم'),
          ]),
        );
        async.elapse(settleTime);

        expect(harness.liveQueriesServer.registrations.keys, [newRef]);
        expect(newRef, isNot(oldRef));
        expect(harness.liveQueriesServer.registrations[newRef]?['window'], {
          'rows': 2 * pageSize,
          'chunk': AshPagination.maxPageSize,
        });
        expect(
          harness.liveQueriesServer.registrations[newRef]?['resultHashes'],
          isNull,
        );
        expect(emitted.last, shownAfterGrowth);
        expect(shownAfterGrowth, harness.server.rows.take(2 * pageSize));

        unawaited(subscription.cancel());
        unawaited(stream.dispose());
        harness.dispose();
      });
    });

    test('a push for the old parameters that arrives while the new ones '
        'load is dropped', () {
      fakeAsync((async) {
        final harness = LiveQueryHarness(
          KeysetStreamHarness.rowsNamed(10),
          latency: const Duration(seconds: 2),
        );
        final onlyIds = BehaviorSubject<List<String>?>.seeded(null);
        addTearDown(onlyIds.close);
        final stream = KeysetStreamHarness.streamOver(
          harness,
          onlyIds: onlyIds,
        );
        final emitted = <List<AshTestItem>>[];
        final subscription = stream.listen(emitted.add);
        async.elapse(settleTime);
        final oldRef = harness.liveQueriesServer.registeredRefs.single;
        final wanted = [harness.server.rows[7], harness.server.rows[8]];

        onlyIds.add([for (final row in wanted) row.id]);
        async.elapse(const Duration(milliseconds: 100));
        harness.liveQueriesServer.pushFull(
          oldRef,
          KeysetStreamHarness.pageData([
            const AshTestItem(id: 'stale', name: 'قديم'),
          ]),
        );
        async.elapse(settleTime);

        expect(emitted.last, wanted);
        expect(
          emitted.expand((items) => items.map((item) => item.id)),
          isNot(contains('stale')),
        );

        unawaited(subscription.cancel());
        unawaited(stream.dispose());
        harness.dispose();
      });
    });

    test('a push that arrives while the list refetches is replaced by the '
        'rows the refetch loads', () {
      fakeAsync((async) {
        final harness = LiveQueryHarness(
          KeysetStreamHarness.rowsNamed(10),
          latency: const Duration(seconds: 2),
        );
        final stream = KeysetStreamHarness.streamOver(harness);
        final emitted = <List<AshTestItem>>[];
        final subscription = stream.listen(emitted.add);
        async.elapse(settleTime);
        final ref = harness.liveQueriesServer.registeredRefs.single;
        final [first, second, third, ...] = harness.server.rows;
        final renamed = second.renamed('اسم جديد');

        unawaited(stream.refetch());
        async.elapse(const Duration(milliseconds: 100));
        harness.liveQueriesServer.pushFull(
          ref,
          KeysetStreamHarness.pageData([
            const AshTestItem(id: 'other', name: 'آخر'),
          ]),
        );
        async.elapse(settleTime);
        final shownAfterRefetch = [...emitted.last];
        harness.liveQueriesServer.pushDelta(
          harness.liveQueriesServer.registeredRefs.last,
          rows: [renamed.toJson()],
        );
        async.elapse(settleTime);

        expect(shownAfterRefetch, [first, second, third]);
        expect(emitted.last, [first, renamed, third]);

        unawaited(subscription.cancel());
        unawaited(stream.dispose());
        harness.dispose();
      });
    });

    test('a next page that fails to load leaves the list live', () {
      fakeAsync((async) {
        final harness = LiveQueryHarness(KeysetStreamHarness.rowsNamed(10));
        final stream = KeysetStreamHarness.streamOver(harness);
        final emitted = <List<AshTestItem>>[];
        final subscription = stream.listen(
          emitted.add,
          onError: (Object _) {},
        );
        async.elapse(settleTime);
        final ref = harness.liveQueriesServer.registeredRefs.single;
        final [first, second, third, ...] = harness.server.rows;
        final renamed = second.renamed('اسم جديد');

        harness.server.reachable = false;
        unawaited(stream.listenToNextPage());
        async.elapse(settleTime);
        harness.liveQueriesServer.pushDelta(ref, rows: [renamed.toJson()]);
        async.elapse(settleTime);

        expect(emitted.last, [first, renamed, third]);

        unawaited(subscription.cancel());
        unawaited(stream.dispose());
        harness.dispose();
      });
    });

    test('a reconnect registers the window again and the rows stay shown '
        'meanwhile', () {
      fakeAsync((async) {
        final harness = LiveQueryHarness(KeysetStreamHarness.rowsNamed(10));
        final stream = KeysetStreamHarness.streamOver(harness);
        final emitted = <List<AshTestItem>>[];
        final subscription = stream.listen(emitted.add);
        async.elapse(settleTime);
        final ref = harness.liveQueriesServer.registeredRefs.single;
        final shown = [...emitted.last];

        unawaited(harness.liveQueriesServer.dropConnection());
        async.elapse(const Duration(milliseconds: 100));
        final shownWhileDisconnected = [...emitted.last];
        async.elapse(settleTime);
        harness.liveQueriesServer.pushFull(
          ref,
          KeysetStreamHarness.pageData(
            harness.server.rows.skip(3).take(pageSize),
            count: 10,
          ),
        );
        async.elapse(settleTime);

        expect(shownWhileDisconnected, shown);
        expect(harness.liveQueriesServer.registrations.keys, [ref]);
        expect(emitted.last, harness.server.rows.skip(3).take(pageSize));

        unawaited(subscription.cancel());
        unawaited(stream.dispose());
        harness.dispose();
      });
    });

    test('a registration made again after a push carries no hashes', () {
      fakeAsync((async) {
        final harness = LiveQueryHarness(KeysetStreamHarness.rowsNamed(10));
        harness.server.sendsResultHashes = true;
        final stream = KeysetStreamHarness.streamOver(harness);
        final subscription = stream.listen(null);
        async.elapse(settleTime);
        final ref = harness.liveQueriesServer.registeredRefs.single;
        harness.liveQueriesServer.pushDelta(ref, rows: const []);
        async.elapse(settleTime);

        unawaited(harness.liveQueriesServer.dropConnection());
        async.elapse(settleTime);

        expect(harness.liveQueriesServer.registrations, contains(ref));
        expect(
          harness.liveQueriesServer.registrations[ref]?['resultHashes'],
          isNull,
        );

        unawaited(subscription.cancel());
        unawaited(stream.dispose());
        harness.dispose();
      });
    });

    test('disposing the list unregisters it', () {
      fakeAsync((async) {
        final harness = LiveQueryHarness(KeysetStreamHarness.rowsNamed(10));
        final stream = KeysetStreamHarness.streamOver(harness);
        final subscription = stream.listen(null);
        async.elapse(settleTime);
        final ref = harness.liveQueriesServer.registeredRefs.single;

        unawaited(subscription.cancel());
        unawaited(stream.dispose());
        async.elapse(settleTime);

        expect(harness.liveQueriesServer.unregisteredRefs, [ref]);
        expect(harness.liveQueriesServer.registrations, isEmpty);

        harness.dispose();
      });
    });
  });
}
