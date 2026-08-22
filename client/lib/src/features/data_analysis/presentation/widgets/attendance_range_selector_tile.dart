import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AttendanceRangeSelectorTile extends StatelessWidget {
  final DateTimeRangePreset preset;
  final ValueChanged<DateTimeRangePreset> onChanged;

  DateTimeRange get _range => preset.range;

  const AttendanceRangeSelectorTile({
    required this.preset,
    required this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dateFormat = DateFormat.yMMMEd('ar-EG');
    final textTheme = TextTheme.of(context);

    return ListTile(
      title: Text('تحليل الحضور خلال الفترة', style: textTheme.titleMedium),
      subtitle: Text(
        '${dateFormat.format(_range.start)}\nإلى ${dateFormat.format(_range.end)}',
        style: textTheme.bodyMedium,
      ),
      trailing: DropdownMenu<DateTimeRangePreset?>(
        width: 200,
        initialSelection: preset,
        selectOnly: true,
        textStyle: textTheme.titleMedium,
        onSelected: (selectedPreset) async {
          // Both the picker entry (null when a standard preset is selected) and
          // the currently-selected custom preset re-open the date picker.
          if (selectedPreset == null ||
              selectedPreset is CustomDateTimeRangePreset) {
            await _pickCustomRange(context);

            return;
          }

          onChanged(selectedPreset);
        },
        dropdownMenuEntries: [
          DropdownMenuEntry(value: TodayDateTimeRangePreset(), label: 'اليوم'),
          DropdownMenuEntry(
            value: PastMonthDateTimeRangePreset(),
            label: 'الشهر الماضي',
          ),
          DropdownMenuEntry(
            value: PastQuarterDateTimeRangePreset(),
            label: 'الـ٣ شهور الماضية',
          ),
          DropdownMenuEntry(
            value: PastYearDateTimeRangePreset(),
            label: 'العام الماضي',
          ),
          DropdownMenuEntry(
            // Carrying the active custom preset makes this entry match
            // `initialSelection` so it renders as selected; a standard preset
            // leaves it null so tapping it opens the picker.
            value: preset is CustomDateTimeRangePreset ? preset : null,
            label: 'فترة مخصصة',
            leadingIcon: const Icon(Icons.date_range, size: 18),
          ),
        ],
      ),
    );
  }

  Future<void> _pickCustomRange(BuildContext context) async {
    final rslt = await showCalendarDatePicker2Dialog(
      context: context,
      dialogSize: Size(MediaQuery.widthOf(context) - 16, 410),
      config: CalendarDatePicker2WithActionButtonsConfig(
        calendarType: CalendarDatePicker2Type.range,
        firstDate: DateTime(2000),
        lastDate: DateTime.now(),
      ),
      value: [_range.start, _range.end],
    );
    if (rslt == null || rslt.nonNulls.length < 2) return;

    onChanged(
      CustomDateTimeRangePreset(
        range: DateTimeRange(
          start: rslt.nonNulls.min,
          end: rslt.nonNulls.max,
        ),
      ),
    );
  }
}
