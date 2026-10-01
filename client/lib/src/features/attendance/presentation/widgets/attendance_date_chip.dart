import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:church_admin/church_admin.dart';
import 'package:clock/clock.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class AttendanceDateChip extends StatelessWidget {
  final Clock? clock;
  final DateTime date;
  final ValueChanged<DateTime> onDateSelected;
  final Set<DateTime> recordedDays;
  final Color? indicatorColor;

  const AttendanceDateChip({
    required this.date,
    required this.onDateSelected,
    this.recordedDays = const {},
    this.indicatorColor,
    this.clock,
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
    final now = clock?.now() ?? DateTime.now();
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;
    final effectiveIndicatorColor = indicatorColor ?? colorScheme.primary;

    final result = await showCalendarDatePicker2Dialog(
      context: context,
      value: [date],
      dialogSize: Size(MediaQuery.widthOf(context) - 16, 410),
      config: CalendarDatePicker2WithActionButtonsConfig(
        calendarType: CalendarDatePicker2Type.single,
        firstDate: now.subtract(const Duration(days: 365 * 10)),
        lastDate: now,
        currentDate: now,
        selectedDayHighlightColor: colorScheme.primary,
        controlsHeight: 44,
        controlsTextStyle: textTheme.titleMedium?.copyWith(
          fontWeight: FontWeight.bold,
          color: colorScheme.onSurface,
        ),
        weekdayLabelTextStyle: textTheme.bodyMedium?.copyWith(
          color: colorScheme.onSurfaceVariant,
          fontWeight: FontWeight.w600,
        ),
        dayTextStyle: textTheme.bodyLarge?.copyWith(
          color: colorScheme.onSurface,
          fontWeight: FontWeight.w500,
        ),
        selectedDayTextStyle: textTheme.bodyLarge?.copyWith(
          color: colorScheme.onPrimary,
          fontWeight: FontWeight.bold,
        ),
        todayTextStyle: textTheme.bodyLarge?.copyWith(
          color: colorScheme.primary,
          fontWeight: FontWeight.bold,
        ),
        disabledDayTextStyle: textTheme.bodyLarge?.copyWith(
          color: colorScheme.onSurface.withValues(alpha: 0.38),
        ),
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
              if (!recordedDays.contains(dayOnly)) return null;

              return CalendarDayWithIndicatorWidget(
                date: dayOnly,
                isSelected: isSelected ?? false,
                indicatorColor: isSelected ?? false
                    ? colorScheme.onPrimary
                    : effectiveIndicatorColor,
                textStyle: textStyle,
                decoration: decoration,
              );
            },
      ),
    );

    final picked = result?.singleOrNull;

    if (picked != null) onDateSelected(picked);
  }
}
