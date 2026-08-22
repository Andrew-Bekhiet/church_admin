import 'dart:math';

import 'package:collection/collection.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tinycolor2/tinycolor2.dart';

class AttendanceTrendChart extends StatelessWidget {
  final Color? color;

  const AttendanceTrendChart({required this.points, this.color, super.key});

  @override
  Widget build(BuildContext context) {
    if (points.length < 2) return const SizedBox.shrink();

    final textTheme = TextTheme.of(context);
    final colorScheme = ColorScheme.of(context);
    final chartColor = color ?? colorScheme.primary;
    final chartColorLight = chartColor.lighten(14).saturate(12);
    final chartColorDeep = chartColor.darken().saturate(8);
    final subtleColor = colorScheme.onSurface.withValues(alpha: 0.35);
    final borderColor = colorScheme.onSurface.withValues(alpha: 0.18);

    // Reversed sorting because the app is RTL and fl_chart doesn't support
    // RTL yet. https://github.com/imaNNeo/fl_chart/issues/2001
    final sorted = points.sorted((a, b) => -a.$1.compareTo(b.$1));
    final maxCount = sorted.map((p) => p.$2).reduce(max).toDouble();
    final maxY = maxCount > 0 ? maxCount : 10.0;
    final yInterval = (maxY / 5).ceilToDouble();

    final spots = [
      for (int i = 0; i < sorted.length; i++)
        FlSpot(i.toDouble(), sorted[i].$2.toDouble()),
    ];
    final xLabelsInterval = switch (sorted.length) {
      <= 7 => 1,
      <= 14 => 2,
      <= 30 => 4,
      _ => (sorted.length / 6).ceil(),
    }.toDouble();

    final xLabelsDateFormat = DateFormat.Md('ar-EG');
    final tooltipDateFormat = DateFormat.yMd('ar-EG');

    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Padding(
        padding: const EdgeInsetsDirectional.only(
          start: 8,
          end: 20,
          bottom: 4,
        ),
        child: LineChart(
          LineChartData(
            minX: 0,
            maxX: (sorted.length - 1).toDouble(),
            minY: 0,
            maxY: maxY * 1.25,
            lineBarsData: [
              LineChartBarData(
                spots: spots,
                isCurved: true,
                curveSmoothness: 0.3,
                preventCurveOverShooting: true,
                gradient: LinearGradient(
                  colors: [
                    chartColorDeep,
                    chartColor,
                    chartColorLight,
                  ],
                  stops: const [0.0, 0.55, 1.0],
                ),
                barWidth: 3,
                isStrokeCapRound: true,
                dotData: const FlDotData(show: false),
                belowBarData: BarAreaData(
                  show: true,
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      chartColor.withValues(alpha: 0.38),
                      chartColor.withValues(alpha: 0.12),
                      chartColor.withValues(alpha: 0),
                    ],
                    stops: const [0.0, 0.5, 1.0],
                  ),
                ),
              ),
            ],
            titlesData: FlTitlesData(
              topTitles: const AxisTitles(),
              leftTitles: const AxisTitles(),
              rightTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 38,
                  interval: yInterval,
                  getTitlesWidget: (value, meta) {
                    if (value == meta.max) return const SizedBox.shrink();

                    return Text(
                      value.toInt().toString(),
                      style: textTheme.bodySmall?.copyWith(
                        color: subtleColor,
                      ),
                      textAlign: TextAlign.center,
                    );
                  },
                ),
              ),
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 30,
                  interval: xLabelsInterval,
                  getTitlesWidget: (value, meta) {
                    final idx = value.toInt();
                    if (idx < 0 || idx >= sorted.length) {
                      return const SizedBox.shrink();
                    }

                    return Padding(
                      padding: const EdgeInsets.only(top: 6),
                      child: Text(
                        xLabelsDateFormat.format(sorted[idx].$1),
                        style: textTheme.bodySmall?.copyWith(
                          color: subtleColor,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            gridData: FlGridData(
              drawVerticalLine: false,
              horizontalInterval: yInterval,
              getDrawingHorizontalLine: (_) => FlLine(
                color: colorScheme.onSurface.withValues(alpha: 0.08),
                strokeWidth: 1,
                dashArray: [3, 5],
              ),
            ),
            borderData: FlBorderData(
              show: true,
              border: Border(
                bottom: BorderSide(color: borderColor),
                right: BorderSide(color: borderColor),
              ),
            ),
            lineTouchData: LineTouchData(
              getTouchedSpotIndicator: (barData, indicators) => indicators
                  .map(
                    (index) => TouchedSpotIndicatorData(
                      FlLine(
                        color: chartColorDeep.withValues(alpha: 0.6),
                        strokeWidth: 1.5,
                        dashArray: [4, 4],
                      ),
                      FlDotData(
                        getDotPainter: (spot, percent, bar, index) =>
                            FlDotCirclePainter(
                              radius: 5,
                              strokeWidth: 2,
                              color: colorScheme.surface,
                              strokeColor: chartColor,
                            ),
                      ),
                    ),
                  )
                  .toList(),
              touchTooltipData: LineTouchTooltipData(
                getTooltipColor: (_) =>
                    colorScheme.surfaceContainer.withValues(alpha: 0.95),
                tooltipBorderRadius: BorderRadius.circular(10),
                tooltipPadding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 8,
                ),
                getTooltipItems: (touchedSpots) => touchedSpots.map((spot) {
                  final point = sorted[spot.x.toInt()];

                  return LineTooltipItem(
                    '${tooltipDateFormat.format(point.$1)}\n',
                    textTheme.bodySmall!.copyWith(
                      color: colorScheme.onSurface.withValues(alpha: 0.6),
                    ),
                    children: [
                      TextSpan(
                        text: point.$2.toString(),
                        style: textTheme.titleMedium!.copyWith(
                          color: chartColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  );
                }).toList(),
              ),
            ),
          ),
        ),
      ),
    );
  }

  final List<(DateTime day, int value)> points;
}
