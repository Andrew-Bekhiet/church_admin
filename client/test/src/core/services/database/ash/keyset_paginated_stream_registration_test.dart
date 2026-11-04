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
        final oldRef = harness.changeFeedServer.registeredRefs.single;

        unawaited(stream.listenToNextPage());
        async.elapse(settleTime);
        final newRef = harness.changeFeedServer.registeredRefs.last;
        final shownAfterGrowth = [...emitted.last];
        harness.changeFeedServer.pushFull(
          oldRef,
          KeysetStreamHarness.pageData([const AshTestItem(id: 'stale', name: 'قديم')]),
        );
        async.elapse(settleTime);

        expect(harness.changeFeedServer.registrations.keys, [newRef]);
        expect(newRef, isNot(oldRef));
        expect(harness.changeFeedServer.registrations[newRef]?['window'], {
          'rows': 2 * pageSize,
          'chunk': AshPagination.maxPageSize,
        });
        expect(
          harness.changeFeedServer.registrations[newRef]?['resultHashes'],
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
        final stream = KeysetStreamHarness.streamOver(harness, onlyIds: onlyIds);
        final emitted = <List<AshTestItem>>[];
        final subscription = stream.listen(emitted.add);
        async.elapse(settleTime);
        final oldRef = harness.changeFeedServer.registeredRefs.single;
        final wanted = [harness.server.rows[7], harness.server.rows[8]];

        onlyIds.add([for (final row in wanted) row.id]);
        async.elapse(const Duration(milliseconds: 100));
        harness.changeFeedServer.pushFull(
          oldRef,
          KeysetStreamHarness.pageData([const AshTestItem(id: 'stale', name: 'قديم')]),
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

    test('a push that arrives while the next page loads is dropped', () {
      fakeAsync((async) {
        final harness = LiveQueryHarness(
          KeysetStreamHarness.rowsNamed(10),
          latency: const Duration(seconds: 2),
        );
        final stream = KeysetStreamHarness.streamOver(harness);
        final emitted = <List<AshTestItem>>[];
        final subscription = stream.listen(emitted.add);
        async.elapse(settleTime);
        final ref = harness.changeFeedServer.registeredRefs.single;

        unawaited(stream.listenToNextPage());
        async.elapse(const Duration(milliseconds: 100));
        harness.changeFeedServer.pushFull(
          ref,
          KeysetStreamHarness.pageData([const AshTestItem(id: 'stale', name: 'قديم')]),
        );
        async.elapse(settleTime);

        expect(
          emitted.expand((items) => items.map((item) => item.id)),
          isNot(contains('stale')),
        );
        expect(emitted.last, harness.server.rows.take(2 * pageSize));

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
        final ref = harness.changeFeedServer.registeredRefs.single;
        final shown = [...emitted.last];

        unawaited(harness.changeFeedServer.dropConnection());
        async.elapse(const Duration(milliseconds: 100));
        final shownWhileDisconnected = [...emitted.last];
        async.elapse(settleTime);
        harness.changeFeedServer.pushFull(
          ref,
          KeysetStreamHarness.pageData(harness.server.rows.skip(3).take(pageSize), count: 10),
        );
        async.elapse(settleTime);

        expect(shownWhileDisconnected, shown);
        expect(harness.changeFeedServer.registrations.keys, [ref]);
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
        final ref = harness.changeFeedServer.registeredRefs.single;
        harness.changeFeedServer.pushDelta(ref, rows: const []);
        async.elapse(settleTime);

        unawaited(harness.changeFeedServer.dropConnection());
        async.elapse(settleTime);

        expect(harness.changeFeedServer.registrations, contains(ref));
        expect(
          harness.changeFeedServer.registrations[ref]?['resultHashes'],
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
        final ref = harness.changeFeedServer.registeredRefs.single;

        unawaited(subscription.cancel());
        unawaited(stream.dispose());
        async.elapse(settleTime);

        expect(harness.changeFeedServer.unregisteredRefs, [ref]);
        expect(harness.changeFeedServer.registrations, isEmpty);

        harness.dispose();
      });
    });
  });
}
