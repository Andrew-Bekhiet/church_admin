import 'package:advanced_forms/advanced_forms.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class AdvancedDateField<E extends Object> extends StatelessWidget {
  static final DateFormat _dateFormat = DateFormat('yyyy/M/d');

  final AdvancedFieldController<DateTime?, E> field;
  final String label;
  final ErrorTranslator<E> translateError;
  final bool clearable;

  const AdvancedDateField({
    required this.field,
    required this.label,
    required this.translateError,
    this.clearable = true,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AdvancedFieldBuilder<DateTime?, E>(
      field: field,
      builder: (context, state, _) {
        final date = state.value;
        final error = state.error;

        return TappableInputField<DateTime?>(
          value: date,
          isEmpty: date == null,
          focusNode: field.focusNode,
          decoration: InputDecoration(
            labelText: label,
            errorText: error == null ? null : translateError(error),
            suffixIcon: clearable && date != null && !state.readOnly
                ? IconButton(
                    tooltip: 'حذف التاريخ',
                    onPressed: () => field.setValue(null),
                    icon: const Icon(Symbols.delete),
                  )
                : null,
          ),
          onTap: state.readOnly ? null : () => _pickDate(context),
          child: date == null ? null : Text(_dateFormat.format(date)),
        );
      },
    );
  }

  Future<void> _pickDate(BuildContext context) async {
    final picked = await showDatePicker(
      helpText: label,
      locale: const Locale('ar', 'EG'),
      context: context,
      initialDate: field.fieldValue ?? DateTime.now(),
      firstDate: DateTime(1500),
      lastDate: DateTime.now(),
    );

    if (picked == null || field.isDisposed) return;

    field.setValue(picked);
  }
}
