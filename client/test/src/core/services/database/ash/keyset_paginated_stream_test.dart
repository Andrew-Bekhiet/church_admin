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

  test('the first page holds the first rows and the total count', () {
    fakeAsync((async) {
      final harness = LiveQueryHarness(KeysetStreamHarness.rowsNamed(10));
      final stream = KeysetStreamHarness.streamOver(harness);
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
      final harness = LiveQueryHarness(KeysetStreamHarness.rowsNamed(10));
      final stream = KeysetStreamHarness.streamOver(harness);
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

  test('a limit above the server page size arrives as one list', () {
    fakeAsync((async) {
      const limit = 7;
      final harness = LiveQueryHarness(KeysetStreamHarness.rowsNamed(10));
      final stream = KeysetStreamHarness.streamOver(
        harness,
        totalLimit: limit,
        maxPageSize: 3,
      );
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
      final harness = LiveQueryHarness(
        KeysetStreamHarness.rowsNamed(pageSize - 1),
      );
      final stream = KeysetStreamHarness.streamOver(harness);
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
      final harness = LiveQueryHarness(KeysetStreamHarness.rowsNamed(10));
      final onlyIds = BehaviorSubject<List<String>?>.seeded(null);
      addTearDown(onlyIds.close);
      final stream = KeysetStreamHarness.streamOver(harness, onlyIds: onlyIds);
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
        KeysetStreamHarness.rowsNamed(10),
        latency: const Duration(seconds: 3),
      );
      final first = KeysetStreamHarness.streamOver(harness);
      final firstSubscription = first.listen(null);
      async.elapse(settleTime);
      final renamedRow = harness.server.rows.first;
      harness.server.rename(renamedRow.id, 'اسم جديد');

      final second = KeysetStreamHarness.streamOver(harness);
      final emitted = <List<AshTestItem>>[];
      final subscription = second.listen(emitted.add);
      async.elapse(const Duration(seconds: 1));
      final shownBeforeServerAnswered = [...emitted];
      async.elapse(settleTime);

      expect(shownBeforeServerAnswered.last.first, renamedRow);
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
        KeysetStreamHarness.rowsNamed(3),
        latency: const Duration(seconds: 1),
      )..goOffline();
      final stream = KeysetStreamHarness.streamOver(harness);
      final subscription = stream.listen(null, onError: (Object _) {});
      async.elapse(const Duration(milliseconds: 100));

      unawaited(subscription.cancel());
      unawaited(stream.dispose());
      async.elapse(settleTime);

      harness.dispose();
    });
  });
}
