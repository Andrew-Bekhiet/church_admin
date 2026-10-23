import 'package:church_admin/church_admin.dart';

sealed class HistoryAnalyticsEvent extends AnalyticsEvent {
  final TrackedHistory history;

  @override
  String get category => 'history';

  @override
  Json get properties => {
    'history_kind': history.kind.name,
    ...AnalyticsEntityType.propertiesOf(history.owner),
  };

  const HistoryAnalyticsEvent(this.history);
}

final class HistoryRecordNowTap extends HistoryAnalyticsEvent {
  @override
  String get objectAction => 'record_now_tap';

  const HistoryRecordNowTap(super.history);
}

final class HistoryDialogOpen extends HistoryAnalyticsEvent {
  @override
  String get objectAction => 'dialog_open';

  const HistoryDialogOpen(super.history);
}
