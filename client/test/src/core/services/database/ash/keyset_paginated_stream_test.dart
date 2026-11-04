import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:fake_async/fake_async.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gql/language.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../fakes/ash_responses.dart';
import '../../../../fakes/fake_ash_server.dart';

void main() {
  const pageSize = 3;
  const settleTime = Duration(seconds: 5);

  List<AshTestItem> rowsNamed(int count) => [
    for (var index = 0; index < count; index++)
      AshTestItem(
        id: 'row${index.toString().padLeft(2, '0')}',
        name: 'اسم $index',
      ),
  ];

  KeysetPaginatedStream<AshTestItem, List<String>?> streamOver(
    LiveQueryHarness harness, {
    Stream<List<String>?>? onlyIds,
    int? totalLimit,
    int maxPageSize = AshPagination.maxPageSize,
  }) {
    final query = KeysetPageQuery<AshTestItem>(
      client: harness.client,
      document: LiveQueryHarness.listDocument,
      fromJson: AshTestItem.fromJson,
    );

    return KeysetPaginatedStream(
      registry: harness.registry,
      parametersStream: onlyIds ?? Stream.value(null),
      pageSize: pageSize,
      totalLimit: totalLimit,
      maxPageSize: maxPageSize,
      pageQueryFor: (_) => query,
      variablesFor: (ids) => {
        if (ids != null)
          'filter': {
            'id': {'in': ids},
          },
      },
    );
  }

  Json pageData(Iterable<AshTestItem> items, {int? count, String? endKeyset}) =>
      {
        'testItems': AshResponses.page(
          [for (final item in items) item.toJson()],
          count: count,
          endKeyset: endKeyset,
        ),
      };

  test('the first page holds the first rows and the total count', () {
    fakeAsync((async) {
      final harness = LiveQueryHarness(rowsNamed(10));
      final stream = streamOver(harness);
      final emitted = <List<AshTestItem>>[];
      final subscription = stream.listen(emitted.add);
      async.elapse(settleTime);

      expect(emitted.last, harness.server.rows.take(pageSize));
      expect(stream.currentTotalCount, harness.server.rows.length);
      expect(stream.hasMore, isTrue);

      unawaited(subscription.cancel());
      unawaited(stream.dispose());
      harness.dispose();
    });
  });

  test('the next page continues after the end of the first', () {
    fakeAsync((async) {
      final harness = LiveQueryHarness(rowsNamed(10));
      final stream = streamOver(harness);
      final emitted = <List<AshTestItem>>[];
      final subscription = stream.listen(emitted.add);
      async.elapse(settleTime);

      unawaited(stream.listenToNextPage());
      async.elapse(settleTime);

      expect(emitted.last, harness.server.rows.take(2 * pageSize));

      unawaited(subscription.cancel());
      unawaited(stream.dispose());
      harness.dispose();
    });
  });

  group('live pushes', () {
    test('the loaded window is registered with its query', () {
      fakeAsync((async) {
        final harness = LiveQueryHarness(rowsNamed(10));
        final stream = streamOver(harness);
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
        final harness = LiveQueryHarness(rowsNamed(10));
        harness.server.sendsResultHashes = true;
        final stream = streamOver(harness, maxPageSize: 2);
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
        final harness = LiveQueryHarness(rowsNamed(10));
        final stream = streamOver(harness);
        final emitted = <List<AshTestItem>>[];
        final subscription = stream.listen(emitted.add);
        async.elapse(settleTime);
        final pushed = [
          const AshTestItem(id: 'new1', name: 'جديد'),
          harness.server.rows[2],
        ];

        harness.changeFeedServer.pushFull(
          harness.changeFeedServer.registeredRefs.single,
          pageData(pushed, count: 4),
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
        final harness = LiveQueryHarness(rowsNamed(10));
        final stream = streamOver(harness);
        final emitted = <List<AshTestItem>>[];
        final subscription = stream.listen(emitted.add);
        async.elapse(settleTime);
        final emittedBeforePush = [...emitted];

        harness.changeFeedServer.pushFull(
          harness.changeFeedServer.registeredRefs.single,
          pageData(harness.server.rows.take(pageSize), count: 10),
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
        final harness = LiveQueryHarness(rowsNamed(10));
        final stream = streamOver(harness);
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
        final harness = LiveQueryHarness(rowsNamed(10));
        final stream = streamOver(harness);
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
        final harness = LiveQueryHarness(rowsNamed(10));
        final stream = streamOver(harness);
        final emitted = <List<AshTestItem>>[];
        final subscription = stream.listen(emitted.add);
        async.elapse(settleTime);
        final [first, removed, third, fourth, ...] = harness.server.rows;

        harness.changeFeedServer.pushDelta(
          harness.changeFeedServer.registeredRefs.single,
          rows: [fourth.toJson()],
          order: [first.id, third.id, fourth.id],
          count: 9,
        );
        async.elapse(settleTime);

        expect(emitted.last, [first, third, fourth]);
        expect(emitted.last, isNot(contains(removed)));

        unawaited(subscription.cancel());
        unawaited(stream.dispose());
        harness.dispose();
      });
    });

    test('a delta for a row the list never received keeps the shown rows, '
        'asks for a resync once, and the full push that follows is shown', () {
      fakeAsync((async) {
        final harness = LiveQueryHarness(rowsNamed(10));
        final stream = streamOver(harness);
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
          pageData(harness.server.rows.skip(5).take(pageSize), count: 10),
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

    test('the window grown by a next page is registered again, and a push '
        'for the old registration is dropped', () {
      fakeAsync((async) {
        final harness = LiveQueryHarness(rowsNamed(10));
        harness.server.sendsResultHashes = true;
        final stream = streamOver(harness);
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
          pageData([const AshTestItem(id: 'stale', name: 'قديم')]),
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
          rowsNamed(10),
          latency: const Duration(seconds: 2),
        );
        final onlyIds = BehaviorSubject<List<String>?>.seeded(null);
        addTearDown(onlyIds.close);
        final stream = streamOver(harness, onlyIds: onlyIds);
        final emitted = <List<AshTestItem>>[];
        final subscription = stream.listen(emitted.add);
        async.elapse(settleTime);
        final oldRef = harness.changeFeedServer.registeredRefs.single;
        final wanted = [harness.server.rows[7], harness.server.rows[8]];

        onlyIds.add([for (final row in wanted) row.id]);
        async.elapse(const Duration(milliseconds: 100));
        harness.changeFeedServer.pushFull(
          oldRef,
          pageData([const AshTestItem(id: 'stale', name: 'قديم')]),
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

    test('a reconnect registers the window again and the rows stay shown '
        'meanwhile', () {
      fakeAsync((async) {
        final harness = LiveQueryHarness(rowsNamed(10));
        final stream = streamOver(harness);
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
          pageData(harness.server.rows.skip(3).take(pageSize), count: 10),
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
        final harness = LiveQueryHarness(rowsNamed(10));
        harness.server.sendsResultHashes = true;
        final stream = streamOver(harness);
        final subscription = stream.listen(null);
        async.elapse(settleTime);
        final ref = harness.changeFeedServer.registeredRefs.single;
        harness.changeFeedServer.pushDelta(ref, rows: const []);
        async.elapse(settleTime);

        unawaited(harness.changeFeedServer.dropConnection());
        async.elapse(settleTime);

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
        final harness = LiveQueryHarness(rowsNamed(10));
        final stream = streamOver(harness);
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

  test('a limit above the server page size arrives as one list', () {
    fakeAsync((async) {
      const limit = 7;
      final harness = LiveQueryHarness(rowsNamed(10));
      final stream = streamOver(harness, totalLimit: limit, maxPageSize: 3);
      final emitted = <List<AshTestItem>>[];
      final subscription = stream.listen(emitted.add);
      async.elapse(settleTime);

      expect(emitted.last, harness.server.rows.take(limit));
      expect(stream.currentTotalCount, limit);

      unawaited(subscription.cancel());
      unawaited(stream.dispose());
      harness.dispose();
    });
  });

  test('a page shorter than requested has no more after it', () {
    fakeAsync((async) {
      final harness = LiveQueryHarness(rowsNamed(pageSize - 1));
      final stream = streamOver(harness);
      final subscription = stream.listen(null);
      async.elapse(settleTime);

      expect(stream.hasMore, isFalse);

      unawaited(subscription.cancel());
      unawaited(stream.dispose());
      harness.dispose();
    });
  });

  test('new parameters start again from the first page', () {
    fakeAsync((async) {
      final harness = LiveQueryHarness(rowsNamed(10));
      final onlyIds = BehaviorSubject<List<String>?>.seeded(null);
      addTearDown(onlyIds.close);
      final stream = streamOver(harness, onlyIds: onlyIds);
      final emitted = <List<AshTestItem>>[];
      final subscription = stream.listen(emitted.add);
      async.elapse(settleTime);
      unawaited(stream.listenToNextPage());
      async.elapse(settleTime);

      final wanted = [harness.server.rows[7], harness.server.rows[8]];
      onlyIds.add([for (final row in wanted) row.id]);
      async.elapse(settleTime);

      expect(emitted.last, wanted);
      expect(stream.currentPageIndex, 0);

      unawaited(subscription.cancel());
      unawaited(stream.dispose());
      harness.dispose();
    });
  });

  test('a cached first page shows before the server answers', () {
    fakeAsync((async) {
      final harness = LiveQueryHarness(
        rowsNamed(10),
        latency: const Duration(seconds: 3),
      );
      final first = streamOver(harness);
      final firstSubscription = first.listen(null);
      async.elapse(settleTime);
      harness.server.rename('row00', 'اسم جديد');

      final second = streamOver(harness);
      final emitted = <List<AshTestItem>>[];
      final subscription = second.listen(emitted.add);
      async.elapse(const Duration(seconds: 1));
      final shownBeforeServerAnswered = [...emitted];
      async.elapse(settleTime);

      expect(shownBeforeServerAnswered.last.first.name, 'اسم 0');
      expect(emitted.last.first.name, 'اسم جديد');

      for (final cancel in [firstSubscription.cancel, subscription.cancel]) {
        unawaited(cancel());
      }
      unawaited(first.dispose());
      unawaited(second.dispose());
      harness.dispose();
    });
  });
  test('a load that fails after the list is disposed raises no error', () {
    fakeAsync((async) {
      final harness = LiveQueryHarness(
        rowsNamed(3),
        latency: const Duration(seconds: 1),
      )..goOffline();
      final stream = streamOver(harness);
      final subscription = stream.listen(null, onError: (Object _) {});
      async.elapse(const Duration(milliseconds: 100));

      unawaited(subscription.cancel());
      unawaited(stream.dispose());
      async.elapse(settleTime);

      harness.dispose();
    });
  });
}
