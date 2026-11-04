import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:fake_async/fake_async.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gql/language.dart';

import '../../../../fakes/ash_responses.dart';
import '../../../../fakes/fake_ash_server.dart';
import '../../../../fakes/keyset_stream_harness.dart';

void main() {
  const pageSize = KeysetStreamHarness.pageSize;
  const settleTime = KeysetStreamHarness.settleTime;

  group('live pushes', () {
    test('the loaded window is registered with its query', () {
      fakeAsync((async) {
        final harness = LiveQueryHarness(KeysetStreamHarness.rowsNamed(10));
        final stream = KeysetStreamHarness.streamOver(harness);
        final subscription = stream.listen(null);
        async.elapse(settleTime);

        final registration =
            harness.changeFeedServer.registrations.values.single;
        expect(
          registration['document'],
          printNode(LiveQueryHarness.listDocument),
        );
        expect(registration['variables'], isEmpty);
        expect(registration['window'], {
          'rows': pageSize,
          'chunk': AshPagination.maxPageSize,
        });
        expect(registration['resultHashes'], isNull);

        unawaited(subscription.cancel());
        unawaited(stream.dispose());
        harness.dispose();
      });
    });

    test('the hashes the server issued for the loaded chunks are sent with '
        'the registration', () {
      fakeAsync((async) {
        final harness = LiveQueryHarness(KeysetStreamHarness.rowsNamed(10));
        harness.server.sendsResultHashes = true;
        final stream = KeysetStreamHarness.streamOver(harness, maxPageSize: 2);
        final subscription = stream.listen(null);
        async.elapse(settleTime);

        final registration =
            harness.changeFeedServer.registrations.values.single;
        expect(registration['resultHashes'], harness.server.issuedResultHashes);
        expect(registration['resultHashes'], hasLength(2));

        unawaited(subscription.cancel());
        unawaited(stream.dispose());
        harness.dispose();
      });
    });

    test('a full push replaces the rows and the total count', () {
      fakeAsync((async) {
        final harness = LiveQueryHarness(KeysetStreamHarness.rowsNamed(10));
        final stream = KeysetStreamHarness.streamOver(harness);
        final emitted = <List<AshTestItem>>[];
        final subscription = stream.listen(emitted.add);
        async.elapse(settleTime);
        final pushed = [
          const AshTestItem(id: 'new1', name: 'جديد'),
          harness.server.rows[2],
        ];

        harness.changeFeedServer.pushFull(
          harness.changeFeedServer.registeredRefs.single,
          KeysetStreamHarness.pageData(pushed, count: 4),
        );
        async.elapse(settleTime);

        expect(emitted.last, pushed);
        expect(stream.currentTotalCount, 4);

        unawaited(subscription.cancel());
        unawaited(stream.dispose());
        harness.dispose();
      });
    });

    test('a full push that repeats the shown rows emits nothing', () {
      fakeAsync((async) {
        final harness = LiveQueryHarness(KeysetStreamHarness.rowsNamed(10));
        final stream = KeysetStreamHarness.streamOver(harness);
        final emitted = <List<AshTestItem>>[];
        final subscription = stream.listen(emitted.add);
        async.elapse(settleTime);
        final emittedBeforePush = [...emitted];

        harness.changeFeedServer.pushFull(
          harness.changeFeedServer.registeredRefs.single,
          KeysetStreamHarness.pageData(harness.server.rows.take(pageSize), count: 10),
        );
        async.elapse(settleTime);

        expect(emitted, emittedBeforePush);

        unawaited(subscription.cancel());
        unawaited(stream.dispose());
        harness.dispose();
      });
    });

    test('a delta with rows only changes those rows in place', () {
      fakeAsync((async) {
        final harness = LiveQueryHarness(KeysetStreamHarness.rowsNamed(10));
        final stream = KeysetStreamHarness.streamOver(harness);
        final emitted = <List<AshTestItem>>[];
        final subscription = stream.listen(emitted.add);
        async.elapse(settleTime);
        final shown = [...emitted.last];
        final renamed = shown[1].renamed('اسم جديد');

        harness.changeFeedServer.pushDelta(
          harness.changeFeedServer.registeredRefs.single,
          rows: [renamed.toJson()],
        );
        async.elapse(settleTime);

        expect(emitted.last, [shown[0], renamed, shown[2]]);

        unawaited(subscription.cancel());
        unawaited(stream.dispose());
        harness.dispose();
      });
    });

    test('a delta with an order shows an inserted row where the server put '
        'it, and the next page continues after the new end', () {
      fakeAsync((async) {
        final harness = LiveQueryHarness(KeysetStreamHarness.rowsNamed(10));
        final stream = KeysetStreamHarness.streamOver(harness);
        final emitted = <List<AshTestItem>>[];
        final subscription = stream.listen(emitted.add);
        async.elapse(settleTime);
        const inserted = AshTestItem(id: 'row00b', name: 'جديد');
        final [first, second, ...] = harness.server.rows;
        harness.server.rows.insert(1, inserted);

        harness.changeFeedServer.pushDelta(
          harness.changeFeedServer.registeredRefs.single,
          rows: [inserted.toJson()],
          order: [first.id, inserted.id, second.id],
          count: 11,
          endKeyset: second.id,
        );
        async.elapse(settleTime);
        final shownAfterDelta = [...emitted.last];
        unawaited(stream.listenToNextPage());
        async.elapse(settleTime);

        expect(shownAfterDelta, [first, inserted, second]);
        expect(emitted.last, harness.server.rows.take(2 * pageSize));

        unawaited(subscription.cancel());
        unawaited(stream.dispose());
        harness.dispose();
      });
    });

    test('a delta whose order leaves a row out removes it', () {
      fakeAsync((async) {
        final harness = LiveQueryHarness(KeysetStreamHarness.rowsNamed(10));
        final stream = KeysetStreamHarness.streamOver(harness);
        final emitted = <List<AshTestItem>>[];
        final subscription = stream.listen(emitted.add);
        async.elapse(settleTime);
        final [first, _, third, fourth, ...] = harness.server.rows;

        harness.changeFeedServer.pushDelta(
          harness.changeFeedServer.registeredRefs.single,
          rows: [fourth.toJson()],
          order: [first.id, third.id, fourth.id],
          count: 9,
        );
        async.elapse(settleTime);

        expect(emitted.last, [first, third, fourth]);

        unawaited(subscription.cancel());
        unawaited(stream.dispose());
        harness.dispose();
      });
    });

    test('a delta for a row the list never received keeps the shown rows, '
        'asks for a resync once, and the full push that follows is shown', () {
      fakeAsync((async) {
        final harness = LiveQueryHarness(KeysetStreamHarness.rowsNamed(10));
        final stream = KeysetStreamHarness.streamOver(harness);
        final emitted = <List<AshTestItem>>[];
        final subscription = stream.listen(emitted.add);
        async.elapse(settleTime);
        final shown = [...emitted.last];
        final ref = harness.changeFeedServer.registeredRefs.single;

        harness.changeFeedServer
          ..pushDelta(ref, rows: const [], order: [shown.first.id, 'unknown'])
          ..pushDelta(ref, rows: const [], order: ['unknown', 'another']);
        async.elapse(settleTime);
        final shownAfterBrokenDeltas = [...emitted.last];
        final resyncRequests = [...harness.changeFeedServer.resyncedRefs];
        harness.changeFeedServer.pushFull(
          ref,
          KeysetStreamHarness.pageData(harness.server.rows.skip(5).take(pageSize), count: 10),
        );
        async.elapse(settleTime);

        expect(shownAfterBrokenDeltas, shown);
        expect(resyncRequests, [ref]);
        expect(emitted.last, harness.server.rows.skip(5).take(pageSize));

        unawaited(subscription.cancel());
        unawaited(stream.dispose());
        harness.dispose();
      });
    });

  });
}
