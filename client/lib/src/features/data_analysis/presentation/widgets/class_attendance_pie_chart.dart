import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/features/data_analysis/presentation/widgets/class_attendance_display.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:tinycolor2/tinycolor2.dart';

/// A weighted pie of attendance share per class: each slice is sized by how
/// many of that class attended, and labelled with the class's own attendance
/// rate.
class ClassAttendancePieChart extends StatelessWidget {
  final SingleDayMeetingsAttendanceAnalysis analysis;
  final Color? color;

  const ClassAttendancePieChart({
    required this.analysis,
    this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = ColorScheme.of(context);
    final textTheme = TextTheme.of(context);
    final baseColor = color ?? colorScheme.primary;

    final classes = analysis.classAttendanceRates
        .where((c) => c.attendedCount > 0)
        .toList();

    if (classes.isEmpty) return const SizedBox.shrink();

    final colors = [
      for (int i = 0; i < classes.length; i++)
        baseColor.spin(360 / classes.length * i),
    ];

    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: 12,
      children: [
        AspectRatio(
          aspectRatio: 1.4,
          child: PieChart(
            PieChartData(
              sectionsSpace: 2,
              centerSpaceRadius: 40,
              sections: [
                for (int i = 0; i < classes.length; i++)
                  PieChartSectionData(
                    value: classes[i].attendedCount.toDouble(),
                    color: colors[i],
                    title: classes[i].ratePercentLabel,
                    radius: 70,
                    titleStyle: textTheme.labelMedium?.copyWith(
                      color: colors[i].isDark
                          ? Colors.white
                          : Colors.black87,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
              ],
            ),
          ),
        ),
        ClassAttendanceLegend(
          entries: [
            for (int i = 0; i < classes.length; i++)
              (classes[i].displayName, colors[i]),
          ],
        ),
      ],
    );
  }
}
