import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_test/flutter_test.dart';

import 'meeting_fixtures.dart';

class PersonAnalysisSummary extends Equatable {
  final String personId;
  final bool asServant;
  final String meetingId;
  final List<DateTime> heldDays;
  final List<DateTime> attendedDays;

  @override
  List<Object?> get props => [
    personId,
    asServant,
    meetingId,
    heldDays,
    attendedDays,
  ];

  const PersonAnalysisSummary({
    required this.personId,
    required this.asServant,
    required this.meetingId,
    required this.heldDays,
    required this.attendedDays,
  });

  PersonAnalysisSummary.of(PersonMeetingAttendanceAnalysis analysis)
    : this(
        personId: analysis.personId,
        asServant: analysis.asServant,
        meetingId: analysis.meeting.id,
        heldDays: analysis.heldDays,
        attendedDays: analysis.attendedDays.toList()..sort(),
      );
}

void main() {
  const liturgy = MeetingFixtures.liturgy;
  const youth = MeetingFixtures.youthMeeting;
  final firstYearClass = MeetingFixtures.firstYearClass;
  final sunday = MeetingFixtures.sunday;
  final nextSunday = MeetingFixtures.nextSunday;
  final april = DateTime(2026, 4, 5);

  group('the attendance of the roster of a meeting', () {
    final heldMeetings = [
      MeetingRow(liturgy, heldDays: [sunday, nextSunday]),
      MeetingRow(youth, heldDays: [sunday]),
    ];
    final roster = [
      MeetingFixtures.rosterRow(
        liturgy,
        'person-2',
        attendedDays: [sunday, nextSunday, april],
      ),
      MeetingFixtures.rosterRow(liturgy, 'person-1', attendedDays: [sunday]),
      MeetingFixtures.rosterRow(
        liturgy,
        'person-4',
        asServant: true,
        attendedDays: [sunday],
      ),
      MeetingFixtures.rosterRow(youth, 'person-1', attendedDays: [sunday]),
    ];

    test('shows each person with the days the meeting was held', () async {
      final analyses =
          await MeetingFixtures.backendOf(
            roster,
            meetings: heldMeetings,
          ).db.meetings.getAttendanceAnalyses(
            meeting: liturgy,
            range: MeetingFixtures.march,
            asServant: false,
          );

      expect(analyses.map(PersonAnalysisSummary.of), [
        PersonAnalysisSummary(
          personId: 'person-1',
          asServant: false,
          meetingId: liturgy.id,
          heldDays: [sunday, nextSunday],
          attendedDays: [sunday],
        ),
        PersonAnalysisSummary(
          personId: 'person-2',
          asServant: false,
          meetingId: liturgy.id,
          heldDays: [sunday, nextSunday],
          attendedDays: [sunday, nextSunday],
        ),
      ]);
    });

    test('counts only the days attended within the range', () async {
      final analyses =
          await MeetingFixtures.backendOf(
            roster,
            meetings: heldMeetings,
          ).db.meetings.getAttendanceAnalyses(
            meeting: liturgy,
            range: MeetingFixtures.march,
            asServant: false,
          );

      expect(
        analyses.singleWhere((a) => a.personId == 'person-2').attendedDays,
        isNot(contains(april)),
      );
    });

    test('shows the servants when asked as servants', () async {
      final analyses =
          await MeetingFixtures.backendOf(
            roster,
            meetings: heldMeetings,
          ).db.meetings.getAttendanceAnalyses(
            meeting: liturgy,
            range: MeetingFixtures.march,
            asServant: true,
          );

      expect(analyses.map(PersonAnalysisSummary.of), [
        PersonAnalysisSummary(
          personId: 'person-4',
          asServant: true,
          meetingId: liturgy.id,
          heldDays: [sunday, nextSunday],
          attendedDays: [sunday],
        ),
      ]);
    });
  });

  group('the attendance of a person', () {
    final heldMeetings = [
      MeetingRow(liturgy, heldDays: [sunday, nextSunday]),
      MeetingRow(firstYearClass, heldDays: [nextSunday]),
      MeetingRow(youth, heldDays: [sunday]),
    ];
    final roster = [
      MeetingFixtures.rosterRow(liturgy, 'person-1', attendedDays: [sunday]),
      MeetingFixtures.rosterRow(firstYearClass, 'person-1', asServant: true),
      MeetingFixtures.rosterRow(youth, 'person-1', attendedDays: [sunday]),
      MeetingFixtures.rosterRow(liturgy, 'person-2', attendedDays: [sunday]),
    ];

    test(
      'shows each meeting and role of the person among those asked',
      () async {
        final analyses =
            await MeetingFixtures.backendOf(
              roster,
              meetings: heldMeetings,
            ).db.meetings.getPersonAttendanceAnalysis(
              personId: 'person-1',
              range: MeetingFixtures.march,
              meetings: [liturgy, firstYearClass],
            );

        expect(analyses.map(PersonAnalysisSummary.of), [
          PersonAnalysisSummary(
            personId: 'person-1',
            asServant: false,
            meetingId: liturgy.id,
            heldDays: [sunday, nextSunday],
            attendedDays: [sunday],
          ),
          PersonAnalysisSummary(
            personId: 'person-1',
            asServant: true,
            meetingId: firstYearClass.id,
            heldDays: [nextSunday],
            attendedDays: const <DateTime>[],
          ),
        ]);
      },
    );

    test('shows only the servant roles when asked as a servant', () async {
      final analyses =
          await MeetingFixtures.backendOf(
            roster,
            meetings: heldMeetings,
          ).db.meetings.getPersonAttendanceAnalysis(
            personId: 'person-1',
            range: MeetingFixtures.march,
            meetings: [liturgy, firstYearClass],
            asServant: true,
          );

      expect(analyses.map((a) => a.meeting), [firstYearClass]);
    });

    test('lists the meetings of the person once each', () async {
      final meetings = await MeetingFixtures.backendOf([
        MeetingFixtures.rosterRow(liturgy, 'person-1'),
        MeetingFixtures.rosterRow(liturgy, 'person-1', asServant: true),
        MeetingFixtures.rosterRow(youth, 'person-1'),
        MeetingFixtures.rosterRow(firstYearClass, 'person-2'),
      ]).db.meetings.getPersonMeetings(personId: 'person-1');

      expect(meetings, [liturgy, youth]);
    });

    test('lists the meetings of the person as a servant', () async {
      final meetings = await MeetingFixtures.backendOf([
        MeetingFixtures.rosterRow(liturgy, 'person-1'),
        MeetingFixtures.rosterRow(firstYearClass, 'person-1', asServant: true),
      ]).db.meetings.getPersonMeetings(personId: 'person-1', asServant: true);

      expect(meetings, [firstYearClass]);
    });
  });
}
