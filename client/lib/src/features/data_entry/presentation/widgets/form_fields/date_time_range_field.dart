import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimeRangeField extends StatelessWidget {
  final String label;
  final DateTimeRange? initialValue;
  final bool nullable;
  final DateFormat dateFormat;
  final DateTime? startFirstDate;
  final AutovalidateMode? autovalidateMode;
  final FocusNode? focusNode;
  final InputDecoration? decoration;

  DateTimeRangeField({
    required this.label,
    this.nullable = false,
    this.startFirstDate,
    this.initialValue,
    DateFormat? dateFormat,
    this.onChanged,
    this.onSaved,
    this.validator,
    this.autovalidateMode,
    this.focusNode,
    this.decoration,
    super.key,
  }) : dateFormat = dateFormat ?? DateFormat('yyyy/M/d');

  @override
  Widget build(BuildContext context) {
    return TappableFormField<DateTimeRange?>(
      labelText: label,
      initialValue: initialValue,
      focusNode: focusNode,
      autovalidateMode: autovalidateMode,
      onSaved: onSaved,
      onTap: (state) async {
        final focusScope = FocusScope.of(context);

        final rslt = await showCalendarDatePicker2Dialog(
          context: context,
          dialogSize: Size(
            MediaQuery.widthOf(context) - 16,
            410,
          ),
          config: CalendarDatePicker2WithActionButtonsConfig(
            calendarType: CalendarDatePicker2Type.range,
            firstDate: startFirstDate ?? DateTime(2000),
            lastDate: DateTime.now(),
          ),
          value: [state.value?.start, state.value?.end],
        );
        if (rslt == null) return;

        final selectedDates = rslt.nonNulls.toList();
        if (selectedDates.length < 2) return;

        final newValue = DateTimeRange(
          start: selectedDates.min,
          end: selectedDates.max,
        );

        if (newValue != state.value) {
          state.didChange(newValue);
          onChanged?.call(newValue);
          if (nullable) focusScope.nextFocus();
        }
      },
      decoration: (context, state) => ClearableDateFieldDecoration.build(
        label: label,
        nullable: nullable,
        decoration: decoration,
        state: state,
        onChanged: onChanged,
      ),
      builder: (context, state) {
        return state.value != null
            ? Row(
                children: [
                  const Text('من'),
                  Expanded(
                    child: Text(
                      dateFormat.format(state.value!.start),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(width: 8),
                  const Text('إلى'),
                  Expanded(
                    child: Text(
                      dateFormat.format(state.value!.end),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              )
            : null;
      },
      validator:
          validator ??
          (v) => v == null && !nullable ? 'برجاء ادخال $label' : null,
    );
  }

  final void Function(DateTimeRange?)? onChanged;
  final void Function(DateTimeRange?)? onSaved;
  final String? Function(DateTimeRange?)? validator;
}
