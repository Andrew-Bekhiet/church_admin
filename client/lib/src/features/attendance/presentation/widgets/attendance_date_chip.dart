import 'package:church_admin/src/features/attendance/presentation/widgets/attendance_date_picker_dialog.dart';
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
    final picked = await AttendanceDatePickerDialog.show(
      context: context,
      initialDate: date,
      firstDate: DateTime(2019),
      lastDate: DateTime.now().add(const Duration(days: 365)),
      recordedDays: recordedDays,
      indicatorColor: indicatorColor,
    );

    if (picked != null) onDateSelected(picked);
  }
}
