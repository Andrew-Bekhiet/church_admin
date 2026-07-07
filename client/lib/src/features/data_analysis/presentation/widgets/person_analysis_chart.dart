import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

class PersonAnalysisChart extends StatelessWidget {
  final DateTimeRange range;
  final HistoryAggregateData analysisData;
  final ViewableObjectListController<LastRecordedByInfo> Function()
  getHistoryListController;

  final String title;
  final String lastTimeName;
  final Color? color;
  final bool showTime;

  const PersonAnalysisChart({
    required this.title,
    required this.lastTimeName,
    required this.range,
    required this.analysisData,
    required this.getHistoryListController,
    this.color,
    this.showTime = true,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    if (analysisData.aggregate.count == 0) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 10),
          Text(
            title,
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
    final groupedByDay = analysisData.nodes.groupListsBy(
      (n) => DateTime(n.time.year, n.time.month, n.time.day),
    );
    final points = groupedByDay.entries
        .map((e) => (e.key, e.value.length))
        .toList();

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 10),
        Text(
          title,
          style: themeData.textTheme.headlineSmall,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: AttendanceTrendChart(
            points: points,
            color: color ?? colorScheme.secondary,
          ),
        ),
        ListTile(
          title: const Text('الاجمالي'),
          trailing: Text(
            analysisData.aggregate.count.toString(),
            style: themeData.textTheme.bodyMedium,
          ),
        ),
        HistoryProperty(
          name: lastTimeName,
          value: analysisData.aggregate.max?.time,
          getHistoryListController: getHistoryListController,
          showTime: showTime,
        ),
      ],
    );
  }
}
