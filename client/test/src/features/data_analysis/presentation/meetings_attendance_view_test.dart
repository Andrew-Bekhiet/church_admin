import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  MeetingDayDemographicCounts demographic(
    DateTime d, {
    int persons = 0,
    int? studyYearId,
    bool? gender,
    String? studyYearName,
  }) => MeetingDayDemographicCounts(
    day: d,
    personsCount: persons,
    servantsCount: 0,
    totalCount: persons,
    studyYearId: studyYearId,
    gender: gender,
    studyYearName: studyYearName,
  );

  testWidgets(
    'single-day analysis renders the single-day KPIs and pie chart',
    (tester) async {
      final day = DateTime(2026, 7, 12);
      final analysis = SingleDayMeetingsAttendanceAnalysis(
        title: 'خدمة',
        rosterDemographics: [
          (studyYearId: 1, gender: true, studyYearName: 'أولى'),
          (studyYearId: 1, gender: true, studyYearName: 'أولى'),
          (studyYearId: 2, gender: false, studyYearName: 'ثانية'),
          (studyYearId: 2, gender: false, studyYearName: 'ثانية'),
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
              demographic(
                day,
                persons: 2,
                studyYearId: 1,
                gender: true,
                studyYearName: 'أولى',
              ),
              demographic(
                day,
                persons: 1,
                studyYearId: 2,
                gender: false,
                studyYearName: 'ثانية',
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
