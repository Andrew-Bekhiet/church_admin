import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

/// Chip showing the active attendance day; tapping it opens a date picker.
class AttendanceDateChip extends StatelessWidget {
  final DateTime date;
  final ValueChanged<DateTime> onDateSelected;

  const AttendanceDateChip({
    required this.date,
    required this.onDateSelected,
    super.key,
  });

  Future<void> _pickDate(BuildContext context) async {
    final picked = await showDatePicker(
      context: context,
      initialDate: date,
      firstDate: DateTime(2019),
      lastDate: DateTime.now().add(const Duration(days: 365)),
    );
    if (picked != null) onDateSelected(picked);
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return FilledButton.icon(
      onPressed: () => _pickDate(context),
      icon: const Icon(Symbols.calendar_month, size: 16),
      label: Text(DateFormat.yMMMEd('ar').format(date)),
      style: FilledButton.styleFrom(
        backgroundColor: colorScheme.primaryContainer,
        foregroundColor: colorScheme.onPrimaryContainer,
        textStyle: textTheme.labelMedium,
        visualDensity: VisualDensity.compact,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        // start=4 aligns the calendar icon with the meeting title text edge
        padding: const EdgeInsetsDirectional.fromSTEB(4, 0, 12, 0),
      ),
    );
  }
}
