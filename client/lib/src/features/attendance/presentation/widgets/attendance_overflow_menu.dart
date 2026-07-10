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
        const PopupMenuDivider(),
        PopupMenuItem<void>(
          height: kMinInteractiveDimension / 2,
          enabled: false,
          child: Text(
            'ترتيب حسب',
            style: TextTheme.of(context).labelMedium,
          ),
        ),
        PopupMenuItem<void>(
          onTap: () => onSortChanged(AttendanceSorting.byName()),
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            leading: const Icon(Symbols.person),
            title: const Text('الاسم'),
            trailing: Visibility(
              visible: sorting is AttendanceSortingByName,
              maintainAnimation: true,
              maintainSize: true,
              maintainState: true,
              child: const Icon(Symbols.check),
            ),
          ),
        ),
        PopupMenuItem<void>(
          onTap: () => onSortChanged(AttendanceSorting.byAttendanceTime()),
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            leading: const Icon(Symbols.access_time),
            title: const Text('وقت الحضور'),
            trailing: Visibility(
              visible: sorting is AttendanceSortingByTime,
              maintainAnimation: true,
              maintainSize: true,
              maintainState: true,
              child: const Icon(Symbols.check),
            ),
          ),
        ),
        PopupMenuItem<void>(
          onTap: () => onSortChanged(AttendanceSorting.byAttendanceStreak()),
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            leading: const Icon(Symbols.local_fire_department),
            title: const Text('الحضور المستمر'),
            trailing: Visibility(
              visible: sorting is AttendanceSortingByStreak,
              maintainAnimation: true,
              maintainSize: true,
              maintainState: true,
              child: const Icon(Symbols.check),
            ),
          ),
        ),
        PopupMenuItem<void>(
          onTap: () => onSortChanged(AttendanceSorting.byLastAttendanceTime()),
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            leading: const Icon(Symbols.history),
            title: const Text('آخر وقت حضور'),
            trailing: Visibility(
              visible: sorting is AttendanceSortingByLastAttendanceTime,
              maintainAnimation: true,
              maintainSize: true,
              maintainState: true,
              child: const Icon(Symbols.check),
            ),
          ),
        ),
        const PopupMenuDivider(),
        PopupMenuItem<void>(
          height: kMinInteractiveDimension / 2,
          enabled: false,
          child: Text(
            'فترة المواظبة وتاريخ آخر الحضور',
            style: TextTheme.of(context).labelMedium,
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
        const PopupMenuDivider(),
        PopupMenuItem<void>(
          onTap: openAnalysis,
          child: const ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Icon(Symbols.query_stats),
            title: Text('احصائيات الحضور'),
          ),
        ),
      ],
    );
  }
}
