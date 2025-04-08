import 'dart:math';

import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tinycolor2/tinycolor2.dart';

class PersonAnalysisChart extends StatefulWidget {
  final DateTimeRange range;
  final HistoryAggregateData analysisData;
  final PaginatableStreamBase<LastRecordedByInfo> Function() getHistoryStream;

  final String title;
  final String lastTimeName;
  final Color? color;
  final bool showTime;

  const PersonAnalysisChart({
    required this.title,
    required this.lastTimeName,
    required this.range,
    required this.analysisData,
    required this.getHistoryStream,
    this.color,
    this.showTime = true,
    super.key,
  });

  @override
  State<PersonAnalysisChart> createState() => _PersonAnalysisChartState();
}

class _PersonAnalysisChartState extends State<PersonAnalysisChart> {
  late final groupedAnalysisData = widget.analysisData.nodes
      .groupListsBy((d) => DateTime(d.time.year, d.time.month, d.time.day));

  late final vAvgDiff = groupedAnalysisData.values.map((e) => e.length).average;

  final Set<ShowingTooltipIndicators> selectedSpots = EqualitySet(
    EqualityBy(
      (o) => o.showingSpots.map((e) => (e.x, e.y, e.spotIndex)),
      const DeepCollectionEquality.unordered(),
    ),
  );

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    if (widget.analysisData.aggregate.count == 0) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 10),
          Text(
            widget.title,
            style: themeData.textTheme.headlineSmall,
          ),
          const SizedBox(height: 10),
          Text(
            'لا يوجد سجل',
            style: themeData.textTheme.titleMedium,
          ),
        ],
      );
    }

    final colorScheme = themeData.colorScheme;
    final chartColor = widget.color ?? colorScheme.secondary;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 10),
        Text(
          widget.title,
          style: themeData.textTheme.headlineSmall,
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.4,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
            child: LineChart(
              LineChartData(
                lineTouchData: LineTouchData(
                  touchCallback: (event, lineTouch) {
                    if (event is FlTapDownEvent &&
                        lineTouch?.lineBarSpots != null &&
                        lineTouch!.lineBarSpots!.isNotEmpty) {
                      if (selectedSpots.contains(
                        ShowingTooltipIndicators(lineTouch.lineBarSpots!),
                      )) {
                        selectedSpots.remove(
                          ShowingTooltipIndicators(lineTouch.lineBarSpots!),
                        );
                      } else {
                        selectedSpots.add(
                          ShowingTooltipIndicators(lineTouch.lineBarSpots!),
                        );
                      }

                      setState(() {});
                    }
                  },
                  handleBuiltInTouches: false,
                  touchTooltipData: LineTouchTooltipData(
                    tooltipMargin: 10,
                    tooltipRoundedRadius: 20,
                    tooltipBorder: BorderSide(
                      color: colorScheme.outline,
                    ),
                    getTooltipColor: (t) => colorScheme.surface,
                    getTooltipItems: (o) => o
                        .map(
                          (e) => LineTooltipItem(
                            '${DateFormat('M/d', 'ar_EG').format(
                              groupedAnalysisData.keys.first.add(
                                Duration(days: e.x.toInt()),
                              ),
                            )}\n',
                            themeData.textTheme.bodySmall!
                                .copyWith(color: colorScheme.onSurface),
                            children: [
                              TextSpan(
                                locale: const Locale('ar', 'EG'),
                                text: e.y.toStringAsFixed(0),
                              ),
                            ],
                          ),
                        )
                        .toList(),
                  ),
                ),
                maxY: groupedAnalysisData[groupedAnalysisData.maxOrNull!]!
                        .length
                        .toDouble() +
                    (groupedAnalysisData[groupedAnalysisData.maxOrNull!]!
                                .length *
                            0.4)
                        .ceil(),
                minY: 0,
                gridData: FlGridData(
                  getDrawingHorizontalLine: (_) => FlLine(
                    color: themeData.colorScheme.primary
                        .desaturate(50)
                        .withValues(alpha: 0.15),
                    strokeWidth: 1,
                  ),
                  getDrawingVerticalLine: (_) => FlLine(
                    color: themeData.colorScheme.primary
                        .desaturate(50)
                        .withValues(alpha: 0.15),
                    strokeWidth: 1,
                  ),
                  // verticalInterval: groupedAnalysisData.length / 4,
                  // horizontalInterval: groupedAnalysisData.length / 4,
                ),
                showingTooltipIndicators: selectedSpots.toList(),
                titlesData: FlTitlesData(
                  rightTitles: const AxisTitles(),
                  topTitles: const AxisTitles(),
                  leftTitles: const AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 30,
                    ),
                  ),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 30,
                      getTitlesWidget: (day, _) => Transform.translate(
                        offset: const Offset(0, 20),
                        child: Transform.rotate(
                          angle: pi / 2,
                          child: Text(
                            DateFormat('M/d', 'ar_EG').format(
                              groupedAnalysisData.keys.first.add(
                                Duration(days: day.toInt()),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                lineBarsData: [
                  LineChartBarData(
                    dotData: FlDotData(
                      getDotPainter: (p0, p1, p2, p3) => FlDotCirclePainter(
                        color: p2.color!,
                        radius: 3,
                      ),
                    ),
                    spots: groupedAnalysisData.entries
                        .map(
                          (e) => FlSpot(
                            groupedAnalysisData.keys.first
                                .difference(e.key)
                                .inDays
                                .toDouble()
                                .abs(),
                            e.value.length.toDouble(),
                          ),
                        )
                        .toList(),
                    isStrokeCapRound: true,
                    isStrokeJoinRound: true,
                    belowBarData: BarAreaData(
                      show: true,
                      color: chartColor.withValues(alpha: 0.3),
                    ),
                    color: chartColor,
                  ),
                ],
              ),
            ),
          ),
        ),
        ListTile(
          title: const Text('الاجمالي'),
          trailing: Text(
            widget.analysisData.aggregate.count.toString(),
            style: themeData.textTheme.bodyMedium!.copyWith(
              color: themeData.brightness == Brightness.light
                  ? colorScheme.onSecondary
                  : colorScheme.onPrimary,
            ),
          ),
        ),
        HistoryProperty(
          name: widget.lastTimeName,
          value: widget.analysisData.aggregate.max?.time,
          getHistoryStream: widget.getHistoryStream,
          showTime: widget.showTime,
        ),
      ],
    );
  }
}
