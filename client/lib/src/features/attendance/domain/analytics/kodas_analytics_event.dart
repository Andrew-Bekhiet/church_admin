part of 'package:church_admin/src/core/analytics/domain/models/analytics_event.dart';

sealed class KodasAnalyticsEvent extends AnalyticsEvent {
  final Json meetingProperties;

  @override
  String get category => 'kodas';

  @override
  Json get properties => meetingProperties;

  KodasAnalyticsEvent(Meeting meeting)
    : meetingProperties = AttendanceAnalyticsEvent.meetingPropertiesOf(meeting);
}

final class KodasColumnToggle extends KodasAnalyticsEvent {
  final bool isVisible;
  final bool isSuccess;

  @override
  String get objectAction => 'column_toggle';

  @override
  Json get properties => {
    ...super.properties,
    'is_visible': isVisible,
    'is_success': isSuccess,
  };

  KodasColumnToggle(
    super.meeting, {
    required this.isVisible,
    required this.isSuccess,
  });
}

final class KodasPersonMark extends KodasAnalyticsEvent {
  final String personId;
  final bool isRecorded;
  final bool isSuccess;

  @override
  String get objectAction => 'person_mark';

  @override
  Json get properties => {
    ...super.properties,
    'person_id': personId,
    'is_recorded': isRecorded,
    'is_success': isSuccess,
  };

  KodasPersonMark(
    super.meeting, {
    required this.personId,
    required this.isRecorded,
    required this.isSuccess,
  });
}

final class KodasUndo extends KodasAnalyticsEvent {
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

  KodasUndo(
    super.meeting, {
    required this.personId,
    required this.undoneChange,
  });
}
