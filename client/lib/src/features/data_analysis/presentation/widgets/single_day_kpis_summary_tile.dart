import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class SingleDayKpisSummaryTile extends StatelessWidget {
  final SingleDayMeetingsAttendanceAnalysis analysis;

  const SingleDayKpisSummaryTile({required this.analysis, super.key});

  static String _formatRate(double? rate) =>
      rate == null ? '—' : '${(rate * 100).toStringAsFixed(0)}%';

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
          value: _formatRate(analysis.overallAttendanceRate),
          emphasized: true,
        ),
        AttendanceKpiTile(
          icon: const Icon(Symbols.groups),
          label: 'إجمالي الحضور',
          value: analysis.attendedPersonsCount.toString(),
          caption: 'من أصل ${analysis.rosterSize}',
        ),
        if (analysis.classes.length >= 2)
          AttendanceKpiTile(
            icon: const Icon(Symbols.workspace_premium),
            label: 'أعلى فصل حضورًا',
            value: topClass?.displayName ?? '—',
            caption: topClass?.ratePercentLabel,
          ),
        if (analysis.classes.length >= 2)
          AttendanceKpiTile(
            icon: const Icon(Symbols.trending_down),
            label: 'أقل فصل حضورًا',
            value: lowestClass?.displayName ?? '—',
            caption: lowestClass?.ratePercentLabel,
          ),
      ],
    );
  }
}
