import 'package:advanced_forms/advanced_forms.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:intl/intl.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:material_ui/material_ui.dart';

class AdvancedDateRangeField<E extends Object> extends StatelessWidget {
  static const double _dialogHeight = 410;
  static const double _dialogMargin = 16;
  static final DateFormat _dateFormat = DateFormat('yyyy/M/d');

  final AdvancedFieldController<DateTimeRange?, E> field;
  final String label;
  final ErrorTranslator<E> translateError;
  final DateTime firstDate;
  final DateTime lastDate;

  const AdvancedDateRangeField({
    required this.field,
    required this.label,
    required this.translateError,
    required this.firstDate,
    required this.lastDate,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AdvancedFieldBuilder<DateTimeRange?, E>(
      field: field,
      builder: (context, state, _) {
        final range = state.value;
        final error = state.error;

        return TappableInputField<DateTimeRange?>(
          value: range,
          isEmpty: range == null,
          focusNode: field.focusNode,
          decoration: InputDecoration(
            labelText: label,
            errorText: error == null ? null : translateError(error),
            suffixIcon: range != null && !state.readOnly
                ? IconButton(
                    tooltip: 'حذف التاريخ',
                    onPressed: () => field.setValue(null),
                    icon: const Icon(Symbols.delete),
                  )
                : null,
          ),
          onTap: state.readOnly ? null : () => _pickRange(context),
          child: switch (range) {
            null => null,
            DateTimeRange(:final start, :final end) => Row(
              spacing: 8,
              children: [
                const Text('من'),
                Expanded(
                  child: Text(
                    _dateFormat.format(start),
                    textAlign: TextAlign.center,
                  ),
                ),
                const Text('إلى'),
                Expanded(
                  child: Text(
                    _dateFormat.format(end),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          },
        );
      },
    );
  }

  Future<void> _pickRange(BuildContext context) async {
    final picked = await showCalendarDatePicker2Dialog(
      context: context,
      dialogSize: Size(
        MediaQuery.widthOf(context) - _dialogMargin,
        _dialogHeight,
      ),
      config: CalendarDatePicker2WithActionButtonsConfig(
        calendarType: CalendarDatePicker2Type.range,
        firstDate: firstDate,
        lastDate: lastDate,
      ),
      value: [field.fieldValue?.start, field.fieldValue?.end],
    );
    final pickedDates = picked?.nonNulls.toList() ?? const [];
    if (pickedDates.length < 2 || field.isDisposed) return;

    final range = DateTimeRange(start: pickedDates.min, end: pickedDates.max);
    if (range != field.fieldValue) field.setValue(range);
  }
}
