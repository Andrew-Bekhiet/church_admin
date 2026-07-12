import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() {
  setUpAll(() async {
    await initializeDateFormatting('ar');
    await initializeDateFormatting('ar-EG');
  });

  const meeting = Meeting(
    id: 'm1',
    name: 'اجتماع',
    audience: MeetingAudience.onlyPersons,
    isArchived: false,
  );

  MeetingAttendanceSummary summary(List<DateTime> days) =>
      MeetingAttendanceSummary(
        meeting: meeting,
        demographics: [
          for (final day in days)
            MeetingDayDemographicCounts(
              day: day,
              personsCount: 2,
              servantsCount: 0,
              totalCount: 2,
            ),
        ],
      );

  Future<void> pumpView(
    WidgetTester tester,
    MeetingsAttendanceAnalysis analysis,
  ) => tester.pumpWidget(
    MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: MeetingsAttendanceView(analysis: analysis),
        ),
      ),
    ),
  );

  testWidgets(
    'range analysis renders the range KPIs and trend chart',
    (tester) async {
      final analysis = MeetingsAttendanceAnalysis(
        title: 'خدمة',
        meetings: [
          summary([DateTime(2026, 7, 5), DateTime(2026, 7, 12)]),
        ],
      );

      await pumpView(tester, analysis);

      expect(find.byType(MeetingKpisSummaryGrid), findsOne);
      expect(find.byType(MeetingAttendanceTrendChart), findsOne);
      expect(tester.takeException(), isNull);
    },
  );

  testWidgets(
    'range analysis with no held days shows the empty state',
    (tester) async {
      final analysis = MeetingsAttendanceAnalysis(
        title: 'خدمة',
        meetings: [summary(const [])],
      );

      await pumpView(tester, analysis);

      expect(find.text('لا يوجد سجل حضور خلال هذه الفترة'), findsOne);
      expect(find.byType(MeetingKpisSummaryGrid), findsNothing);
    },
  );

  testWidgets(
    'range analysis with several meetings renders a breakdown tile each',
    (tester) async {
      final analysis = MeetingsAttendanceAnalysis(
        title: 'خدمة',
        meetings: [
          summary([DateTime(2026, 7, 5)]),
          MeetingAttendanceSummary(
            meeting: const Meeting(
              id: 'm2',
              name: 'اجتماع آخر',
              audience: MeetingAudience.onlyPersons,
              isArchived: false,
            ),
            demographics: [
              MeetingDayDemographicCounts(
                day: DateTime(2026, 7, 5),
                personsCount: 1,
                servantsCount: 0,
                totalCount: 1,
              ),
            ],
          ),
        ],
      );

      await pumpView(tester, analysis);

      expect(find.byType(MeetingBreakdownTile), findsNWidgets(2));
    },
  );
}
