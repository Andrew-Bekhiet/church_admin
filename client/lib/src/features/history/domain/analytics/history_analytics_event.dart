part of 'package:church_admin/src/core/analytics/domain/models/analytics_event.dart';

sealed class HistoryAnalyticsEvent extends AnalyticsEvent {
  final HistoryKind historyKind;
  final Json ownerProperties;

  @override
  String get category => 'history';

  @override
  Json get properties => {
    'history_kind': historyKind.name,
    ...ownerProperties,
  };

  HistoryAnalyticsEvent(TrackedHistory history)
    : historyKind = history.kind,
      ownerProperties = AnalyticsEntityType.propertiesOf(history.owner);
}

final class HistoryRecordNowTap extends HistoryAnalyticsEvent {
  @override
  String get objectAction => 'record_now_tap';

  HistoryRecordNowTap(super.history);
}

final class HistoryDialogOpen extends HistoryAnalyticsEvent {
  @override
  String get objectAction => 'dialog_open';

  HistoryDialogOpen(super.history);
}
