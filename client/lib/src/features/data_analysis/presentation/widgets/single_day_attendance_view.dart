import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

/// Single-day KPIs are roster-derived, so a day with a roster but zero
/// recorded attendance still shows its 0% KPIs and class breakdown; the empty
/// state only appears when there is genuinely nothing to show.
class SingleDayAttendanceView extends StatelessWidget {
  final SingleDayMeetingsAttendanceAnalysis analysis;

  const SingleDayAttendanceView({required this.analysis, super.key});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    final textTheme = themeData.textTheme;

    if (analysis.rosterSize == 0 && analysis.meetings.isEmpty) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 32),
        child: Center(
          child: Text(
            'لا يوجد سجل حضور خلال هذه الفترة',
            style: textTheme.titleMedium,
          ),
        ),
      );
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      spacing: 8,
      children: [
        SingleDayKpisSummaryGrid(analysis: analysis),
        if (analysis.hasDemographicBreakdown)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ClassAttendancePieChart(analysis: analysis),
          ),
        if (analysis.hasMeetingBreakdown) ...[
          Divider(
            height: 32,
            thickness: 1.5,
            color: themeData.colorScheme.outline.withValues(alpha: 0.4),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'تفاصيل حسب الاجتماعات',
              style: textTheme.titleLarge,
            ),
          ),
          for (final summary in analysis.meetings)
            ListTile(
              leading: MeetingAvatar(meeting: summary.meeting, radius: 18),
              title: Text(summary.meeting.name),
              trailing: Text(
                summary.totalAttendances.toString(),
                style: textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
        ],
      ],
    );
  }
}
