import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class MeetingBreakdownTile extends StatelessWidget {
  final MeetingAttendanceSummary summary;
  final AttendanceGranularity granularity;

  const MeetingBreakdownTile({
    required this.summary,
    required this.granularity,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final rolledDays = summary.days.rollupBy(granularity);

    return ExpansionTile(
      initiallyExpanded: true,
      leading: MeetingAvatar(meeting: summary.meeting, radius: 18),
      title: Text(summary.meeting.name),
      childrenPadding: const EdgeInsets.only(bottom: 8),
      children: [
        MeetingKpisSummaryGrid(
          heldCount: summary.heldCount,
          averageAttendance: summary.averageAttendance,
          peak: rolledDays.peakDayByCount,
          granularity: granularity,
          latestDay: summary.latestDay?.day,
        ),
        const SizedBox(height: 8),
        MeetingAttendanceTrendChart(
          days: rolledDays,
          color: summary.meeting.color,
        ),
      ],
    );
  }
}
