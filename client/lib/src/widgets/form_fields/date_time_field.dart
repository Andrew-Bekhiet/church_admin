import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimeField extends StatelessWidget {
  final String label;
  final DateTime? initialValue;
  final bool nullable;
  final DateFormat dateFormat;

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
    super.key,
  }) : dateFormat = dateFormat ?? DateFormat('yyyy/M/d');

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

        final newValue = await _selectDate(
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
                  icon: const Icon(Icons.delete),
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

  Future<DateTime?> _selectDate(
    BuildContext context,
    DateTime initialDate,
  ) async {
    final picked = await showDatePicker(
      helpText: label,
      locale: const Locale('ar', 'EG'),
      context: context,
      initialDate: initialDate,
      firstDate: DateTime(1500),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != initialDate) {
      return picked;
    }
    return null;
  }
}
