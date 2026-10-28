part of 'package:church_admin/src/core/analytics/domain/models/analytics_event.dart';

sealed class AdvancedSearchQueryAnalyticsEvent
    extends AdvancedSearchAnalyticsEvent {
  const AdvancedSearchQueryAnalyticsEvent();
}

final class AdvancedSearchOpen extends AdvancedSearchQueryAnalyticsEvent {
  final bool hasInitialQuery;
  final bool isAutoExecuted;

  @override
  String get objectAction => 'open';

  @override
  Json get properties => {
    'has_initial_query': hasInitialQuery,
    'is_auto_executed': isAutoExecuted,
  };

  const AdvancedSearchOpen({
    required this.hasInitialQuery,
    required this.isAutoExecuted,
  });
}

final class AdvancedSearchQueryEdit extends AdvancedSearchQueryAnalyticsEvent {
  @override
  String get objectAction => 'query_edit';

  const AdvancedSearchQueryEdit();
}

final class AdvancedSearchQuerySubmit
    extends AdvancedSearchQueryAnalyticsEvent {
  static List<String> fieldPathOf(FieldMetadata field) => switch (field) {
    RedirectingFieldMetadata(:final parentField, :final targetField) => [
      ...fieldPathOf(parentField),
      ...fieldPathOf(targetField),
    ],
    _ => [field.name],
  };

  final String queryableType;
  final LogicalOperator logicalOperator;
  final List<String> fieldNames;
  final List<String> operatorIds;
  final int orderCount;
  final bool hasLimit;
  final bool isAutoExecuted;
  final bool hasPolygonFilter;
  final int? limitValue;

  @override
  String get objectAction => 'query_submit';

  @override
  Json get properties => {
    'queryable_type': queryableType,
    'logical_operator': logicalOperator.name,
    'filter_count': fieldNames.length,
    'field_names': fieldNames,
    'operator_ids': operatorIds,
    'order_count': orderCount,
    'has_limit': hasLimit,
    'is_auto_executed': isAutoExecuted,
    'has_polygon_filter': hasPolygonFilter,
    'limit_value': ?limitValue,
  };

  AdvancedSearchQuerySubmit(
    AdvancedQuery query, {
    required this.isAutoExecuted,
  }) : queryableType = query.queryableType.name,
       logicalOperator = query.logicalOperator,
       fieldNames = [
         for (final filter in query.filters)
           fieldPathOf(filter.field).join('.'),
       ],
       operatorIds = [
         for (final filter in query.filters) filter.operator.serializationId,
       ],
       orderCount = query.orderBy.length,
       hasLimit = query.limit != null,
       hasPolygonFilter = query.filters.any(
         (filter) => filter.value is Polygon,
       ),
       limitValue = query.limit;
}

final class AdvancedSearchQueryShare extends AdvancedSearchQueryAnalyticsEvent {
  @override
  String get objectAction => 'query_share';

  const AdvancedSearchQueryShare();
}

final class AdvancedSearchResultsSearchRun
    extends AdvancedSearchQueryAnalyticsEvent {
  final int queryLength;

  @override
  String get objectAction => 'results_search_run';

  @override
  Json get properties => {'query_length': queryLength};

  const AdvancedSearchResultsSearchRun({required this.queryLength});
}
