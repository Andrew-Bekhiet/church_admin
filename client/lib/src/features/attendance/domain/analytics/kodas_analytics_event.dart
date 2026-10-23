import 'package:church_admin/church_admin.dart';

sealed class KodasAnalyticsEvent extends AnalyticsEvent {
  final Meeting meeting;

  @override
  String get category => 'kodas';

  @override
  Json get properties => AttendanceAnalyticsEvent.meetingPropertiesOf(meeting);

  const KodasAnalyticsEvent(this.meeting);
}

final class KodasColumnToggle extends KodasAnalyticsEvent {
  final bool isVisible;

  @override
  String get objectAction => 'column_toggle';

  @override
  Json get properties => {...super.properties, 'is_visible': isVisible};

  const KodasColumnToggle(super.meeting, {required this.isVisible});
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

  const KodasPersonMark(
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

  const KodasUndo(
    super.meeting, {
    required this.personId,
    required this.undoneChange,
  });
}
