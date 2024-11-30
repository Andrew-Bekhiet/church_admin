import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:table_calendar/table_calendar.dart';

class PersonAttendanceIndicator extends StatelessWidget {
  final DateTimeRange range;
  final HistoryAggregateData analysisData;
  final HistoryAggregateData totalAnalysisData;
  final DelegatingPaginatableStream<LastRecordedByInfo> Function()
      getHistoryStream;

  final String name;
  final Color? color;
  final bool showTime;

  PersonAttendanceIndicator({
    required this.name,
    required this.range,
    required this.analysisData,
    required this.totalAnalysisData,
    required this.getHistoryStream,
    this.color,
    this.showTime = true,
    super.key,
  });

  late final _analysisDataNodesSet = EqualitySet<DateTime>.from(
    EqualityBy(
      (d) => DateTime(d.year, d.month, d.day),
    ),
    analysisData.nodes.map((n) => n.time),
  );
  late final _totalAnalysisDataNodesSet = EqualitySet<DateTime>.from(
    EqualityBy(
      (d) => DateTime(d.year, d.month, d.day),
    ),
    totalAnalysisData.nodes.map((n) => n.time),
  );

  final ValueNotifier<CalendarFormat> _calendarFormat =
      ValueNotifier(CalendarFormat.week);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);

    final totalAnalysisCount = totalAnalysisData.aggregate.count ?? 0;

    if (totalAnalysisCount == 0) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 10),
          Text(
            'نسبة الحضور في ' + name,
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

    final primaryColor = colorScheme.primary;
    final errorColor = colorScheme.error;
    final bodyText2 = themeData.textTheme.bodyMedium!;

    final analysisCount = analysisData.aggregate.count!;
    final percent = analysisCount / totalAnalysisCount;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 10),
        Text(
          'نسبة الحضور في ' + name,
          style: themeData.textTheme.headlineSmall,
        ),
        ValueListenableBuilder<CalendarFormat>(
          valueListenable: _calendarFormat,
          builder: (context, current, _) {
            return SizedBox(
              height: current == CalendarFormat.week
                  ? MediaQuery.of(context).size.height * 0.3
                  : MediaQuery.of(context).size.height * 0.6,
              child: PageView(
                onPageChanged: (i) =>
                    i == 0 ? _calendarFormat.value = CalendarFormat.week : null,
                children: [
                  Center(
                    child: CircularPercentIndicator(
                      radius: 90,
                      lineWidth: 12,
                      backgroundColor: Colors.grey.withOpacity(0.2),
                      circularStrokeCap: CircularStrokeCap.round,
                      animation: true,
                      animateFromLastPercent: true,
                      center: Text(
                        (percent * 100)
                                .toStringAsFixed(1)
                                .replaceAll('.0', '') +
                            '%',
                      ),
                      percent: percent,
                      progressColor: color ?? primaryColor,
                    ),
                  ),
                  SingleChildScrollView(
                    child: TableCalendar(
                      locale: 'ar_EG',
                      calendarFormat: current,
                      onFormatChanged: (v) => _calendarFormat.value = v,
                      firstDay: range.start,
                      lastDay: range.end,
                      focusedDay: DateTime.now(),
                      enabledDayPredicate: _totalAnalysisDataNodesSet.contains,
                      selectedDayPredicate: _analysisDataNodesSet.contains,
                      availableCalendarFormats: {
                        CalendarFormat.month: 'شهر',
                        CalendarFormat.week: 'أسبوع',
                        CalendarFormat.twoWeeks: 'أسبوعين',
                        // Hacky way to ignore avoid-missing-enum-constant-in-map
                      }..remove(CalendarFormat.twoWeeks),
                      calendarBuilders: CalendarBuilders(
                        disabledBuilder: (context, day, focusedDay) =>
                            Container(
                          margin: const EdgeInsets.all(4),
                          alignment: Alignment.center,
                          decoration:
                              const BoxDecoration(shape: BoxShape.circle),
                          child: Text(
                            day.day.toString(),
                            style: themeData.textTheme.bodyMedium!.copyWith(
                              color: themeData.disabledColor,
                            ),
                          ),
                        ),
                        defaultBuilder: (context, day, focusedDay) => Container(
                          margin: const EdgeInsets.all(4),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: !_analysisDataNodesSet.contains(day)
                                ? Border.all(
                                    color: errorColor,
                                  )
                                : null,
                            color: _analysisDataNodesSet.contains(day)
                                ? primaryColor
                                : null,
                            shape: BoxShape.circle,
                          ),
                          child: Text(day.day.toString()),
                        ),
                      ),
                      //TODO: implement day view page
                      onDaySelected: (selected, _) =>
                          debugPrint(selected.toIso8601String()),
                      weekendDays: const [
                        DateTime.friday,
                        DateTime.saturday,
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
        ListTile(
          title: const Text('اجمالي عدد أيام الحضور'),
          trailing: Text(
            analysisCount.toString(),
            style: bodyText2.copyWith(color: primaryColor),
          ),
        ),
        ListTile(
          title: const Text('اجمالي عدد أيام الغياب'),
          trailing: Text(
            (totalAnalysisCount - analysisCount).toString(),
            style: bodyText2.copyWith(color: errorColor),
          ),
        ),
        ListTile(
          title: const Text('الاجمالي'),
          trailing: Text(
            totalAnalysisData.aggregate.count.toString(),
            style: bodyText2.copyWith(
              color: themeData.brightness == Brightness.light
                  ? colorScheme.onSecondary
                  : colorScheme.onPrimary,
            ),
          ),
        ),
        HistoryProperty(
          name: 'أخر حضور ' + name,
          value: analysisData.aggregate.max?.time,
          getHistoryStream: getHistoryStream,
          showTime: showTime,
        ),
      ],
    );
  }
}
