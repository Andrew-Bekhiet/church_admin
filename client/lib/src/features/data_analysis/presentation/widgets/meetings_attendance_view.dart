import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/features/data_analysis/presentation/widgets/meeting_kpis_summary_tile.dart';
import 'package:flutter/material.dart';

class MeetingsAttendanceView extends StatelessWidget {
  final MeetingsAttendanceAnalysis analysis;
  final AttendanceGranularity granularity;

  const MeetingsAttendanceView({
    required this.analysis,
    this.granularity = AttendanceGranularity.day,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);

    if (analysis.heldCount == 0) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 32),
        child: Center(
          child: Text(
            'لا يوجد سجل حضور خلال هذه الفترة',
            style: themeData.textTheme.titleMedium,
          ),
        ),
      );
    }

    final rolledDays = analysis.aggregateDays.rollupBy(granularity);

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      spacing: 8,
      children: [
        MeetingKpisSummaryTile(
          heldCount: analysis.heldCount,
          averageAttendance: analysis.averageAttendance,
          peak: rolledDays.peakDayByCount,
          granularity: granularity,
          latestDay: analysis.latestDay?.day,
        ),
        MeetingAttendanceTrendChart(days: rolledDays, color: analysis.color),
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
              style: themeData.textTheme.titleLarge,
            ),
          ),
          ...analysis.meetings.map(
            (summary) {
              final rolledDays = summary.days.rollupBy(granularity);

              return ExpansionTile(
                initiallyExpanded: true,
                leading: MeetingAvatar(meeting: summary.meeting, radius: 18),
                title: Text(summary.meeting.name),
                childrenPadding: const EdgeInsets.only(bottom: 8),
                children: [
                  MeetingKpisSummaryTile(
                    heldCount: summary.heldCount,
                    averageAttendance: summary.averageAttendance,
                    peak: rolledDays.peakDayByCount,
                    granularity: granularity,
                    latestDay: summary.latestDay?.day,
                  ),
                  MeetingAttendanceTrendChart(
                    days: rolledDays,
                    color: summary.meeting.color,
                  ),
                ],
              );
            },
          ),
        ],
      ],
    );
  }
}
