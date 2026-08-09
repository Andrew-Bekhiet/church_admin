import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class PersonMeetingAttendanceCalendar extends StatefulWidget {
  final PersonMeetingAttendanceAnalysis analysis;
  final DateTimeRange range;

  const PersonMeetingAttendanceCalendar({
    required this.analysis,
    required this.range,
    super.key,
  });

  @override
  State<PersonMeetingAttendanceCalendar> createState() =>
      _PersonMeetingAttendanceCalendarState();
}

class _PersonMeetingAttendanceCalendarState
    extends State<PersonMeetingAttendanceCalendar> {
  late Set<DateTime> _attendedDaysSet;
  late Set<DateTime> _heldDaysSet;

  PersonMeetingAttendanceAnalysis get analysis => widget.analysis;
  DateTimeRange get range => widget.range;

  @override
  void initState() {
    super.initState();
    _rebuildDaySets();
  }

  @override
  void didUpdateWidget(PersonMeetingAttendanceCalendar oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.analysis != analysis) _rebuildDaySets();
  }

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    final colorScheme = themeData.colorScheme;
    final primaryColor = analysis.meeting.color ?? colorScheme.primary;
    final errorColor = colorScheme.error;

    return TableCalendar<void>(
      locale: 'ar_EG',
      availableCalendarFormats: const {CalendarFormat.month: 'شهر'},
      firstDay: range.start,
      lastDay: range.end,
      focusedDay: range.end,
      headerStyle: const HeaderStyle(formatButtonVisible: false),
      enabledDayPredicate: _isHeld,
      selectedDayPredicate: _isAttended,
      calendarBuilders: CalendarBuilders(
        selectedBuilder: (context, day, focusedDay) =>
            AttendanceCalendarDayCell(
              day: day,
              attended: _isAttended(day),
              fillColor: primaryColor,
              outlineColor: errorColor,
            ),
        defaultBuilder: (context, day, focusedDay) => AttendanceCalendarDayCell(
          day: day,
          attended: _isAttended(day),
          fillColor: primaryColor,
          outlineColor: errorColor,
        ),
        disabledBuilder: (context, day, focusedDay) => Container(
          margin: const EdgeInsets.all(4),
          alignment: Alignment.center,
          decoration: const BoxDecoration(shape: BoxShape.circle),
          child: Text(
            day.day.toString(),
            style: themeData.textTheme.bodyMedium?.copyWith(
              color: themeData.disabledColor,
            ),
          ),
        ),
      ),
      weekendDays: const [DateTime.friday, DateTime.saturday],
    );
  }

  void _rebuildDaySets() {
    _attendedDaysSet = analysis.attendedDays.map(DateUtils.dateOnly).toSet();
    _heldDaysSet = analysis.heldDays.map(DateUtils.dateOnly).toSet();
  }

  bool _isAttended(DateTime day) => _attendedDaysSet.contains(
    DateUtils.dateOnly(day),
  );

  bool _isHeld(DateTime day) => _heldDaysSet.contains(DateUtils.dateOnly(day));
}
