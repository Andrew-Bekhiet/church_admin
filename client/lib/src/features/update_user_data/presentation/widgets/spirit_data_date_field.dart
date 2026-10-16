import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class SpiritDataDateField extends StatelessWidget {
  static const int _earliestSelectableYear = 1900;

  final String label;
  final DateTime? initialValue;
  final void Function(DateTime?) onSaved;

  const SpiritDataDateField({
    required this.label,
    required this.initialValue,
    required this.onSaved,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TappableFormField<DateTime?>(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: (context, state) => InputDecoration(
        errorText: state.errorText,
        labelText: label,
        suffixIcon: state.isValid
            ? const Icon(Symbols.done, color: Colors.green)
            : const Icon(Symbols.close, color: Colors.red),
      ),
      initialValue: initialValue,
      onTap: (state) async {
        final picked = await _maybePickDate(
          context,
          state.value ?? DateTime.now(),
        );
        if (picked != null) {
          state.didChange(picked);
        }
      },
      builder: (context, state) => switch (state.value) {
        final value? => Text(DateFormat('yyyy/M/d').format(value)),
        null => null,
      },
      onSaved: onSaved,
      validator: (value) => value == null
          ? 'برجاء اختيار $label'
          : value.isBefore(DateTime.now().subtract(Person.maxSpiritDataAge))
          ? 'يجب أن يكون التاريخ منذ شهرين على الأكثر'
          : null,
    );
  }

  Future<DateTime?> _maybePickDate(
    BuildContext context,
    DateTime initialDate,
  ) async {
    final picked = await showDatePicker(
      helpText: label,
      locale: const Locale('ar', 'EG'),
      context: context,
      initialDate: initialDate,
      firstDate: DateTime(_earliestSelectableYear),
      lastDate: DateTime.now(),
    );

    return picked == initialDate ? null : picked;
  }
}
