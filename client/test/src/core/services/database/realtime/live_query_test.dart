import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:fake_async/fake_async.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fakes/ash_responses.dart';
import '../../../../fakes/fake_ash_server.dart';

void main() {
  const mina = AshTestItem(id: 'mina', name: 'مينا');
  const marina = AshTestItem(id: 'marina', name: 'مارينا');
  const renamedName = 'مينا جرجس';
  const listSettleTime = Duration(seconds: 2);

  test('a list emits the refetched rows after a change to a type it shows', () {
    fakeAsync((async) {
      final harness = LiveQueryHarness([mina, marina]);
      final emitted = <List<AshTestItem>>[];
      final subscription = harness.watchList().listen(emitted.add);
      async.elapse(Duration.zero);

      harness.server.rename(mina.id, renamedName);
      harness.announce([
        EntityChange(type: AshTestItem.typename, id: mina.id, op: 'update'),
      ]);
      async.elapse(listSettleTime);

      expect(emitted.last, [mina.renamed(renamedName), marina]);

      unawaited(subscription.cancel());
      harness.dispose();
    });
  });

  test('a change to a type the list does not show emits nothing new', () {
    fakeAsync((async) {
      final harness = LiveQueryHarness([mina, marina]);
      final emitted = <List<AshTestItem>>[];
      final subscription = harness.watchList().listen(emitted.add);
      async.elapse(Duration.zero);
      final emittedBeforeChange = [...emitted];

      harness.server.rename(mina.id, renamedName);
      harness.announce([
        const EntityChange(type: 'Family', id: 'f1', op: 'update'),
      ]);
      async.elapse(listSettleTime);

      expect(emitted, emittedBeforeChange);

      unawaited(subscription.cancel());
      harness.dispose();
    });
  });

  test('an empty list still follows inserts of its item type', () {
    fakeAsync((async) {
      final harness = LiveQueryHarness([]);
      final emitted = <List<AshTestItem>>[];
      final subscription = harness.watchList().listen(emitted.add);
      async.elapse(Duration.zero);

      harness.server.rows.add(mina);
      harness.announce([
        EntityChange(type: AshTestItem.typename, id: mina.id, op: 'insert'),
      ]);
      async.elapse(listSettleTime);

      expect(emitted.last, [mina]);

      unawaited(subscription.cancel());
      harness.dispose();
    });
  });

  test('a single record ignores a change to another record of its type', () {
    fakeAsync((async) {
      final harness = LiveQueryHarness([mina, marina]);
      final emitted = <AshTestItem?>[];
      final subscription = harness.watchEntity(mina.id).listen(emitted.add);
      async.elapse(Duration.zero);
      final emittedBeforeChange = [...emitted];

      harness.server.rename(mina.id, renamedName);
      harness.announce([
        EntityChange(type: AshTestItem.typename, id: marina.id, op: 'update'),
      ]);
      async.elapse(listSettleTime);

      expect(emitted, emittedBeforeChange);

      unawaited(subscription.cancel());
      harness.dispose();
    });
  });

  test('a single record emits its refetched data after its own change', () {
    fakeAsync((async) {
      final harness = LiveQueryHarness([mina, marina]);
      final emitted = <AshTestItem?>[];
      final subscription = harness.watchEntity(mina.id).listen(emitted.add);
      async.elapse(Duration.zero);

      harness.server.rename(mina.id, renamedName);
      harness.announce([
        EntityChange(type: AshTestItem.typename, id: mina.id, op: 'update'),
      ]);
      async.elapse(listSettleTime);

      expect(emitted.last, mina.renamed(renamedName));

      unawaited(subscription.cancel());
      harness.dispose();
    });
  });

  test('a paused query catches up when it resumes', () {
    fakeAsync((async) {
      final harness = LiveQueryHarness([mina]);
      final emitted = <List<AshTestItem>>[];
      final subscription = harness.watchList().listen(emitted.add);
      async.elapse(Duration.zero);

      subscription.pause();
      harness.server.rename(mina.id, renamedName);
      harness.announce([
        EntityChange(type: AshTestItem.typename, id: mina.id, op: 'update'),
      ]);
      async.elapse(listSettleTime);
      subscription.resume();
      async.elapse(listSettleTime);

      expect(emitted.last, [mina.renamed(renamedName)]);

      unawaited(subscription.cancel());
      harness.dispose();
    });
  });

  test('a change seen offline is fetched once the connection returns', () {
    fakeAsync((async) {
      final harness = LiveQueryHarness([mina]);
      final emitted = <List<AshTestItem>>[];
      final subscription = harness.watchList().listen(emitted.add);
      async.elapse(Duration.zero);

      harness.connectivity.add(false);
      harness.server.rename(mina.id, renamedName);
      harness.announce([
        EntityChange(type: AshTestItem.typename, id: mina.id, op: 'update'),
      ]);
      async.elapse(listSettleTime);
      final emittedOffline = [...emitted];
      harness.connectivity.add(true);
      async.elapse(listSettleTime);

      expect(emittedOffline.last, [mina]);
      expect(emitted.last, [mina.renamed(renamedName)]);

      unawaited(subscription.cancel());
      harness.dispose();
    });
  });
}
