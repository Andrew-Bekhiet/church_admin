import 'package:church_admin/church_admin.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:tinycolor2/tinycolor2.dart';

/// A weighted pie of attendance share per class: each slice is sized by how
/// many of that class attended, and labelled with the class's own attendance
/// rate.
class ClassAttendancePieChart extends StatelessWidget {
  final SingleDayMeetingsAttendanceAnalysis analysis;

  const ClassAttendancePieChart({
    required this.analysis,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = ColorScheme.of(context);
    final textTheme = TextTheme.of(context);

    final classes = analysis.classAttendanceRates
        .where((c) => c.attendedCount > 0)
        .toList();

    if (classes.isEmpty) return const SizedBox.shrink();

    final primaryColor = colorScheme.primary;

    final classesColors = Expando<Color>();
    for (int i = 0; i < classes.length; i++) {
      final class$ = classes[i];
      final color = class$.classColor;

      classesColors[class$] = color == null || color == Colors.transparent
          ? primaryColor.spin(i * 360 / classes.length)
          : color;
    }

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
                for (final class$ in classes)
                  PieChartSectionData(
                    value: class$.attendedCount.toDouble(),
                    color: classesColors[class$],
                    title: class$.ratePercentLabel,
                    cornerRadius: 4,
                    showTitle: true,
                    radius: 100,
                    titleStyle: textTheme.labelMedium?.copyWith(
                      color: classesColors[class$]?.isDark ?? false
                          ? Colors.white
                          : Colors.black87,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
              ],
              startDegreeOffset: -90,
            ),
          ),
        ),
        ClassAttendanceLegend(
          entries: [
            for (final class$ in classes)
              (class$.displayName, classesColors[class$] ?? primaryColor),
          ],
        ),
      ],
    );
  }
}
