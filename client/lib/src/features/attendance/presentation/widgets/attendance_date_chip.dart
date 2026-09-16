import 'dart:math' as math;

import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class AttendanceDateChip extends StatelessWidget {
  final DateTime date;
  final ValueChanged<DateTime> onDateSelected;
  final Set<DateTime> recordedDays;
  final Color? indicatorColor;

  const AttendanceDateChip({
    required this.date,
    required this.onDateSelected,
    this.recordedDays = const {},
    this.indicatorColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    return FilledButton.icon(
      onPressed: () => _pickDate(context),
      icon: const Icon(Symbols.calendar_month, size: 16),
      label: Text(DateFormat.yMEd('ar').format(date)),
      style: FilledButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
        side: const BorderSide(),
        backgroundColor: colorScheme.surfaceContainerLow,
        foregroundColor: colorScheme.onSurface,
        textStyle: textTheme.labelMedium,
        visualDensity: VisualDensity.compact,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
    );
  }

  Future<void> _pickDate(BuildContext context) async {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final effectiveIndicatorColor = indicatorColor ?? colorScheme.primary;

    final picked = await showCalendarDatePicker2Dialog(
      context: context,
      dialogSize: Size(
        math.min(MediaQuery.sizeOf(context).width - 32, 360),
        400,
      ),
      borderRadius: BorderRadius.circular(16),
      value: [date],
      config: CalendarDatePicker2WithActionButtonsConfig(
        calendarType: CalendarDatePicker2Type.single,
        firstDate: DateTime(2019),
        lastDate: DateTime.now().add(const Duration(days: 365)),
        currentDate: DateTime.now(),
        selectedDayHighlightColor: colorScheme.primary,
        dayBuilder:
            ({
              required date,
              decoration,
              isDisabled,
              isSelected,
              isToday,
              textStyle,
            }) {
              final dayOnly = DateUtils.dateOnly(date);
              final hasRecord = recordedDays.contains(dayOnly);
              final selected = isSelected ?? false;

              return AttendanceDateSelectorDayCell(
                date: date,
                hasRecord: hasRecord,
                isSelected: selected,
                indicatorColor: selected
                    ? colorScheme.onPrimary
                    : effectiveIndicatorColor,
                textStyle: textStyle,
                decoration: decoration,
              );
            },
      ),
    );

    if (picked != null && picked.isNotEmpty && picked.first != null) {
      onDateSelected(picked.first!);
    }
  }
}
