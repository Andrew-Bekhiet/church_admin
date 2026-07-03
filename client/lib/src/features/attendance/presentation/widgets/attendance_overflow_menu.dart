import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

/// Overflow menu holding the less-frequent view options: sorting by attendance
/// time and grouping by study year.
class AttendanceOverflowMenu extends StatelessWidget {
  final AttendanceSorting sorting;
  final AttendanceGrouping grouping;
  final ValueChanged<AttendanceSorting> onSortChanged;
  final ValueChanged<AttendanceGrouping> onGroupingChanged;

  const AttendanceOverflowMenu({
    required this.sorting,
    required this.grouping,
    required this.onSortChanged,
    required this.onGroupingChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<void>(
      icon: const Icon(Symbols.more_vert),
      itemBuilder: (context) => [
        PopupMenuItem<void>(
          child: ListTile(
            onTap: () => onSortChanged(sorting.toggleAttendanceTimeSorting()),
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
      ],
    );
  }
}
