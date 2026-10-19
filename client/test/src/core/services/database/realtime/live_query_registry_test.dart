import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:fake_async/fake_async.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fakes/ash_responses.dart';
import '../../../../fakes/fake_ash_server.dart';

void main() {
  const mina = AshTestItem(id: 'mina', name: 'مينا');
  const marina = AshTestItem(id: 'marina', name: 'مارينا');
  const settleTime = Duration(seconds: 5);

  test('a resync refreshes every active query', () {
    fakeAsync((async) {
      final harness = LiveQueryHarness([mina, marina]);
      final listEmissions = <List<AshTestItem>>[];
      final entityEmissions = <AshTestItem?>[];
      final subscriptions = [
        harness.watchList().listen(listEmissions.add),
        harness.watchEntity(marina.id).listen(entityEmissions.add),
      ];
      async.flushMicrotasks();

      harness.server
        ..rename(mina.id, 'مينا جرجس')
        ..rename(marina.id, 'مارينا جرجس');
      harness.changeFeed.add(const ResyncRequired());
      async.elapse(settleTime);

      expect(listEmissions.last, [
        mina.renamed('مينا جرجس'),
        marina.renamed('مارينا جرجس'),
      ]);
      expect(entityEmissions.last, marina.renamed('مارينا جرجس'));

      for (final subscription in subscriptions) {
        unawaited(subscription.cancel());
      }
      harness.dispose();
    });
  });

  test('a burst of changes within the debounce refetches a list once', () {
    fakeAsync((async) {
      final harness = LiveQueryHarness([mina]);
      final emitted = <List<AshTestItem>>[];
      final subscription = harness.watchList().listen(emitted.add);
      async.elapse(Duration.zero);
      final emissionsBeforeBurst = emitted.length;

      for (var version = 1; version <= 20; version++) {
        harness.server.rename(mina.id, 'مينا $version');
        harness.announce([
          EntityChange(type: AshTestItem.typename, id: mina.id, op: 'update'),
        ]);
        async.elapse(const Duration(milliseconds: 20));
      }
      async.elapse(settleTime);

      expect(emitted.skip(emissionsBeforeBurst), [
        [mina.renamed('مينا 20')],
      ]);

      unawaited(subscription.cancel());
      harness.dispose();
    });
  });

  test('the server never sees more than four refetches at once', () {
    fakeAsync((async) {
      final rows = [
        for (var index = 0; index < 8; index++)
          AshTestItem(id: 'item$index', name: 'اسم $index'),
      ];
      final harness = LiveQueryHarness(
        rows,
        latency: const Duration(milliseconds: 300),
      );
      final subscriptions = [
        for (final row in rows) harness.watchEntity(row.id).listen(null),
      ];
      async.elapse(settleTime);
      harness.server.maxRequestsInFlight = 0;

      harness.changeFeed.add(const ResyncRequired());
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
      final harness = LiveQueryHarness([mina]);
      final subscription = harness.watchList().listen(null);
      async.elapse(Duration.zero);
      unawaited(subscription.cancel());
      async.flushMicrotasks();
      final requestsWhileListened = harness.server.requestCount;

      harness.changeFeed.add(const ResyncRequired());
      async.elapse(settleTime);

      expect(harness.server.requestCount, requestsWhileListened);

      harness.dispose();
    });
  });
}
