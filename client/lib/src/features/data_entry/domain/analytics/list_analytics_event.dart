part of 'package:church_admin/src/core/analytics/domain/models/analytics_event.dart';

sealed class ListAnalyticsEvent extends AnalyticsEvent {
  @override
  String get category => 'list';

  const ListAnalyticsEvent();
}

final class ListArrangementSave extends ListAnalyticsEvent {
  final String queryableTypeName;
  final int sortFieldCount;
  final String? primarySortFieldName;
  final OrderByValue? primarySortDirection;
  final bool hasSecondLine;

  @override
  String get objectAction => 'arrangement_save';

  @override
  Json get properties => {
    'queryable_type': queryableTypeName,
    'sort_field_count': sortFieldCount,
    if (primarySortFieldName case final fieldName?) 'sort_field': fieldName,
    if (primarySortDirection case final direction?)
      'sort_direction': direction.name,
    'has_second_line': hasSecondLine,
  };

  ListArrangementSave(QueryableType queryableType, ListArrangement arrangement)
    : queryableTypeName = queryableType.name,
      sortFieldCount = arrangement.orderBy.length,
      primarySortFieldName = arrangement.orderBy.firstOrNull?.field.name,
      primarySortDirection = arrangement.orderBy.firstOrNull?.value,
      hasSecondLine = arrangement.secondLineField != null;
}
