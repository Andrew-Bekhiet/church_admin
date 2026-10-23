import 'package:church_admin/church_admin.dart';
import 'package:clock/clock.dart';
import 'package:material_ui/material_ui.dart' show DateUtils;

sealed class AttendanceAnalyticsEvent extends AnalyticsEvent {
  static Json meetingPropertiesOf(Meeting meeting) => {
    'meeting_id': meeting.id,
    if (meeting.serviceId case final serviceId?) 'service_id': serviceId,
    if (meeting.groupId case final groupId?) 'group_id': groupId,
  };

  final Meeting meeting;

  @override
  String get category => 'attendance';

  @override
  Json get properties => meetingPropertiesOf(meeting);

  const AttendanceAnalyticsEvent(this.meeting);
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

  const AttendancePersonMark(
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

  const AttendanceUndo(
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

  const AttendanceMeetingSwitch(super.meeting, {required this.fromMeetingId});
}

final class AttendanceMeetingSelectorDismiss extends AttendanceAnalyticsEvent {
  @override
  String get objectAction => 'meeting_selector_dismiss';

  const AttendanceMeetingSelectorDismiss(super.meeting);
}

final class AttendanceDateChange extends AttendanceAnalyticsEvent {
  final DateTime day;
  final bool hasRecordsOnDay;

  @override
  String get objectAction => 'date_change';

  @override
  Json get properties => {
    ...super.properties,
    'days_from_today': _daysFromToday,
    'has_records_on_day': hasRecordsOnDay,
  };

  int get _daysFromToday {
    final today = DateUtils.dateOnly(clock.now());

    return DateTime.utc(
      day.year,
      day.month,
      day.day,
    ).difference(DateTime.utc(today.year, today.month, today.day)).inDays;
  }

  const AttendanceDateChange(
    super.meeting, {
    required this.day,
    required this.hasRecordsOnDay,
  });
}

final class AttendanceAudienceViewToggle extends AttendanceAnalyticsEvent {
  final AttendanceRosterAudienceView audienceView;

  @override
  String get objectAction => 'audience_toggle';

  @override
  Json get properties => {...super.properties, 'audience': audienceView.name};

  const AttendanceAudienceViewToggle(super.meeting, this.audienceView);
}

final class AttendancePresenceFilterChange extends AttendanceAnalyticsEvent {
  final AttendancePresenceFilter filter;
  final bool isReset;
  final int? presentCount;
  final int? eligibleCount;

  @override
  String get objectAction => 'presence_filter_change';

  @override
  Json get properties => {
    ...super.properties,
    'filter': filter.name,
    'is_reset': isReset,
    'present_count': presentCount,
    'eligible_count': eligibleCount,
  };

  const AttendancePresenceFilterChange(
    super.meeting, {
    required this.filter,
    required this.isReset,
    required this.presentCount,
    required this.eligibleCount,
  });
}

final class AttendanceSearchSubmit extends AttendanceAnalyticsEvent {
  final String query;
  final int resultCount;

  @override
  String get objectAction => 'search_submit';

  @override
  Json get properties => {
    ...super.properties,
    'query_length': query.length,
    'is_phone_query': PhoneNumberFormat.normalizeForSearch(query).isNotEmpty,
    'result_count': resultCount,
  };

  const AttendanceSearchSubmit(
    super.meeting, {
    required this.query,
    required this.resultCount,
  });
}

sealed class AttendanceSortingAnalyticsEvent extends AttendanceAnalyticsEvent {
  final AttendanceSorting sort;

  @override
  Json get properties => {
    ...super.properties,
    'sort_type': AttendanceSortType.of(sort).name,
    'direction': sort.direction.name,
  };

  const AttendanceSortingAnalyticsEvent(super.meeting, this.sort);
}

final class AttendanceSortChange extends AttendanceSortingAnalyticsEvent {
  @override
  String get objectAction => 'sort_change';

  const AttendanceSortChange(super.meeting, super.sort);
}

final class AttendanceSortReverse extends AttendanceSortingAnalyticsEvent {
  @override
  String get objectAction => 'sort_reverse';

  const AttendanceSortReverse(super.meeting, super.sort);
}

final class AttendanceGroupingToggle extends AttendanceAnalyticsEvent {
  final AttendanceGrouping grouping;

  @override
  String get objectAction => 'grouping_toggle';

  @override
  Json get properties => {...super.properties, 'grouping': grouping.name};

  const AttendanceGroupingToggle(super.meeting, this.grouping);
}

final class AttendanceSectionCollapse extends AttendanceAnalyticsEvent {
  final bool isCollapsed;
  final int sectionSize;

  @override
  String get objectAction => 'section_collapse';

  @override
  Json get properties => {
    ...super.properties,
    'is_collapsed': isCollapsed,
    'section_size': sectionSize,
  };

  const AttendanceSectionCollapse(
    super.meeting, {
    required this.isCollapsed,
    required this.sectionSize,
  });
}

final class AttendanceStreakWindowChange extends AttendanceAnalyticsEvent {
  final int days;

  @override
  String get objectAction => 'streak_window_change';

  @override
  Json get properties => {...super.properties, 'days': days};

  const AttendanceStreakWindowChange(super.meeting, this.days);
}

final class AttendanceTimeEdit extends AttendanceAnalyticsEvent {
  final String personId;
  final int minutesShifted;
  final bool isRejectedFuture;
  final bool isSuccess;

  @override
  String get objectAction => 'time_edit';

  @override
  Json get properties => {
    ...super.properties,
    'person_id': personId,
    'minutes_shifted': minutesShifted,
    'is_rejected_future': isRejectedFuture,
    'is_success': isSuccess,
  };

  const AttendanceTimeEdit(
    super.meeting, {
    required this.personId,
    required this.minutesShifted,
    required this.isRejectedFuture,
    required this.isSuccess,
  });
}

final class AttendancePersonProfileOpen extends AttendanceAnalyticsEvent {
  final String personId;

  @override
  String get objectAction => 'person_profile_open';

  @override
  Json get properties => {...super.properties, 'person_id': personId};

  const AttendancePersonProfileOpen(super.meeting, {required this.personId});
}

final class AttendanceLetterGutterUse extends AttendanceAnalyticsEvent {
  final AttendanceLetterGutterGesture gesture;

  @override
  String get objectAction => 'letter_gutter_use';

  @override
  Json get properties => {...super.properties, 'gesture': gesture.name};

  const AttendanceLetterGutterUse(super.meeting, this.gesture);
}

final class AttendanceAnalysisOpen extends AttendanceAnalyticsEvent {
  final AttendanceAnalysisPreset preset;

  @override
  String get objectAction => 'analysis_open';

  @override
  Json get properties => {...super.properties, 'preset': preset.name};

  const AttendanceAnalysisOpen(super.meeting, this.preset);
}

final class AttendanceRetry extends AttendanceAnalyticsEvent {
  @override
  String get objectAction => 'retry';

  const AttendanceRetry(super.meeting);
}

enum AttendanceMarkState { present, absent }

enum AttendanceLetterGutterGesture { tap, drag }

enum AttendanceAnalysisPreset { today, custom }
