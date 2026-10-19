import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:fake_async/fake_async.dart';
import 'package:flutter_test/flutter_test.dart';
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
      fetchChunk: (ids, chunk) => query.fetch(
        variables: {
          if (ids != null)
            'filter': {
              'id': {'in': ids},
            },
        },
        chunk: chunk,
      ),
    );
  }

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

  test('an invalidation reloads every loaded row from the start, including '
      'a row inserted at a page boundary', () {
    fakeAsync((async) {
      final harness = LiveQueryHarness(rowsNamed(10));
      final stream = streamOver(harness);
      final emitted = <List<AshTestItem>>[];
      final subscription = stream.listen(emitted.add);
      async.elapse(settleTime);
      unawaited(stream.listenToNextPage());
      async.elapse(settleTime);

      const inserted = AshTestItem(id: 'row02b', name: 'جديد');
      harness.server.rows.insert(pageSize, inserted);
      harness.announce([
        EntityChange(type: AshTestItem.typename, id: inserted.id, op: 'insert'),
      ]);
      async.elapse(settleTime);

      expect(emitted.last, harness.server.rows.take(2 * pageSize));
      expect(emitted.last, contains(inserted));

      unawaited(subscription.cancel());
      unawaited(stream.dispose());
      harness.dispose();
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
  test('a nested type shown on an earlier page still refreshes the list '
      'after a later page loads', () {
    fakeAsync((async) {
      const tagType = 'Tag';
      final rows = rowsNamed(pageSize);
      var windowLoads = 0;
      final harness = LiveQueryHarness(const []);
      final stream = KeysetPaginatedStream<AshTestItem, void>(
        registry: harness.registry,
        parametersStream: Stream.value(null),
        pageSize: pageSize,
        fetchChunk: (_, chunk) async {
          final isWindowStart = chunk.after == null;
          if (isWindowStart) windowLoads++;
          final items = isWindowStart ? rows : const <AshTestItem>[];

          return KeysetChunk(
            page: KeysetPage(items: items, endKeyset: items.lastOrNull?.id),
            data: {
              'items': AshResponses.page([
                for (final item in items)
                  {
                    ...item.toJson(),
                    'tag': {'__typename': tagType, 'id': 'tag-${item.id}'},
                  },
              ]),
            },
          );
        },
      );
      final subscription = stream.listen(null);
      async.elapse(settleTime);
      unawaited(stream.listenToNextPage());
      async.elapse(settleTime);
      final windowLoadsBeforeChange = windowLoads;

      harness.announce([
        EntityChange(type: tagType, id: 'tag-${rows.first.id}', op: 'update'),
      ]);
      async.elapse(settleTime);

      expect(windowLoads, windowLoadsBeforeChange + 1);

      unawaited(subscription.cancel());
      unawaited(stream.dispose());
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
