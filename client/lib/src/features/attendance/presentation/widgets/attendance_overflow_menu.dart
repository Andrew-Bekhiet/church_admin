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
        CheckedPopupMenuItem<void>(
          checked: sorting == AttendanceSorting.byAttendanceTime,
          onTap: () => onSortChanged(
            sorting == AttendanceSorting.byAttendanceTime
                ? AttendanceSorting.byName
                : AttendanceSorting.byAttendanceTime,
          ),
          child: const Text('ترتيب حسب وقت الحضور'),
        ),
        CheckedPopupMenuItem<void>(
          checked: grouping == AttendanceGrouping.studyYear,
          onTap: () => onGroupingChanged(
            grouping == AttendanceGrouping.studyYear
                ? AttendanceGrouping.none
                : AttendanceGrouping.studyYear,
          ),
          child: const Text('تقسيم حسب السنة الدراسية'),
        ),
      ],
    );
  }
}
