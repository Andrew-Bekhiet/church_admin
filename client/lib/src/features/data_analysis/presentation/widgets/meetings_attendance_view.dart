import 'package:church_admin/church_admin.dart';
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
    final textTheme = themeData.textTheme;

    if (analysis.heldCount == 0) {
      return const EmptyAttendanceMessage();
    }

    final rolledDays = analysis.aggregateDays.rollupBy(granularity);

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      spacing: 8,
      children: [
        MeetingKpisSummaryGrid(
          heldCount: analysis.heldCount,
          averageAttendance: analysis.averageAttendance,
          peak: rolledDays.peakDayByCount,
          granularity: granularity,
          latestDay: analysis.latestDay?.day,
        ),
        const SizedBox(height: 18),
        MeetingAttendanceTrendChart(
          days: rolledDays,
          color: analysis.color,
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
            MeetingBreakdownTile(
              summary: summary,
              granularity: granularity,
            ),
        ],
      ],
    );
  }
}
