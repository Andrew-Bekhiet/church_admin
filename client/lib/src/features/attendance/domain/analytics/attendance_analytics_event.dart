part of 'package:church_admin/src/core/analytics/domain/models/analytics_event.dart';

sealed class AttendanceAnalyticsEvent extends MeetingAnalyticsEvent {
  @override
  String get category => 'attendance';

  AttendanceAnalyticsEvent(super.meeting);
}

final class AttendancePersonMark extends AttendanceAnalyticsEvent {
  final String personId;
  final AttendanceMarkState newState;
  final AttendanceRosterSettings rosterSettings;
  final bool isSuccess;

  @override
  String get objectAction => 'person_mark';

  @override
  Json get properties => {
    ...super.properties,
    ...rosterSettings.properties,
    'person_id': personId,
    'new_state': newState.name,
    'is_success': isSuccess,
  };

  AttendancePersonMark(
    super.meeting, {
    required this.personId,
    required this.newState,
    required this.rosterSettings,
    required this.isSuccess,
  });
}

final class AttendanceUndo extends AttendanceAnalyticsEvent {
  final String personId;
  final AttendanceUndoableChange undoneChange;

  @override
  String get objectAction => 'undo';

  @override
  Json get properties => {
    ...super.properties,
    'person_id': personId,
    'undone_change': undoneChange.name,
  };

  AttendanceUndo(
    super.meeting, {
    required this.personId,
    required this.undoneChange,
  });
}

final class AttendanceMeetingSwitch extends AttendanceAnalyticsEvent {
  final String fromMeetingId;

  @override
  String get objectAction => 'meeting_switch';

  @override
  Json get properties => {
    ...super.properties,
    'from_meeting_id': fromMeetingId,
  };

  AttendanceMeetingSwitch(super.meeting, {required this.fromMeetingId});
}

final class AttendanceMeetingSelectorDismiss extends AttendanceAnalyticsEvent {
  @override
  String get objectAction => 'meeting_selector_dismiss';

  AttendanceMeetingSelectorDismiss(super.meeting);
}

final class AttendanceDateChange extends AttendanceAnalyticsEvent {
  static int _daysFromTodayOf(DateTime day) {
    final today = clock.now();

    return DateTime.utc(
      day.year,
      day.month,
      day.day,
    ).difference(DateTime.utc(today.year, today.month, today.day)).inDays;
  }

  final int daysFromToday;
  final bool hasRecordsOnDay;

  @override
  String get objectAction => 'date_change';

  @override
  Json get properties => {
    ...super.properties,
    'days_from_today': daysFromToday,
    'has_records_on_day': hasRecordsOnDay,
  };

  AttendanceDateChange(
    super.meeting, {
    required DateTime day,
    required this.hasRecordsOnDay,
  }) : daysFromToday = _daysFromTodayOf(day);
}

final class AttendanceAudienceViewToggle extends AttendanceAnalyticsEvent {
  final AttendanceRosterAudienceView audienceView;

  @override
  String get objectAction => 'audience_toggle';

  @override
  Json get properties => {
    ...super.properties,
    'audience_view': audienceView.name,
  };

  AttendanceAudienceViewToggle(super.meeting, this.audienceView);
}

final class AttendancePresenceFilterChange extends AttendanceAnalyticsEvent {
  final AttendancePresenceFilter presenceFilter;
  final bool isReset;
  final int? presentCount;
  final int? eligibleCount;

  @override
  String get objectAction => 'presence_filter_change';

  @override
  Json get properties => {
    ...super.properties,
    'presence_filter': presenceFilter.name,
    'is_reset': isReset,
    'present_count': presentCount,
    'eligible_count': eligibleCount,
  };

  AttendancePresenceFilterChange(
    super.meeting, {
    required this.presenceFilter,
    required this.isReset,
    required this.presentCount,
    required this.eligibleCount,
  });
}

final class AttendanceSearchRun extends AttendanceAnalyticsEvent {
  static final RegExp _phoneNumberShape = RegExp(r'^\+?\d+$');

  final int queryLength;
  final bool isPhoneQuery;
  final int resultCount;

  @override
  String get objectAction => 'search_run';

  @override
  Json get properties => {
    ...super.properties,
    'query_length': queryLength,
    'is_phone_query': isPhoneQuery,
    'result_count': resultCount,
  };

  AttendanceSearchRun(
    super.meeting, {
    required String query,
    required this.resultCount,
  }) : queryLength = query.length,
       isPhoneQuery = _phoneNumberShape.hasMatch(
         PhoneNumberFormat.withoutSeparators(query),
       );
}

sealed class AttendanceSortingAnalyticsEvent extends AttendanceAnalyticsEvent {
  static String sortTypeOf(AttendanceSorting sort) => switch (sort) {
    AttendanceSortingByName() => 'name',
    AttendanceSortingByTime() => 'attendanceTime',
    AttendanceSortingByStreak() => 'streak',
    AttendanceSortingByLastAttendanceTime() => 'lastAttendanceTime',
    AttendanceSortingByStudyYear() => 'studyYear',
    _ => 'id',
  };

  final String sortType;
  final SortingDirection sortDirection;

  @override
  Json get properties => {
    ...super.properties,
    'sort_type': sortType,
    'sort_direction': sortDirection.name,
  };

  AttendanceSortingAnalyticsEvent(super.meeting, AttendanceSorting sort)
    : sortType = sortTypeOf(sort),
      sortDirection = sort.direction;
}

final class AttendanceSortChange extends AttendanceSortingAnalyticsEvent {
  @override
  String get objectAction => 'sort_change';

  AttendanceSortChange(super.meeting, super.sort);
}

final class AttendanceSortReverse extends AttendanceSortingAnalyticsEvent {
  @override
  String get objectAction => 'sort_reverse';

  AttendanceSortReverse(super.meeting, super.sort);
}

final class AttendanceGroupingToggle extends AttendanceAnalyticsEvent {
  final AttendanceGrouping grouping;

  @override
  String get objectAction => 'grouping_toggle';

  @override
  Json get properties => {...super.properties, 'grouping': grouping.name};

  AttendanceGroupingToggle(super.meeting, this.grouping);
}

final class AttendanceSectionToggle extends AttendanceAnalyticsEvent {
  final bool isCollapsed;
  final int sectionPersonCount;

  @override
  String get objectAction => 'section_toggle';

  @override
  Json get properties => {
    ...super.properties,
    'is_collapsed': isCollapsed,
    'section_person_count': sectionPersonCount,
  };

  AttendanceSectionToggle(
    super.meeting, {
    required this.isCollapsed,
    required this.sectionPersonCount,
  });
}

final class AttendanceStreakWindowChange extends AttendanceAnalyticsEvent {
  final int streakWindowDays;

  @override
  String get objectAction => 'streak_window_change';

  @override
  Json get properties => {
    ...super.properties,
    'streak_window_days': streakWindowDays,
  };

  AttendanceStreakWindowChange(super.meeting, this.streakWindowDays);
}

final class AttendanceTimeEdit extends AttendanceAnalyticsEvent {
  final String personId;
  final int shiftDurationMs;
  final AttendanceTimeEditOutcome outcome;

  @override
  String get objectAction => 'time_edit';

  @override
  Json get properties => {
    ...super.properties,
    'person_id': personId,
    'shift_duration_ms': shiftDurationMs,
    'is_rejected_future': outcome == AttendanceTimeEditOutcome.rejectedAsFuture,
    'is_success': outcome == AttendanceTimeEditOutcome.saved,
  };

  AttendanceTimeEdit(
    super.meeting, {
    required this.personId,
    required Duration shift,
    required this.outcome,
  }) : shiftDurationMs = shift.inMilliseconds;
}

final class AttendancePersonProfileOpen extends AttendanceAnalyticsEvent {
  final String personId;

  @override
  String get objectAction => 'person_profile_open';

  @override
  Json get properties => {...super.properties, 'person_id': personId};

  AttendancePersonProfileOpen(super.meeting, {required this.personId});
}

final class AttendanceLetterGutterUse extends AttendanceAnalyticsEvent {
  final AttendanceLetterGutterGesture gutterGesture;

  @override
  String get objectAction => 'letter_gutter_use';

  @override
  Json get properties => {
    ...super.properties,
    'gutter_gesture': gutterGesture.name,
  };

  AttendanceLetterGutterUse(super.meeting, this.gutterGesture);
}

final class AttendanceAnalysisOpen extends AttendanceAnalyticsEvent {
  final DateTimeRangePreset rangePreset;

  @override
  String get objectAction => 'analysis_open';

  @override
  Json get properties => {
    ...super.properties,
    'range_preset': switch (rangePreset) {
      TodayDateTimeRangePreset() => 'today',
      _ => 'custom',
    },
  };

  AttendanceAnalysisOpen(super.meeting, this.rangePreset);
}

final class AttendanceRetry extends AttendanceAnalyticsEvent {
  @override
  String get objectAction => 'retry';

  AttendanceRetry(super.meeting);
}
