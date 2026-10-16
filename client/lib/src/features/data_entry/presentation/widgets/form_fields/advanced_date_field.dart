import 'package:advanced_forms/advanced_forms.dart';
import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';
import 'package:intl/intl.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class AdvancedDateField<E extends Object> extends StatelessWidget {
  static final DateFormat _dateFormat = DateFormat('yyyy/M/d');
  static final DateFormat _dateTimeFormat = DateFormat('yyyy/M/d h:mm a');

  final AdvancedFieldController<DateTime?, E> field;
  final String label;
  final ErrorTranslator<E> translateError;
  final bool clearable;
  final bool withTime;

  const AdvancedDateField({
    required this.field,
    required this.label,
    required this.translateError,
    this.clearable = true,
    this.withTime = false,
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
          child: date == null
              ? null
              : Text(
                  (withTime ? _dateTimeFormat : _dateFormat).format(date),
                ),
        );
      },
    );
  }

  Future<void> _pickDate(BuildContext context) async {
    final firstDate = DateTime(1500);
    final lastDate = DateTime.now();
    final storedDate = field.fieldValue ?? lastDate;
    final initialDate = switch (storedDate) {
      _ when storedDate.isBefore(firstDate) => firstDate,
      _ when storedDate.isAfter(lastDate) => lastDate,
      _ => storedDate,
    };

    final pickedDate = await showDatePicker(
      helpText: label,
      locale: const Locale('ar', 'EG'),
      context: context,
      initialDate: initialDate,
      firstDate: firstDate,
      lastDate: lastDate,
    );
    if (pickedDate == null || field.isDisposed) return;

    if (!withTime) {
      field.setValue(pickedDate);

      return;
    }

    final pickedTime = context.mounted
        ? await showTimePicker(
            helpText: label,
            context: context,
            initialTime: TimeOfDay.fromDateTime(storedDate),
          )
        : null;
    if (pickedTime == null || field.isDisposed) return;

    field.setValue(
      DateTime(
        pickedDate.year,
        pickedDate.month,
        pickedDate.day,
        pickedTime.hour,
        pickedTime.minute,
      ),
    );
  }
}
