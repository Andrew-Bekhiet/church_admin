import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:fake_async/fake_async.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../fakes/fake_ash_backend.dart';
import 'history_rows.dart';

void main() {
  for (final log in HistoryLog.personLogs) {
    group('${log.typename} log', () {
      test('lists the entries of the person newest first', () {
        final entries = HistoryLog.entries(3);

        expect(
          FakeAshBackend.settledListing(
            [
              log.table(ofPerson: [entries[1], entries[2], entries[0]]),
            ],
            (db) => log.listing(db.history, personId: HistoryLog.personId),
          ),
          entries.reversed,
        );
      });

      test('leaves out the entries of other people', () {
        final entries = HistoryLog.entries(4);

        expect(
          FakeAshBackend.settledListing(
            [
              log.table(
                ofPerson: entries.take(2).toList(),
                ofOtherPerson: entries.skip(2).toList(),
              ),
            ],
            (db) => log.listing(db.history, personId: HistoryLog.personId),
          ),
          entries.take(2).toList().reversed,
        );
      });

      test('continues after the last loaded entry when paging on', () {
        final entries = HistoryLog.entries(120);

        fakeAsync((async) {
          final backend = FakeAshBackend([log.table(ofPerson: entries)]);
          final stream = log.listing(
            backend.db.history,
            personId: HistoryLog.personId,
          );
          final emitted = <List<LastRecordedByInfo>>[];
          final subscription = stream.listen(emitted.add);
          async.elapse(FakeAshBackend.settleTime);
          final firstPage = emitted.last;

          unawaited(stream.listenToPage(1));
          async.elapse(FakeAshBackend.settleTime);

          expect(firstPage, entries.reversed.take(stream.pageSize));
          expect(emitted.last, entries.reversed);

          unawaited(subscription.cancel());
          unawaited(stream.dispose());
          backend.dispose();
        });
      });

      test('follows the change feed', () {
        final entries = HistoryLog.entries(3);

        fakeAsync((async) {
          final table = log.table(ofPerson: entries.take(2).toList());
          final backend = FakeAshBackend([table]);
          final stream = log.listing(
            backend.db.history,
            personId: HistoryLog.personId,
          );
          final emitted = <List<LastRecordedByInfo>>[];
          final subscription = stream.listen(emitted.add);
          async.elapse(FakeAshBackend.settleTime);

          table.add(
            log.rowFor(entries.last, personId: HistoryLog.personId, number: 2),
          );
          backend.announce([
            EntityChange(type: log.typename, id: null, op: 'insert'),
          ]);
          async.elapse(FakeAshBackend.settleTime);

          expect(emitted.last, entries.reversed);

          unawaited(subscription.cancel());
          unawaited(stream.dispose());
          backend.dispose();
        });
      });
    });
  }
}
