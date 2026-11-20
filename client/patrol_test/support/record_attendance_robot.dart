import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/features/attendance/presentation/screens/body/record_attendance_loaded_view.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';

import 'e2e_app.dart';
import 'e2e_widget_tester.dart';

class RecordAttendanceRobot {
  final WidgetTester tester;

  Finder get _meetingSheet => find.byType(SelectMeetingBottomSheet);
  Finder get _datePicker => find.byType(CalendarDatePicker2WithActionButtons);

  DateTime get selectedDate => _state.selectedDate;

  bool get canSwitchAudience =>
      find.byKey(AttendanceAppBarKeys.audienceToggle).evaluate().isNotEmpty;

  bool get canShowNextMonth =>
      tester
          .widget<IconButton>(
            find.descendant(
              of: _datePicker,
              matching: find.widgetWithIcon(IconButton, Icons.chevron_right),
            ),
          )
          .onPressed !=
      null;

  RecordAttendanceLoaded get _state => tester
      .widget<RecordAttendanceLoadedView>(
        find.byType(RecordAttendanceLoadedView),
      )
      .state;

  const RecordAttendanceRobot(this.tester);

  Future<void> openServiceDefaultMeeting(String serviceId) async {
    await E2eApp.openHomeTab(
      tester,
      mode: HomeMode.sundaySchool,
      tab: HomeTab.services,
    );
    await tester.tapOn(
      find.byWidgetPredicate(
        (widget) => switch (widget) {
          ViewableObjectCard(object: Service(:final id)) => id == serviceId,
          _ => false,
        },
      ),
    );
    await tester.tapOn(find.byKey(ViewServiceKeys.recordAttendanceButton));
    await tester.waitFor(find.byType(RecordAttendanceLoadedView));
  }

  Future<RecordAttendanceLoaded> waitForRoster({
    required String meetingId,
    required AttendanceRosterAudienceView view,
  }) async {
    await tester.waitFor(
      find.byWidgetPredicate(
        (widget) => switch (widget) {
          RecordAttendanceLoadedView(:final state) =>
            state.meeting.id == meetingId &&
                state.audienceView == view &&
                state.rosterStatus == RosterStatus.ready,
          _ => false,
        },
      ),
    );

    return _state;
  }

  Future<Set<String>> offeredPersonIds({
    required String meetingId,
    required AttendanceRosterAudienceView view,
  }) async {
    final state = await waitForRoster(meetingId: meetingId, view: view);

    return {for (final entry in state.entries) entry.person.id};
  }

  Future<void> showServants() async {
    await tester.tapOn(
      find
          .descendant(
            of: find.byKey(AttendanceAppBarKeys.audienceToggle),
            matching: find.byType(Text),
          )
          .last,
    );
  }

  Future<Set<String>> offeredMeetingIds() async {
    await tester.tapOn(find.byKey(AttendanceAppBarKeys.meetingSelector));
    await tester.waitFor(
      find.descendant(of: _meetingSheet, matching: find.byType(ListTile)),
    );
    final meetingIds = {
      for (final tile in tester.widgetList<MeetingListTile>(
        find.byType(MeetingListTile),
      ))
        tile.meeting.id,
    };
    await tester.tapOn(
      find.byKey(SelectMeetingBottomSheetKeys.meeting(_state.meeting.id)),
    );
    await tester.waitForAbsent(_meetingSheet);

    return meetingIds;
  }

  Future<void> switchToMeeting(String meetingId) async {
    await tester.tapOn(find.byKey(AttendanceAppBarKeys.meetingSelector));
    await tester.tapOn(
      find.byKey(SelectMeetingBottomSheetKeys.meeting(meetingId)),
    );
    await tester.waitForAbsent(_meetingSheet);
  }

  Future<void> markPresent(String personId, {required bool asServant}) async {
    await tester.tapOn(_cardOf(personId, asServant: asServant));
    await tester.waitFor(
      find.byWidgetPredicate(
        (widget) =>
            widget is AttendancePersonCard &&
            widget.entry.person.id == personId &&
            widget.entry.asServant == asServant &&
            widget.entry.attendance?.id != null &&
            widget.entry.attendance?.id != _state.meeting.id,
      ),
    );
  }

  /// Ends once the optimistic mark, applied before the save is sent, has been
  /// rolled back, so the save has been answered.
  Future<void> tryMarkingPresentAndWaitForRefusal(
    String personId, {
    required bool asServant,
  }) async {
    await tester.tapOn(_cardOf(personId, asServant: asServant));
    await tester.waitFor(
      find.byWidgetPredicate(
        (widget) =>
            widget is AttendancePersonCard &&
            widget.entry.person.id == personId &&
            widget.entry.asServant == asServant &&
            !widget.entry.attended,
      ),
    );
  }

  Future<void> openDatePicker() async {
    await tester.tapOn(find.byKey(AttendanceAppBarKeys.dateChip));
    await tester.waitFor(_datePicker);
  }

  bool isDaySelectable(DateTime day) {
    final cell = _dayCell(day);
    expect(cell, findsOneWidget);

    return find
        .ancestor(of: cell, matching: find.byType(InkResponse))
        .evaluate()
        .isNotEmpty;
  }

  Future<void> pickDay(DateTime day) async {
    if (find.byKey(_monthKeyOf(day)).evaluate().isEmpty) {
      await tester.tapOn(
        find.descendant(
          of: _datePicker,
          matching: find.widgetWithIcon(IconButton, Icons.chevron_left),
        ),
      );
    }
    await tester.tapOn(_dayCell(day));
    await tester.tapOn(
      find.descendant(of: _datePicker, matching: find.byType(InkWell)).last,
    );
    await tester.waitForAbsent(_datePicker);
    await tester.waitFor(
      find.byWidgetPredicate(
        (widget) =>
            widget is RecordAttendanceLoadedView &&
            widget.state.selectedDate == DateUtils.dateOnly(day),
      ),
    );
  }

  Finder _cardOf(String personId, {required bool asServant}) => find.byKey(
    AttendancePersonCardKeys.entry(personId, asServant: asServant),
  );

  ValueKey<DateTime> _monthKeyOf(DateTime day) =>
      ValueKey(DateTime(day.year, day.month));

  Finder _dayCell(DateTime day) => find.descendant(
    of: find.byKey(_monthKeyOf(day)),
    matching: find.text(
      MaterialLocalizations.of(
        tester.element(_datePicker),
      ).formatDecimal(day.day),
    ),
  );
}
