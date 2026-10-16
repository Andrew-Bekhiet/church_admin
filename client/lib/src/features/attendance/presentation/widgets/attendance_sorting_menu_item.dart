import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class AttendanceSortingMenuItem<T extends AttendanceSorting>
    extends PopupMenuItem<AttendanceSorting> {
  final String title;
  final IconData icon;
  final ValueChanged<AttendanceSorting> onChanged;
  final AttendanceSorting currentSorting;

  AttendanceSortingMenuItem({
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
