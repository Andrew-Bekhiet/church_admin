import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  SingleDayRosterMember member(
    String personId, {
    int? studyYearId,
    bool? gender,
    String? studyYearName,
    bool attended = false,
  }) => SingleDayRosterMember(
    personId: personId,
    studyYearId: studyYearId,
    gender: gender,
    studyYearName: studyYearName,
    attended: attended,
  );

  final day = DateTime(2026, 7, 12);

  testWidgets(
    'single-day analysis renders the single-day KPIs and pie chart',
    (tester) async {
      final analysis = SingleDayMeetingsAttendanceAnalysis(
        title: 'خدمة',
        rosterMembers: [
          member(
            'p1',
            studyYearId: 1,
            gender: true,
            studyYearName: 'أولى',
            attended: true,
          ),
          member('p2', studyYearId: 1, gender: true, studyYearName: 'أولى'),
          member(
            'p3',
            studyYearId: 2,
            gender: false,
            studyYearName: 'ثانية',
            attended: true,
          ),
          member('p4', studyYearId: 2, gender: false, studyYearName: 'ثانية'),
        ],
        meetings: [
          MeetingAttendanceSummary(
            meeting: const Meeting(
              id: 'm1',
              name: 'اجتماع',
              audience: MeetingAudience.onlyPersons,
              isArchived: false,
            ),
            demographics: [
              MeetingDayDemographicCounts(
                day: day,
                personsCount: 2,
                servantsCount: 0,
                totalCount: 2,
              ),
            ],
          ),
        ],
      );

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: SingleChildScrollView(
              child: MeetingsAttendanceView(analysis: analysis),
            ),
          ),
        ),
      );

      expect(find.byType(SingleDayKpisSummaryTile), findsOne);
      expect(find.byType(ClassAttendancePieChart), findsOne);
      expect(find.byType(MeetingAttendanceTrendChart), findsNothing);
      expect(tester.takeException(), isNull);
    },
  );
}
