import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:fake_async/fake_async.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../fakes/fake_ash_backend.dart';
import 'lookup_cases.dart';

void main() {
  for (final lookup in LookupCase.all) {
    group(lookup.typename, () {
      test('the list shows the records the server returns', () {
        expect(
          FakeAshBackend.settledListing(
            [lookup.table(initialRows: 3)],
            (db) => lookup.dao(db.metadata).streamAll(),
          ),
          lookup.listed,
        );
      });

      test('searching lists only the records whose name contains the text', () {
        final wanted = lookup.listed[1];

        expect(
          FakeAshBackend.settledListing(
            [lookup.table(initialRows: 3)],
            (db) => lookup
                .dao(db.metadata)
                .streamAll(searchQuery: Stream.value(wanted.name.substring(1))),
          ),
          [wanted],
        );
      });

      test('the list follows the change feed', () {
        fakeAsync((async) {
          final table = lookup.table(initialRows: 2);
          final backend = FakeAshBackend([table]);
          final stream = lookup.dao(backend.db.metadata).streamAll();
          final emitted = <List<ViewableWithID>>[];
          final subscription = stream.listen(emitted.add);
          async.elapse(FakeAshBackend.settleTime);

          final added = lookup.listed.last;
          table.add(added as ToJson);
          backend.announce([
            EntityChange(type: lookup.typename, id: added.id, op: 'insert'),
          ]);
          async.elapse(FakeAshBackend.settleTime);

          expect(emitted.last, lookup.listed);

          unawaited(subscription.cancel());
          unawaited(stream.dispose());
          backend.dispose();
        });
      });

      if ((lookup.creatable, lookup.created) case (
        final creatable?,
        final created?,
      )) {
        test('creating answers the record the server stored', () async {
          final backend = FakeAshBackend([lookup.table(initialRows: 3)]);
          addTearDown(backend.dispose);

          final answered = await creatable(
            backend.db.metadata,
          ).createObject(newObject: created(''));

          expect(answered, created(answered.id));
          expect(answered.id, isNotEmpty);
        });
      }
    });
  }
}
