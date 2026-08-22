import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimeField extends StatelessWidget {
  final String label;
  final DateTime? initialValue;
  final bool nullable;
  final DateFormat dateFormat;
  final bool withTime;
  final AutovalidateMode? autovalidateMode;
  final FocusNode? focusNode;
  final InputDecoration? decoration;

  DateTimeField({
    required this.label,
    this.nullable = false,
    this.withTime = true,
    this.initialValue,
    DateFormat? dateFormat,
    this.onChanged,
    this.onSaved,
    this.validator,
    this.autovalidateMode,
    this.focusNode,
    this.decoration,
    super.key,
  }) : dateFormat =
           dateFormat ?? DateFormat(withTime ? 'yyyy/M/d h:m a' : 'yyyy/M/d');

  @override
  Widget build(BuildContext context) {
    return TappableFormField<DateTime?>(
      labelText: label,
      initialValue: initialValue,
      focusNode: focusNode,
      autovalidateMode: autovalidateMode,
      onSaved: onSaved,
      onTap: (state) async {
        final focusScope = FocusScope.of(context);

        final newValue =
            await _selectDateTime(
              context,
              state.value ?? DateTime.now(),
            ) ??
            state.value;

        if (newValue != null && newValue != state.value) {
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
            ? Text(dateFormat.format(state.value!))
            : null;
      },
      validator:
          validator ??
          (v) => v == null && !nullable ? 'برجاء ادخال $label' : null,
    );
  }

  final void Function(DateTime?)? onChanged;
  final void Function(DateTime?)? onSaved;
  final String? Function(DateTime?)? validator;

  Future<DateTime?> _selectDateTime(
    BuildContext context,
    DateTime initialDateTime,
  ) async {
    DateTime? resultDateTime;

    final pickedDate = await showDatePicker(
      helpText: label,
      locale: const Locale('ar', 'EG'),
      context: context,
      initialDate: initialDateTime,
      firstDate: DateTime(1500),
      lastDate: DateTime.now(),
    );

    if (pickedDate != null && withTime) {
      final pickedTime = context.mounted
          ? await _selectTime(
              context,
              TimeOfDay.fromDateTime(initialDateTime),
            )
          : null;

      if (pickedTime != null) {
        resultDateTime = DateTime(
          pickedDate.year,
          pickedDate.month,
          pickedDate.day,
          pickedTime.hour,
          pickedTime.minute,
        );
      }
    } else {
      resultDateTime = pickedDate;
    }

    if (resultDateTime != null && resultDateTime != initialDateTime) {
      return resultDateTime;
    }

    return null;
  }

  Future<TimeOfDay?> _selectTime(
    BuildContext context,
    TimeOfDay initialTime,
  ) {
    return showTimePicker(
      helpText: label,
      context: context,
      initialTime: initialTime,
    );
  }
}
