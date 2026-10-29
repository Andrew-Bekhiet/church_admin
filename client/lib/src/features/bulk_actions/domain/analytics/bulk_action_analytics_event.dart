part of 'package:church_admin/src/core/analytics/domain/models/analytics_event.dart';

sealed class BulkActionAnalyticsEvent extends AnalyticsEvent {
  @override
  String get category => 'bulk_action';

  const BulkActionAnalyticsEvent();
}

final class BulkActionOpen extends BulkActionAnalyticsEvent {
  final String actionKey;
  final AnalyticsEntityType? entityType;
  final int selectedCount;

  @override
  String get objectAction => 'open';

  @override
  Json get properties => {
    'action': actionKey,
    if (entityType case final type?) 'entity_type': type.key,
    'selected_count': selectedCount,
  };

  BulkActionOpen(BulkAction action, Set<Object> selected)
    : actionKey = action.key,
      entityType = selected.map(AnalyticsEntityType.of).nonNulls.firstOrNull,
      selectedCount = selected.length;
}
