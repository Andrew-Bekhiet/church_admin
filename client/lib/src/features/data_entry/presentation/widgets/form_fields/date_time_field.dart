import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class DateTimeField extends StatelessWidget {
  final String label;
  final DateTime? initialValue;
  final bool nullable;
  final DateFormat dateFormat;
  final bool withTime;

  final void Function(DateTime?)? onChanged;
  final void Function(DateTime?)? onSaved;
  final String? Function(DateTime?)? validator;
  final AutovalidateMode? autovalidateMode;
  final FocusNode? focusNode;
  final InputDecoration? decoration;

  DateTimeField({
    required this.label,
    this.initialValue,
    this.nullable = false,
    DateFormat? dateFormat,
    this.onChanged,
    this.onSaved,
    this.validator,
    this.autovalidateMode,
    this.focusNode,
    this.decoration,
    this.withTime = true,
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

        final newValue = await _selectDateTime(
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
      decoration: (context, state) {
        final inputDecoration = InputDecoration(
          labelText: label,
          errorText: state.errorText,
          suffixIcon: nullable && state.value != null
              ? IconButton(
                  icon: const Icon(Symbols.delete),
                  tooltip: 'حذف التاريخ',
                  onPressed: () {
                    state.didChange(null);
                    onChanged?.call(null);
                  },
                )
              : null,
        );

        return decoration?.copyWith(
              errorText: inputDecoration.errorText,
              suffixIcon: inputDecoration.suffixIcon,
            ) ??
            inputDecoration;
      },
      builder: (context, state) {
        return state.value != null
            ? Text(dateFormat.format(state.value!))
            : null;
      },
      validator: validator ??
          (v) => v == null && !nullable ? 'برجاء ادخال ' + label : null,
    );
  }

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
