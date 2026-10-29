part of 'package:church_admin/src/core/analytics/domain/models/analytics_event.dart';

sealed class BulkActionAnalyticsEvent extends AnalyticsEvent {
  @override
  String get category => 'bulk_action';

  const BulkActionAnalyticsEvent();
}

final class BulkActionInvoke extends BulkActionAnalyticsEvent {
  final String actionKey;
  final AnalyticsEntityType? entityType;
  final int selectedCount;

  @override
  String get objectAction => 'invoke';

  @override
  Json get properties => {
    'action': actionKey,
    if (entityType case final type?) 'entity_type': type.key,
    'selected_count': selectedCount,
  };

  BulkActionInvoke(this.actionKey, Set<Object?> selected)
    : entityType = selected.map(AnalyticsEntityType.of).nonNulls.firstOrNull,
      selectedCount = selected.length;
}
