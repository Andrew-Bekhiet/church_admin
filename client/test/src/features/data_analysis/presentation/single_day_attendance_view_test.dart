import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';

void main() {
  final day = DateTime(2026, 7, 12);

  SingleDayRosterMember member(
    String personId, {
    int? studyYearId,
    Gender gender = Gender.any,
    String? studyYearName,
    bool attended = false,
  }) => SingleDayRosterMember(
    personId: personId,
    studyYearId: studyYearId,
    gender: gender,
    studyYearName: studyYearName,
    attended: attended,
  );

  MeetingAttendanceSummary summary({required int totalCount}) =>
      MeetingAttendanceSummary(
        meeting: const Meeting(
          id: 'm1',
          name: 'اجتماع',
          audience: MeetingAudience.onlyPersons,
          isArchived: false,
        ),
        demographics: [
          if (totalCount > 0)
            MeetingDayDemographicCounts(
              day: day,
              personsCount: totalCount,
              servantsCount: 0,
              totalCount: totalCount,
            ),
        ],
      );

  Future<void> pumpView(
    WidgetTester tester,
    SingleDayMeetingsAttendanceAnalysis analysis,
  ) => tester.pumpWidget(
    MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: SingleDayAttendanceView(analysis: analysis),
        ),
      ),
    ),
  );

  testWidgets(
    'renders the single-day KPIs and pie chart',
    (tester) async {
      final analysis = SingleDayMeetingsAttendanceAnalysis(
        title: 'خدمة',
        rosterMembers: [
          member(
            'p1',
            studyYearId: 1,
            gender: Gender.male,
            studyYearName: 'أولى',
            attended: true,
          ),
          member(
            'p2',
            studyYearId: 1,
            gender: Gender.male,
            studyYearName: 'أولى',
          ),
          member(
            'p3',
            studyYearId: 2,
            gender: Gender.female,
            studyYearName: 'ثانية',
            attended: true,
          ),
          member(
            'p4',
            studyYearId: 2,
            gender: Gender.female,
            studyYearName: 'ثانية',
          ),
        ],
        meetings: [summary(totalCount: 2)],
      );

      await pumpView(tester, analysis);

      expect(find.byType(SingleDayKpisSummaryGrid), findsOne);
      expect(find.byType(ClassAttendancePieChart), findsOne);
      expect(find.byType(MeetingAttendanceTrendChart), findsNothing);
      expect(tester.takeException(), isNull);
    },
  );

  testWidgets(
    'a roster day with zero recorded attendance still shows the 0% KPIs',
    (tester) async {
      final analysis = SingleDayMeetingsAttendanceAnalysis(
        title: 'خدمة',
        rosterMembers: [
          member('p1', studyYearId: 1, gender: Gender.male),
          member('p2', studyYearId: 1, gender: Gender.male),
        ],
        meetings: [summary(totalCount: 0)],
      );

      await pumpView(tester, analysis);

      expect(find.byType(SingleDayKpisSummaryGrid), findsOne);
      expect(find.text('من أصل 2'), findsOne);
      expect(find.text('لا يوجد سجل حضور خلال هذه الفترة'), findsNothing);
    },
  );

  testWidgets(
    'shows the empty state only when roster and meetings are both empty',
    (tester) async {
      final analysis = SingleDayMeetingsAttendanceAnalysis(
        title: 'خدمة',
        rosterMembers: const [],
        meetings: const [],
      );

      await pumpView(tester, analysis);

      expect(find.text('لا يوجد سجل حضور خلال هذه الفترة'), findsOne);
      expect(find.byType(SingleDayKpisSummaryGrid), findsNothing);
    },
  );
}
