import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/features/data_analysis/presentation/widgets/class_attendance_display.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class SingleDayKpisSummaryTile extends StatelessWidget {
  final SingleDayMeetingsAttendanceAnalysis analysis;

  const SingleDayKpisSummaryTile({required this.analysis, super.key});

  @override
  Widget build(BuildContext context) {
    final topClass = analysis.topClass;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: AttendanceKpiGrid(
        children: [
          AttendanceKpiTile(
            icon: const Icon(Symbols.percent),
            label: 'نسبة الحضور',
            value: analysis.overallAttendanceRate.asPercentLabel,
            emphasized: true,
          ),
          AttendanceKpiTile(
            icon: const Icon(Symbols.groups),
            label: 'إجمالي الحضور',
            value: analysis.totalAttendances.toString(),
            caption: 'من أصل ${analysis.rosterSize}',
          ),
          AttendanceKpiTile(
            icon: const Icon(Symbols.workspace_premium),
            label: 'أعلى فصل حضورًا',
            value: topClass?.displayName ?? '—',
            caption: topClass?.ratePercentLabel,
          ),
        ],
      ),
    );
  }
}
