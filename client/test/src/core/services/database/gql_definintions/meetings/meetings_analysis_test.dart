import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import 'meeting_fixtures.dart';

typedef RosterMemberSummary = ({
  String personId,
  int? studyYearId,
  String? studyYearName,
  bool? gender,
  bool attended,
});

void main() {
  const liturgy = MeetingFixtures.liturgy;
  const youth = MeetingFixtures.youthMeeting;
  final firstYearClass = MeetingFixtures.firstYearClass;
  final sunday = MeetingFixtures.sunday;
  final nextSunday = MeetingFixtures.nextSunday;
  final april = DateTime(2026, 4, 5);

  RosterMemberSummary memberSummaryOf(SingleDayRosterMember member) => (
    personId: member.personId,
    studyYearId: member.studyYearId,
    studyYearName: member.studyYearName,
    gender: member.gender,
    attended: member.attended,
  );

  group('the attendance analysis of a subject', () {
    final liturgyDays = [
      MeetingDayRow(
        id: 'day-1',
        day: sunday,
        studyYearId: 1,
        gender: true,
        personsCount: 3,
        servantsCount: 1,
      ),
      MeetingDayRow(
        id: 'day-2',
        day: sunday,
        studyYearId: 2,
        gender: false,
        personsCount: 2,
      ),
      MeetingDayRow(
        id: 'day-3',
        day: nextSunday,
        studyYearId: 1,
        gender: true,
        personsCount: 4,
        servantsCount: 1,
      ),
      MeetingDayRow(
        id: 'day-4',
        day: april,
        studyYearId: 1,
        gender: true,
        personsCount: 9,
      ),
    ];
    final classDays = [
      MeetingDayRow(
        id: 'day-5',
        day: sunday,
        gender: true,
        servantsCount: 2,
      ),
    ];
    final youthDays = [
      MeetingDayRow(id: 'day-6', day: sunday, gender: false, personsCount: 5),
    ];
    final meetings = [
      MeetingRow(liturgy, days: liturgyDays),
      MeetingRow(firstYearClass, days: classDays),
      MeetingRow(youth, days: youthDays),
    ];

    MeetingDayDemographicCounts countsOf(MeetingDayRow row) =>
        MeetingDayDemographicCounts(
          day: row.day,
          studyYearId: row.studyYearId,
          gender: row.gender,
          personsCount: row.personsCount,
          servantsCount: row.servantsCount,
          totalCount: row.totalCount,
          studyYearName: switch (row.studyYearId) {
            1 => MeetingFixtures.firstYear.name,
            2 => MeetingFixtures.secondYear.name,
            _ => null,
          },
        );

    Future<MeetingsAttendanceAnalysis> analysisOf(
      MeetingsAnalysisSubject subject,
    ) =>
        MeetingFixtures.backendOf(
          const [],
          meetings: meetings,
        ).db.meetings.getMeetingsAttendanceAnalysis(
          subject: subject,
          range: MeetingFixtures.march,
        );

    test('of a service covers its meetings by name within the range', () async {
      final analysis = await analysisOf(
        const ServiceAnalysisSubject(MeetingFixtures.sundaySchool),
      );

      expect(
        analysis.meetings.map((summary) => summary.meeting),
        [liturgy, firstYearClass]..sort((a, b) => a.name.compareTo(b.name)),
      );
      expect(
        analysis.meetings
            .singleWhere((summary) => summary.meeting == liturgy)
            .demographics,
        liturgyDays.take(3).map(countsOf),
      );
    });

    test('is titled and coloured as its subject', () async {
      final analysis = await analysisOf(
        const ServiceAnalysisSubject(MeetingFixtures.sundaySchool),
      );

      expect(analysis.title, MeetingFixtures.sundaySchool.name);
      expect(analysis.color, MeetingFixtures.sundaySchool.color);
    });

    test('of a meeting covers only that meeting', () async {
      final analysis = await analysisOf(const MeetingAnalysisSubject(youth));

      expect(analysis.meetings.map((summary) => summary.meeting), [youth]);
      expect(
        analysis.meetings.single.demographics,
        youthDays.map(countsOf),
      );
    });

    test('of a group covers the meetings of the group', () async {
      final analysis = await analysisOf(
        const GroupAnalysisSubject(MeetingFixtures.youthGroup),
      );

      expect(analysis.meetings.map((summary) => summary.meeting), [youth]);
    });

    test(
      'of a class covers the service meetings, narrowed to its slice',
      () async {
        final analysis = await analysisOf(
          const ClassAnalysisSubject(
            Class(
              id: 'class-1',
              name: 'فصل أولى',
              service: MeetingFixtures.sundaySchool,
              serviceStudyYear: 1,
              serviceGender: true,
            ),
          ),
        );

        final liturgySummary = analysis.meetings.singleWhere(
          (summary) => summary.meeting == liturgy,
        );
        expect(analysis.meetings, hasLength(2));
        expect(liturgySummary.demographics, [
          countsOf(liturgyDays[0]),
          countsOf(liturgyDays[2]),
        ]);
      },
    );
  });

  group('the roster of a subject on one day', () {
    final roster = [
      MeetingFixtures.rosterRow(
        liturgy,
        'person-1',
        studyYearId: 2,
        gender: true,
        attendedDays: [MeetingFixtures.sunday],
      ),
      MeetingFixtures.rosterRow(
        liturgy,
        'person-2',
        studyYearId: 1,
        gender: false,
      ),
      MeetingFixtures.rosterRow(
        firstYearClass,
        'person-3',
        studyYearId: 1,
        gender: true,
        attendedDays: [MeetingFixtures.sunday, MeetingFixtures.nextSunday],
      ),
      MeetingFixtures.rosterRow(
        firstYearClass,
        'person-4',
        asServant: true,
        gender: true,
      ),
      MeetingFixtures.rosterRow(
        youth,
        'person-5',
        gender: true,
        attendedDays: [MeetingFixtures.sunday],
      ),
    ];

    RosterMemberSummary summary(
      String personId, {
      int? studyYearId,
      bool? gender,
      bool attended = false,
    }) => (
      personId: personId,
      studyYearId: studyYearId,
      studyYearName: switch (studyYearId) {
        1 => MeetingFixtures.firstYear.name,
        2 => MeetingFixtures.secondYear.name,
        _ => null,
      },
      gender: gender,
      attended: attended,
    );

    Future<List<SingleDayRosterMember>> membersOf(
      MeetingsAnalysisSubject subject,
    ) =>
        MeetingFixtures.backendOf(roster).db.meetings
            .getSingleDayRosterDemographics(
              subject: subject,
              day: MeetingFixtures.sunday,
            );

    test('of a service shows who attended that day', () async {
      final members = await membersOf(
        const ServiceAnalysisSubject(MeetingFixtures.sundaySchool),
      );

      expect(members.map(memberSummaryOf), [
        summary('person-1', studyYearId: 2, gender: true, attended: true),
        summary('person-2', studyYearId: 1, gender: false),
        summary('person-3', studyYearId: 1, gender: true, attended: true),
        summary('person-4', gender: true),
      ]);
    });

    test('of a meeting shows only the roster of that meeting', () async {
      final members = await membersOf(const MeetingAnalysisSubject(youth));

      expect(members.map(memberSummaryOf), [
        summary('person-5', gender: true, attended: true),
      ]);
    });

    test('of a group shows the roster of the meetings of the group', () async {
      final members = await membersOf(
        const GroupAnalysisSubject(MeetingFixtures.youthGroup),
      );

      expect(members.map((member) => member.personId), ['person-5']);
    });

    test(
      'of a class shows only the people of its study year and gender',
      () async {
        final members = await membersOf(
          const ClassAnalysisSubject(
            Class(
              id: 'class-1',
              name: 'فصل أولى',
              service: MeetingFixtures.sundaySchool,
              serviceStudyYear: 1,
              serviceGender: true,
            ),
          ),
        );

        expect(members.map(memberSummaryOf), [
          summary('person-3', studyYearId: 1, gender: true, attended: true),
        ]);
      },
    );
  });
}
