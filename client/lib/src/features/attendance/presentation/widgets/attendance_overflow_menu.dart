import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    final recordsKodas = context.select<RecordKodasCubit, bool>(
      (cubit) => cubit.state.isVisible,
    );

    return PopupMenuButton<void>(
      borderRadius: BorderRadius.circular(12),
      icon: const Icon(Symbols.more_vert),
      itemBuilder: (context) => [
        PopupMenuItem(
          onTap: () => context.read<RecordKodasCubit>().changeVisibility(
            visible: !recordsKodas,
          ),
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            leading: const KodasChaliceIcon(),
            title: const Text('تسجيل التناول'),
            subtitle: const Text('خانة للتناول بجانب الحضور في هذا اليوم'),
            trailing: Visibility(
              visible: recordsKodas,
              maintainAnimation: true,
              maintainSize: true,
              maintainState: true,
              child: const Icon(Symbols.check),
            ),
          ),
        ),
        PopupMenuItem(
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
        PopupMenuItem(
          height: kMinInteractiveDimension / 2,
          enabled: false,
          child: Text(
            'ترتيب حسب',
            style: TextTheme.of(context).labelMedium,
          ),
        ),
        _SortingMenuItem<AttendanceSortingByName>(
          title: 'الاسم',
          icon: Symbols.person,
          currentSorting: sorting,
          onChanged: onSortChanged,
          value: AttendanceSorting.byName(),
        ),
        _SortingMenuItem<AttendanceSortingByTime>(
          title: 'وقت الحضور',
          icon: Symbols.access_time,
          currentSorting: sorting,
          onChanged: onSortChanged,
          value: AttendanceSorting.byAttendanceTime(),
        ),
        _SortingMenuItem<AttendanceSortingByStreak>(
          title: switch (sorting) {
            AttendanceSortingByStreak(direction: SortingDirection.descending) =>
              'الحضور المستمر',
            _ => 'الغياب المستمر',
          },
          icon: switch (sorting) {
            AttendanceSortingByStreak(direction: SortingDirection.descending) =>
              Symbols.local_fire_department,
            _ => Symbols.error,
          },
          currentSorting: sorting,
          onChanged: onSortChanged,
          value: AttendanceSorting.byAttendanceStreak(),
        ),
        _SortingMenuItem<AttendanceSortingByLastAttendanceTime>(
          title: 'آخر وقت حضور',
          icon: Symbols.history,
          currentSorting: sorting,
          onChanged: onSortChanged,
          value: AttendanceSorting.byLastAttendanceTime(),
        ),
        const PopupMenuDivider(),
        PopupMenuItem(
          height: kMinInteractiveDimension / 2,
          enabled: false,
          child: Text(
            'فترة المواظبة وتاريخ آخر الحضور',
            style: TextTheme.of(context).labelMedium,
          ),
        ),
        for (final days in _streakWindowOptions)
          PopupMenuItem(
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
        PopupMenuItem(
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

class _SortingMenuItem<T extends AttendanceSorting>
    extends PopupMenuItem<AttendanceSorting> {
  final String title;
  final IconData icon;
  final ValueChanged<AttendanceSorting> onChanged;
  final AttendanceSorting currentSorting;

  _SortingMenuItem({
    required this.title,
    required this.icon,
    required this.currentSorting,
    required this.onChanged,
    required AttendanceSorting super.value,
    super.key,
  }) : super(
         onTap: () => currentSorting is T
             ? onChanged(currentSorting.withReversedDirection())
             : onChanged(value),
         child: ListTile(
           contentPadding: EdgeInsets.zero,
           leading: Icon(icon),
           title: Text(title),
           trailing: Visibility(
             visible: currentSorting is T,
             maintainAnimation: true,
             maintainSize: true,
             maintainState: true,
             child: AnimatedRotation(
               duration: Durations.medium1,
               turns: currentSorting.direction == SortingDirection.ascending
                   ? 0
                   : 0.5,
               child: const Icon(Symbols.arrow_upward_rounded),
             ),
           ),
         ),
       );
}
