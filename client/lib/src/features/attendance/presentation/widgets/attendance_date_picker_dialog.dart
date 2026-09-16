import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:church_admin/src/features/attendance/presentation/widgets/attendance_date_selector_day_cell.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AttendanceDatePickerDialog extends StatefulWidget {
  final DateTime initialDate;
  final DateTime firstDate;
  final DateTime lastDate;
  final Set<DateTime> recordedDays;
  final Color? indicatorColor;

  static Future<DateTime?> show({
    required BuildContext context,
    required DateTime initialDate,
    required DateTime firstDate,
    required DateTime lastDate,
    Set<DateTime> recordedDays = const {},
    Color? indicatorColor,
  }) {
    return showDialog<DateTime>(
      context: context,
      builder: (context) => AttendanceDatePickerDialog(
        initialDate: initialDate,
        firstDate: firstDate,
        lastDate: lastDate,
        recordedDays: recordedDays,
        indicatorColor: indicatorColor,
      ),
    );
  }

  const AttendanceDatePickerDialog({
    required this.initialDate,
    required this.firstDate,
    required this.lastDate,
    this.recordedDays = const {},
    this.indicatorColor,
    super.key,
  });

  @override
  State<AttendanceDatePickerDialog> createState() =>
      _AttendanceDatePickerDialogState();
}

class _AttendanceDatePickerDialogState
    extends State<AttendanceDatePickerDialog> {
  late DateTime _selectedDate;

  @override
  void initState() {
    super.initState();
    _selectedDate = widget.initialDate;
  }

  @override
  void didUpdateWidget(AttendanceDatePickerDialog oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.initialDate != widget.initialDate) {
      _selectedDate = widget.initialDate;
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;
    final localizations = MaterialLocalizations.of(context);
    final effectiveIndicatorColor =
        widget.indicatorColor ?? colorScheme.primary;

    final headerDateText = DateFormat(
      'EEEE، d MMMM',
      'ar',
    ).format(_selectedDate);

    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(28),
      ),
      backgroundColor: colorScheme.surfaceContainerHigh,
      insetPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      clipBehavior: Clip.antiAlias,
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 360,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20, 12, 20, 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 4,
                  children: [
                    Text(
                      localizations.datePickerHelpText,
                      style: textTheme.labelMedium?.copyWith(
                        color: colorScheme.onSurfaceVariant,
                      ),
                    ),
                    Text(
                      headerDateText,
                      style: textTheme.headlineMedium?.copyWith(
                        color: colorScheme.onSurface,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(height: 1),
              CalendarDatePicker2(
                config: CalendarDatePicker2Config(
                  calendarType: CalendarDatePicker2Type.single,
                  firstDate: widget.firstDate,
                  lastDate: widget.lastDate,
                  currentDate: DateTime.now(),
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
                        if (!widget.recordedDays.contains(dayOnly)) return null;

                        final selected = isSelected ?? false;

                        return AttendanceDateSelectorDayCell(
                          date: date,
                          isSelected: selected,
                          indicatorColor: selected
                              ? colorScheme.onPrimary
                              : effectiveIndicatorColor,
                          textStyle: textStyle,
                          decoration: decoration,
                        );
                      },
                ),
                value: [_selectedDate],
                onValueChanged: (dates) {
                  if (dates case [final date, ...]) {
                    setState(() {
                      _selectedDate = date;
                    });
                  }
                },
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  spacing: 8,
                  children: [
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: Text(localizations.cancelButtonLabel),
                    ),
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(_selectedDate),
                      child: Text(localizations.okButtonLabel),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
