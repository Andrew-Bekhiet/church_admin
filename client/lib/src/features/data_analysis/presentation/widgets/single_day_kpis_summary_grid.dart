import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class SingleDayKpisSummaryGrid extends StatelessWidget {
  final SingleDayMeetingsAttendanceAnalysis analysis;

  const SingleDayKpisSummaryGrid({required this.analysis, super.key});

  @override
  Widget build(BuildContext context) {
    final topClass = analysis.topClass;
    final lowestClass = analysis.lowestClass;

    return AttendanceKpiGrid(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      children: [
        AttendanceKpiTile(
          icon: const Icon(Symbols.percent),
          label: 'نسبة الحضور',
          value: analysis.overallAttendanceRateLabel,
          emphasized: true,
        ),
        AttendanceKpiTile(
          icon: const Icon(Symbols.groups),
          label: 'إجمالي الحضور',
          value: analysis.attendedPersonsCount.toString(),
          caption: 'من أصل ${analysis.rosterSize}',
        ),
        if (analysis.hasClassRanking) ...[
          AttendanceKpiTile(
            icon: const Icon(Symbols.workspace_premium),
            label: 'أعلى فصل حضورًا',
            value: topClass?.displayName ?? '—',
            caption: topClass?.ratePercentLabel,
          ),
          AttendanceKpiTile(
            icon: const Icon(Symbols.trending_down),
            label: 'أقل فصل حضورًا',
            value: lowestClass?.displayName ?? '—',
            caption: lowestClass?.ratePercentLabel,
          ),
        ],
      ],
    );
  }
}
