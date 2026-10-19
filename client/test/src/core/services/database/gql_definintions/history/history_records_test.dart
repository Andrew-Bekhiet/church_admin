import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:fake_async/fake_async.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../fakes/fake_ash_backend.dart';
import '../../../../../fakes/fake_ash_tables_link.dart';
import 'fake_history_server.dart';
import 'history_rows.dart';

void main() {
  const recordId = 'record-1';
  final entries = HistoryLog.entries(3);
  final recordedAt = DateTime(2026, 10, 19, 9, 30);
  final recordedByServant = LastRecordedByInfo(
    time: recordedAt,
    recordedBy: FakeHistoryServer.signedIn.uid,
    user: FakeHistoryServer.signedIn,
  );

  group('reading', () {
    test(
      'the edit history of a record leaves out the edits of other tables',
      () {
        final edits = FakeAshTable(typename: 'Edit', listRoot: 'edits')
          ..add(
            HistoryRow(
              entries[0],
              keys: {'table': 'families', 'recordId': recordId},
            ),
          )
          ..add(
            HistoryRow(
              entries[1],
              keys: {'table': 'persons', 'recordId': recordId},
            ),
          )
          ..add(
            HistoryRow(
              entries[2],
              keys: {'table': 'persons', 'recordId': 'record-2'},
            ),
          );

        expect(
          FakeAshBackend.settledListing(
            [edits],
            (db) => db.history.paginateEditHistory<Person>(id: recordId),
          ),
          [entries[1]],
        );
      },
    );

    test('the visit history of an area shows the visits of that area', () {
      final visits = FakeAshTable(typename: 'Visit', listRoot: 'visits')
        ..add(
          HistoryRow(
            entries[0],
            keys: {
              'id': 'visit-0',
              'table': 'areas',
              'recordId': recordId,
              'isFatherVisit': false,
            },
          ),
        )
        ..add(
          HistoryRow(
            entries[1],
            keys: {
              'id': 'visit-1',
              'table': 'streets',
              'recordId': recordId,
              'isFatherVisit': false,
            },
          ),
        );

      expect(
        FakeAshBackend.settledListing(
          [visits],
          (db) => db.history.paginateVisitHistory<Area>(id: recordId),
        ),
        [entries[0]],
      );
    });

    test(
      'the family visit history separates father visits from the others',
      () {
        final visits = FakeAshTable(typename: 'Visit', listRoot: 'visits')
          ..add(
            HistoryRow(
              entries[0],
              keys: {
                'id': 'visit-0',
                'table': 'families',
                'recordId': recordId,
                'isFatherVisit': false,
              },
            ),
          )
          ..add(
            HistoryRow(
              entries[1],
              keys: {
                'id': 'visit-1',
                'table': 'families',
                'recordId': recordId,
                'isFatherVisit': true,
              },
            ),
          );

        expect(
          FakeAshBackend.settledListing(
            [visits],
            (db) => db.history.paginateFamilyVisitHistory(familyId: recordId),
          ),
          [entries[0]],
        );
        expect(
          FakeAshBackend.settledListing(
            [visits],
            (db) => db.history.paginateFamilyVisitHistory(
              familyId: recordId,
              fatherVisit: true,
            ),
          ).map((visit) => visit.time),
          [entries[1].time],
        );
      },
    );

    test('the communicants of a day are the kodas records of that day', () {
      final day = DateTime(2026, 10, 18);
      final kodases = FakeAshTable(typename: 'Kodas', listRoot: 'kodases')
        ..add(
          const KodasRow(
            id: 'kodas-1',
            personId: 'person-1',
            dayId: '2026-10-18',
          ),
        )
        ..add(
          const KodasRow(
            id: 'kodas-2',
            personId: 'person-2',
            dayId: '2026-10-11',
          ),
        );

      expect(
        _settledDayKodas([kodases], day),
        [KodasRecord(id: 'kodas-1', personId: 'person-1', day: day)],
      );
    });

    test('the communicants of a day follow the change feed', () {
      final day = DateTime(2026, 10, 18);

      fakeAsync((async) {
        final kodases = FakeAshTable(typename: 'Kodas', listRoot: 'kodases');
        final backend = FakeAshBackend([kodases]);
        final emitted = <List<KodasRecord>>[];
        final subscription = backend.db.history
            .streamDayKodas(day: day)
            .listen(emitted.add);
        async.elapse(FakeAshBackend.settleTime);

        kodases.add(
          const KodasRow(
            id: 'kodas-1',
            personId: 'person-1',
            dayId: '2026-10-18',
          ),
        );
        backend.announce([
          const EntityChange(type: 'Kodas', id: 'kodas-1', op: 'insert'),
        ]);
        async.elapse(FakeAshBackend.settleTime);

        expect(emitted.last, [
          KodasRecord(id: 'kodas-1', personId: 'person-1', day: day),
        ]);

        unawaited(subscription.cancel());
        backend.dispose();
      });
    });
  });

  group('recording', () {
    late FakeHistoryServer server;
    late DatabaseService db;

    setUp(() {
      server = FakeHistoryServer();
      final backend = server.backend();
      addTearDown(backend.dispose);
      db = backend.db;
    });

    test('a person visit is answered with who recorded it and when', () async {
      final answered = await db.history.updatePersonLastVisit(
        personId: HistoryLog.personId,
        lastVisit: recordedAt,
      );

      expect(answered, recordedByServant);
    });

    test('a person visit joins the visit history of that person', () async {
      await db.history.updatePersonLastVisit(
        personId: HistoryLog.personId,
        lastVisit: recordedAt,
      );

      expect(
        FakeAshBackend.settledListing(
          server.tables,
          (db) => db.history.paginatePersonVisitHistory(
            personId: HistoryLog.personId,
          ),
        ),
        [recordedByServant],
      );
    });

    test(
      'a family visit is a regular visit unless it is a father visit',
      () async {
        await db.history.updateFamilyLastVisit(
          familyId: recordId,
          lastVisit: recordedAt,
        );
        await db.history.updateFamilyLastVisit(
          familyId: recordId,
          lastVisit: recordedAt.add(const Duration(days: 1)),
          isFatherVisit: true,
        );

        expect(
          FakeAshBackend.settledListing(
            server.tables,
            (db) => db.history.paginateFamilyVisitHistory(familyId: recordId),
          ),
          [recordedByServant],
        );
        expect(
          FakeAshBackend.settledListing(
            server.tables,
            (db) => db.history.paginateFamilyVisitHistory(
              familyId: recordId,
              fatherVisit: true,
            ),
          ).single.time,
          recordedAt.add(const Duration(days: 1)),
        );
      },
    );

    test('a street visit joins the visit history of that street', () async {
      await db.history.updateStreetLastVisit(
        streetId: recordId,
        lastVisit: recordedAt,
      );

      expect(
        FakeAshBackend.settledListing(
          server.tables,
          (db) => db.history.paginateVisitHistory<Street>(id: recordId),
        ),
        [recordedByServant],
      );
    });

    test('a call joins the call history of that person', () async {
      await db.history.updatePersonLastCall(
        personId: HistoryLog.personId,
        lastCall: recordedAt,
      );

      expect(
        FakeAshBackend.settledListing(
          server.tables,
          (db) => db.history.paginatePersonCallHistory(
            personId: HistoryLog.personId,
          ),
        ),
        [recordedByServant],
      );
    });

    test('a confession joins the confession history of that person', () async {
      final day = DateTime(2026, 10, 19);

      await db.history.updatePersonLastConfession(
        personId: HistoryLog.personId,
        lastConfession: day,
      );

      expect(
        FakeAshBackend.settledListing(
          server.tables,
          (db) => db.history.paginatePersonConfessionHistory(
            personId: HistoryLog.personId,
          ),
        ).single.time,
        day,
      );
    });

    test(
      'recording kodas answers the record of that person on that day',
      () async {
        final day = DateTime(2026, 10, 19);

        final answered = await db.history.recordKodas(
          personId: HistoryLog.personId,
          day: day,
        );

        expect(
          answered,
          isA<KodasRecord>()
              .having(
                (record) => record.personId,
                'personId',
                HistoryLog.personId,
              )
              .having((record) => record.day, 'day', day)
              .having((record) => record.id, 'id', isNotEmpty),
        );
      },
    );

    test(
      'recording kodas twice for the same day answers the same record',
      () async {
        final day = DateTime(2026, 10, 19);

        final first = await db.history.recordKodas(
          personId: HistoryLog.personId,
          day: day,
        );
        final second = await db.history.recordKodas(
          personId: HistoryLog.personId,
          day: day,
        );

        expect(second, first);
      },
    );

    test(
      'deleting a kodas record answers it and removes it from its day',
      () async {
        final day = DateTime(2026, 10, 19);
        final recorded = await db.history.recordKodas(
          personId: HistoryLog.personId,
          day: day,
        );

        final deleted = await db.history.deleteKodas(
          kodasRecordId: recorded?.id ?? '',
        );

        expect(deleted, recorded);
        expect(_settledDayKodas(server.tables, day), isEmpty);
      },
    );

    test('deleting a kodas record the server does not have is rejected', () {
      expect(
        db.history.deleteKodas(kodasRecordId: 'missing'),
        throwsA(isA<KodasChangeRejectedException>()),
      );
    });
  });
}

List<KodasRecord> _settledDayKodas(List<FakeAshTable> tables, DateTime day) =>
    fakeAsync((async) {
      final backend = FakeAshBackend(tables);
      final emitted = <List<KodasRecord>>[];
      final subscription = backend.db.history
          .streamDayKodas(day: day)
          .listen(emitted.add);
      async.elapse(FakeAshBackend.settleTime);

      unawaited(subscription.cancel());
      backend.dispose();

      return emitted.last;
    });

class KodasRow implements ToJson {
  final String id;
  final String personId;
  final String dayId;

  const KodasRow({
    required this.id,
    required this.personId,
    required this.dayId,
  });

  @override
  Json toJson() => {'id': id, 'personId': personId, 'dayId': dayId};
}
