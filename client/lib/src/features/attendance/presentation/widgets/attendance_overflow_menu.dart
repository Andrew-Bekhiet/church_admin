import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class AttendanceOverflowMenu extends StatelessWidget {
  static const List<int> _streakWindowOptions = [30, 60, 90];

  final VoidCallback openAnalysis;
  final AttendanceSorting sorting;
  final AttendanceGrouping grouping;
  final int streakWindowDays;
  final ValueChanged<AttendanceSorting> onSortChanged;
  final ValueChanged<AttendanceGrouping> onGroupingChanged;
  final ValueChanged<int> onStreakWindowChanged;

  const AttendanceOverflowMenu({
    required this.openAnalysis,
    required this.sorting,
    required this.grouping,
    required this.streakWindowDays,
    required this.onSortChanged,
    required this.onGroupingChanged,
    required this.onStreakWindowChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<void>(
      icon: const Icon(Symbols.more_vert),
      itemBuilder: (context) => [
        PopupMenuItem<void>(
          onTap: () => onSortChanged(sorting.toggleAttendanceTimeSorting()),
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            leading: const Icon(Symbols.access_time),
            title: const Text('ترتيب حسب وقت الحضور'),
            trailing: Visibility(
              visible: sorting.isSortingByTime,
              maintainAnimation: true,
              maintainSize: true,
              maintainState: true,
              child: const Icon(Symbols.check),
            ),
          ),
        ),
        PopupMenuItem<void>(
          onTap: () => onGroupingChanged(grouping.toggled),
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            leading: const Icon(Symbols.school),
            title: const Text('تقسيم حسب السنة الدراسية'),
            trailing: Visibility(
              visible: grouping == AttendanceGrouping.studyYear,
              maintainAnimation: true,
              maintainSize: true,
              maintainState: true,
              child: const Icon(Symbols.check),
            ),
          ),
        ),
        PopupMenuItem<void>(
          onTap: openAnalysis,
          child: const ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Icon(Symbols.query_stats),
            title: Text('تحليل الحضور'),
          ),
        ),
        const PopupMenuDivider(),
        PopupMenuItem<void>(
          enabled: false,
          child: Text(
            'نافذة التحليل',
            style: Theme.of(context).textTheme.labelSmall,
          ),
        ),
        for (final days in _streakWindowOptions)
          PopupMenuItem<void>(
            onTap: () => onStreakWindowChanged(days),
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              leading: const Icon(Symbols.date_range),
              title: Text('$days يوم'),
              trailing: Visibility(
                visible: streakWindowDays == days,
                maintainAnimation: true,
                maintainSize: true,
                maintainState: true,
                child: const Icon(Symbols.check),
              ),
            ),
          ),
      ],
    );
  }
}
