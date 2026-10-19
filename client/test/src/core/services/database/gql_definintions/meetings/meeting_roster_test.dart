import 'dart:ui';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../fakes/fake_ash_backend.dart';
import 'meeting_fixtures.dart';

void main() {
  const meetingId = 'meeting-1';

  final mina = RosterRow(
    meetingId: meetingId,
    personId: 'person-1',
    name: 'مينا',
    phones: const ['01000000001', '01000000002'],
    gender: true,
    studyYearId: 2,
    studyYearName: 'ثانية',
    color: const Color(0xFF2196F3),
    photoUpdatedAt: DateTime(2026, 1, 2, 3, 4),
    blurhash: 'LEHV6nWB2yk8',
  );
  const mariam = RosterRow(
    meetingId: meetingId,
    personId: 'person-2',
    name: 'مريم',
    gender: false,
    studyYearId: 1,
    studyYearName: 'أولى',
  );
  const youssef = RosterRow(
    meetingId: meetingId,
    personId: 'person-3',
    name: 'يوسف',
    gender: true,
  );
  const abanoub = RosterRow(
    meetingId: meetingId,
    personId: 'person-4',
    name: 'أبانوب',
    asServant: true,
    gender: true,
  );
  const ofOtherMeeting = RosterRow(
    meetingId: 'meeting-2',
    personId: 'person-9',
    name: 'بيشوي',
  );
  final everyone = [mina, mariam, youssef, abanoub, ofOtherMeeting];

  Future<List<MeetingRosterEntry>> rosterOf(
    Iterable<RosterRow> rows, {
    bool groupByStudyYear = false,
    int? limit,
  }) async {
    final backend = FakeAshBackend([MeetingFixtures.rosterTable(rows)]);
    addTearDown(backend.dispose);

    return backend.db.meetings.getMeetingRoster(
      meetingId: meetingId,
      groupByStudyYear: groupByStudyYear,
      limit: limit ?? 1000,
    );
  }

  Iterable<String> personIdsOf(Iterable<MeetingRosterEntry> entries) =>
      entries.map((entry) => entry.person.id);

  List<String> byName(Iterable<RosterRow> rows) =>
      (rows.toList()..sort((a, b) => a.name.compareTo(b.name)))
          .map((row) => row.personId)
          .toList();

  test(
    'the roster of a meeting lists its people and servants by name',
    () async {
      final entries = await rosterOf(everyone);

      expect(personIdsOf(entries), byName([mina, mariam, youssef, abanoub]));
    },
  );

  test('the roster leaves out the people of other meetings', () async {
    final entries = await rosterOf(everyone);

    expect(personIdsOf(entries), isNot(contains(ofOtherMeeting.personId)));
    expect(entries, hasLength(4));
  });

  test(
    'grouping by study year lists each study year before the next',
    () async {
      final entries = await rosterOf(everyone, groupByStudyYear: true);

      expect(personIdsOf(entries), [
        mariam.personId,
        mina.personId,
        ...byName([youssef, abanoub]),
      ]);
    },
  );

  test(
    'an entry shows the person with the details the roster carries',
    () async {
      final entries = await rosterOf([mina]);
      final entry = entries.single;

      expect(entry.asServant, mina.asServant);
      expect(entry.phones, mina.phones);
      expect(
        entry.person,
        Person(
          id: mina.personId,
          name: mina.name,
          gender: mina.gender!,
          color: mina.color,
          studyYearId: mina.studyYearId,
          studyYear: StudyYear(
            order: mina.studyYearId!,
            name: mina.studyYearName!,
          ),
          photoUpdatedAt: mina.photoUpdatedAt,
          blurhash: mina.blurhash,
        ),
      );
    },
  );

  test('a servant entry is marked as a servant', () async {
    final entries = await rosterOf([abanoub]);

    expect(entries.single.asServant, isTrue);
  });

  test('an entry has no attendance until one is recorded', () async {
    final entries = await rosterOf([mina]);

    expect(entries.single.attendanceRecord, isNull);
  });

  test('a person without a study year has none', () async {
    final entries = await rosterOf([youssef]);

    expect(entries.single.person.studyYear, isNull);
  });

  test('a roster longer than the server page is loaded whole', () async {
    final crowd = [
      for (var number = 0; number < AshPagination.maxPageSize + 200; number++)
        RosterRow(
          meetingId: meetingId,
          personId: 'person-${number.toString().padLeft(5, '0')}',
          name: 'اسم ${number.toString().padLeft(5, '0')}',
        ),
    ];

    final entries = await rosterOf(crowd, limit: crowd.length);

    expect(personIdsOf(entries), crowd.map((row) => row.personId));
  });
}
