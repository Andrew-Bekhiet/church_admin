import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/features/attendance/application/attendance_undo_presenter.dart';
import 'package:church_admin/src/features/attendance/application/undo_tracking_attendance_presenter.dart';

class RecordAttendanceAnalytics {
  static Iterable<AttendanceAnalyticsEvent> _rosterChangesBetween(
    RecordAttendanceLoaded previous,
    RecordAttendanceLoaded next,
  ) sync* {
    final meeting = next.meeting;
    if (meeting.id != previous.meeting.id) {
      yield AttendanceMeetingSwitch(
        meeting,
        fromMeetingId: previous.meeting.id,
      );

      return;
    }

    if (next.audienceView != previous.audienceView) {
      yield AttendanceAudienceViewToggle(meeting, next.audienceView);
    }
    if (next.grouping != previous.grouping) {
      yield AttendanceGroupingToggle(meeting, next.grouping);
    }
    if (next.sort != previous.sort) {
      yield _sortChangeBetween(meeting, previous.sort, next.sort);
    }
    if (next.streakWindowDays != previous.streakWindowDays) {
      yield AttendanceStreakWindowChange(meeting, next.streakWindowDays);
    }
    if (next.searchQuery case final query?
        when query.isNotEmpty && query != previous.searchQuery) {
      yield AttendanceSearchRun(
        meeting,
        query: query,
        resultCount: next.entries.length,
      );
    }
  }

  static AttendanceSortingAnalyticsEvent _sortChangeBetween(
    Meeting meeting,
    AttendanceSorting previous,
    AttendanceSorting next,
  ) => AttendanceSortType.of(previous) == AttendanceSortType.of(next)
      ? AttendanceSortReverse(meeting, next)
      : AttendanceSortChange(meeting, next);

  final AnalyticsService _analyticsService;

  RecordAttendanceAnalytics(AnalyticsService? analyticsService)
    : _analyticsService = analyticsService ?? AnalyticsService.I;

  void track(AttendanceAnalyticsEvent event) => _analyticsService.track(event);

  void maybeTrackRosterChange(
    RecordAttendanceState previous,
    RecordAttendanceLoaded next,
  ) {
    if (previous case final RecordAttendanceLoaded previous) {
      _rosterChangesBetween(previous, next).forEach(track);
    }
  }

  void maybeTrackDateChange(RecordAttendanceState roster, DateTime day) {
    if (roster case RecordAttendanceLoaded(
      :final meeting,
      :final recordedDays,
    )) {
      track(
        AttendanceDateChange(
          meeting,
          day: day,
          hasRecordsOnDay: recordedDays.contains(day),
        ),
      );
    }
  }

  void maybeTrackPresenceFilterChange(
    RecordAttendanceState roster,
    AttendancePresenceFilter presenceFilter, {
    required bool isReset,
  }) {
    if (roster case RecordAttendanceLoaded(
      :final meeting,
      :final presentCount,
      :final eligibleCount,
    )) {
      track(
        AttendancePresenceFilterChange(
          meeting,
          presenceFilter: presenceFilter,
          isReset: isReset,
          presentCount: presentCount,
          eligibleCount: eligibleCount,
        ),
      );
    }
  }

  AttendanceUndoPresenter withUndoTracking(
    AttendanceUndoPresenter presenter,
    Meeting meeting,
    MeetingRosterEntry entry,
  ) => UndoTrackingAttendancePresenter(
    presenter,
    (undoneChange) => track(
      AttendanceUndo(
        meeting,
        personId: entry.person.id,
        undoneChange: undoneChange,
      ),
    ),
  );

  void Function({required bool isSaved})? markTrackerIfLoaded(
    RecordAttendanceState rosterAtMark,
    MeetingRosterEntry entry,
    bool isMarkedPresent,
  ) {
    if (rosterAtMark is! RecordAttendanceLoaded) return null;

    final rosterSettings = AttendanceRosterSettings.of(rosterAtMark);
    final newState = isMarkedPresent
        ? AttendanceMarkState.present
        : AttendanceMarkState.absent;

    return ({required isSaved}) => track(
      AttendancePersonMark(
        rosterAtMark.meeting,
        personId: entry.person.id,
        newState: newState,
        rosterSettings: rosterSettings,
        isSuccess: isSaved,
      ),
    );
  }

  void trackRejectedTimeEdit(
    Meeting meeting,
    AttendanceRecord editedRecord,
    DateTime newDatetime,
  ) => track(
    AttendanceTimeEdit(
      meeting,
      personId: editedRecord.personId,
      shift: newDatetime.difference(editedRecord.datetime),
      isRejectedFuture: true,
      isSuccess: false,
    ),
  );

  void Function({required bool isSaved}) timeEditTracker(
    Meeting meeting,
    AttendanceRecord editedRecord,
    DateTime newDatetime,
  ) =>
      ({required isSaved}) => track(
        AttendanceTimeEdit(
          meeting,
          personId: editedRecord.personId,
          shift: newDatetime.difference(editedRecord.datetime),
          isRejectedFuture: false,
          isSuccess: isSaved,
        ),
      );
}
