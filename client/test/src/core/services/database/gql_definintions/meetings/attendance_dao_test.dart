import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:fake_async/fake_async.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../fakes/fake_ash_backend.dart';
import 'fake_attendance_server.dart';
import 'meeting_fixtures.dart';

void main() {
  const meetingId = 'meeting-1';
  const otherMeetingId = 'meeting-2';
  const personId = 'person-1';
  const otherPersonId = 'person-2';

  var recorded = 0;

  AttendanceRecord attendanceOn(
    DateTime day, {
    String meeting = meetingId,
    String person = personId,
    bool asServant = false,
  }) => AttendanceRecord(
    id: 'attendance-${recorded++}',
    meetingId: meeting,
    personId: person,
    datetime: day.add(const Duration(hours: 10)),
    asServant: asServant,
    recordedByUser: MeetingFixtures.servant,
  );

  LastRecordedByInfo timeOf(AttendanceRecord record) => LastRecordedByInfo(
    time: record.datetime,
    recordedBy: MeetingFixtures.servant.uid,
    user: MeetingFixtures.servant,
  );

  List<AttendanceRecord> consecutiveDays(int count, {bool asServant = false}) =>
      [
        for (var day = 1; day <= count; day++)
          attendanceOn(DateTime(2026, 1, day), asServant: asServant),
      ];

  List<AttendanceRow> rowsOf(Iterable<AttendanceRecord> records) =>
      records.map(AttendanceRow.new).toList();

  setUp(() => recorded = 0);

  group('the attendance of a person at a meeting', () {
    test('is listed newest first', () {
      final records = consecutiveDays(3);

      expect(
        FakeAshBackend.settledListing(
          [MeetingFixtures.attendanceTable(rowsOf(records.reversed))],
          (db) => db.meetings.paginatePersonAttendance(
            personId: personId,
            meetingId: meetingId,
          ),
        ),
        records.reversed.map(timeOf),
      );
    });

    test('leaves out other people, other meetings and the other role', () {
      final own = consecutiveDays(2);
      final others = [
        attendanceOn(DateTime(2026, 2), person: otherPersonId),
        attendanceOn(DateTime(2026, 2, 2), meeting: otherMeetingId),
        attendanceOn(DateTime(2026, 2, 3), asServant: true),
      ];

      expect(
        FakeAshBackend.settledListing(
          [
            MeetingFixtures.attendanceTable(rowsOf([...own, ...others])),
          ],
          (db) => db.meetings.paginatePersonAttendance(
            personId: personId,
            meetingId: meetingId,
          ),
        ),
        own.reversed.map(timeOf),
      );
    });

    test('lists the servant attendance when asked as a servant', () {
      final asServant = consecutiveDays(2, asServant: true);
      final asMember = [attendanceOn(DateTime(2026, 2))];

      expect(
        FakeAshBackend.settledListing(
          [
            MeetingFixtures.attendanceTable(
              rowsOf([...asServant, ...asMember]),
            ),
          ],
          (db) => db.meetings.paginatePersonAttendance(
            personId: personId,
            meetingId: meetingId,
            asServant: true,
          ),
        ),
        asServant.reversed.map(timeOf),
      );
    });

    test('continues after the last loaded record when paging on', () {
      final records = consecutiveDays(120);

      fakeAsync((async) {
        final backend = FakeAshBackend([
          MeetingFixtures.attendanceTable(rowsOf(records)),
        ]);
        final stream = backend.db.meetings.paginatePersonAttendance(
          personId: personId,
          meetingId: meetingId,
        );
        final emitted = <List<LastRecordedByInfo>>[];
        final subscription = stream.listen(emitted.add);
        async.elapse(FakeAshBackend.settleTime);
        final firstPage = emitted.last;

        unawaited(stream.listenToPage(1));
        async.elapse(FakeAshBackend.settleTime);

        expect(
          firstPage,
          records.reversed.take(stream.pageSize).map(timeOf),
        );
        expect(emitted.last, records.reversed.map(timeOf));

        unawaited(subscription.cancel());
        unawaited(stream.dispose());
        backend.dispose();
      });
    });

    test('follows the change feed', () {
      final records = consecutiveDays(3);

      fakeAsync((async) {
        final table = MeetingFixtures.attendanceTable(
          rowsOf(records.take(2)),
        );
        final backend = FakeAshBackend([table]);
        final stream = backend.db.meetings.paginatePersonAttendance(
          personId: personId,
          meetingId: meetingId,
        );
        final emitted = <List<LastRecordedByInfo>>[];
        final subscription = stream.listen(emitted.add);
        async.elapse(FakeAshBackend.settleTime);

        table.add(AttendanceRow(records.last));
        backend.announce([
          EntityChange(
            type: 'AttendanceRecord',
            id: records.last.id,
            op: 'insert',
          ),
        ]);
        async.elapse(FakeAshBackend.settleTime);

        expect(emitted.last, records.reversed.map(timeOf));

        unawaited(subscription.cancel());
        unawaited(stream.dispose());
        backend.dispose();
      });
    });
  });

  group('the attendance history of a meeting', () {
    final from = DateTime(2026, 3);
    final to = DateTime(2026, 3, 2);

    List<AttendanceRecord>? historyAfter(
      FakeAttendanceServer server,
      void Function(FakeAshBackend backend, FakeAsync async) between,
    ) => fakeAsync((async) {
      final backend = server.backend();
      final stream = backend.db.meetings.streamAttendanceHistory(
        meetingId: meetingId,
        fromDate: from,
        toDate: to,
      );
      List<AttendanceRecord>? emitted;
      final subscription = stream.listen((records) => emitted = records);
      async.elapse(FakeAshBackend.settleTime);
      between(backend, async);
      unawaited(subscription.cancel());
      backend.dispose();

      return emitted;
    });

    test('lists the records of the meeting within the time window', () {
      final inWindow = [
        attendanceOn(DateTime(2026, 3)),
        attendanceOn(DateTime(2026, 3), person: otherPersonId),
      ];
      final outside = [
        attendanceOn(DateTime(2026, 3, 2)),
        attendanceOn(DateTime(2026, 2, 28)),
        attendanceOn(DateTime(2026, 3), meeting: otherMeetingId),
      ];
      final server = FakeAttendanceServer(
        rows: rowsOf([...inWindow, ...outside]),
      );

      expect(
        historyAfter(server, (_, _) {}),
        unorderedEquals(inWindow),
      );
    });

    test('follows the change feed', () {
      final first = attendanceOn(DateTime(2026, 3));
      final late = attendanceOn(DateTime(2026, 3), person: otherPersonId);
      final server = FakeAttendanceServer(rows: rowsOf([first]));

      final listed = historyAfter(server, (backend, async) {
        server.records.add(AttendanceRow(late));
        backend.announce([
          EntityChange(type: 'AttendanceRecord', id: late.id, op: 'insert'),
        ]);
        async.elapse(FakeAshBackend.settleTime);
      });

      expect(listed, unorderedEquals([first, late]));
    });
  });

  group('marking attendance', () {
    final datetime = DateTime(2026, 3, 1, 10, 30);

    test('answers the record the server stored as the signed-in servant', () {
      final server = FakeAttendanceServer();
      final backend = server.backend();
      addTearDown(backend.dispose);

      return backend.db.meetings
          .markAttendance(
            meetingId: meetingId,
            personId: personId,
            datetime: datetime,
            asServant: true,
          )
          .then((answered) {
            expect(
              answered,
              AttendanceRecord(
                id: answered.id,
                meetingId: meetingId,
                personId: personId,
                datetime: datetime,
                asServant: true,
                recordedByUser: MeetingFixtures.servant,
              ),
            );
            expect(server.records.rows.single['id'], answered.id);
          });
    });

    test('sends the meeting, the person, the time and the role', () async {
      final backend = FakeAttendanceServer().backend();
      addTearDown(backend.dispose);

      await backend.db.meetings.markAttendance(
        meetingId: meetingId,
        personId: personId,
        datetime: datetime,
      );

      expect(backend.server.sentTo('markAttendance').single.variables, {
        'input': {
          'meetingId': meetingId,
          'personId': personId,
          'datetime': tstzToString(datetime),
          'asServant': false,
        },
      });
    });

    group('a rejection throws the exception of its error code', () {
      final rejections = <String, TypeMatcher<BackendException>>{
        'forbidden': isA<BackendForbiddenException>(),
        'attendance/already-recorded': isA<BackendRejectedException>(),
        'attendance/meeting-archived': isA<BackendRejectedException>(),
        'attendance/audience-mismatch': isA<BackendRejectedException>(),
        'attendance/not-a-servant-of-meeting': isA<BackendRejectedException>(),
        'attendance/not-in-meeting': isA<BackendRejectedException>(),
        'attendance/meeting-not-found': isA<BackendRejectedException>(),
      };

      for (final MapEntry(key: code, value: matcher) in rejections.entries) {
        test(code, () async {
          final backend = FakeAttendanceServer().backend();
          addTearDown(backend.dispose);
          backend.server.nextMutationRejectionCode = code;

          await expectLater(
            backend.db.meetings.markAttendance(
              meetingId: meetingId,
              personId: personId,
              datetime: datetime,
            ),
            throwsA(
              allOf(
                matcher,
                predicate<BackendException>((e) => e.code == code),
              ),
            ),
          );
        });
      }
    });
  });

  group('changing a record', () {
    final record = attendanceOn(DateTime(2026, 3));

    test('moving its time answers the record at the new time', () async {
      final server = FakeAttendanceServer(rows: rowsOf([record]));
      final backend = server.backend();
      addTearDown(backend.dispose);
      final later = record.datetime.add(const Duration(minutes: 45));

      final answered = await backend.db.meetings.updateAttendanceTime(
        attendanceRecordId: record.id,
        datetime: later,
      );

      expect(answered, record.copyWith(datetime: later));
      expect(backend.server.sentTo('updateAttendanceTime').single.variables, {
        'id': record.id,
        'input': {'datetime': tstzToString(later)},
      });
    });

    test('unmarking answers the removed record and removes it', () async {
      final server = FakeAttendanceServer(rows: rowsOf([record]));
      final backend = server.backend();
      addTearDown(backend.dispose);

      final answered = await backend.db.meetings.unmarkAttendance(
        attendanceRecordId: record.id,
      );

      expect(answered, record);
      expect(server.records.rows, isEmpty);
      expect(backend.server.sentTo('unmarkAttendance').single.variables, {
        'id': record.id,
      });
    });
  });
}
