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

sealed class AdvancedSearchQueryRunAnalyticsEvent
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

  @override
  Json get properties => {
    'queryable_type': queryableType,
    'logical_operator': logicalOperator.name,
    'filter_count': fieldNames.length,
    'field_names': fieldNames,
    'operator_ids': operatorIds,
    'order_count': orderCount,
    'has_limit': hasLimit,
  };

  AdvancedSearchQueryRunAnalyticsEvent(AdvancedQuery query)
    : queryableType = query.queryableType.name,
      logicalOperator = query.logicalOperator,
      fieldNames = [
        for (final filter in query.filters) fieldPathOf(filter.field).join('.'),
      ],
      operatorIds = [
        for (final filter in query.filters) filter.operator.serializationId,
      ],
      orderCount = query.orderBy.length,
      hasLimit = query.limit != null;
}

final class AdvancedSearchQuerySubmit
    extends AdvancedSearchQueryRunAnalyticsEvent {
  final bool isAutoExecuted;
  final int filterEditCount;
  final int maxNestedDepth;
  final bool hasPolygonFilter;
  final int? limitValue;

  @override
  String get objectAction => 'query_submit';

  @override
  Json get properties => {
    ...super.properties,
    'is_auto_executed': isAutoExecuted,
    'filter_edit_count': filterEditCount,
    'max_nested_depth': maxNestedDepth,
    'has_polygon_filter': hasPolygonFilter,
    'limit_value': ?limitValue,
  };

  AdvancedSearchQuerySubmit(
    super.query, {
    required this.isAutoExecuted,
    required this.filterEditCount,
  }) : maxNestedDepth = [
         0,
         for (final filter in query.filters)
           AdvancedSearchQueryRunAnalyticsEvent.fieldPathOf(
                 filter.field,
               ).length -
               1,
       ].max,
       hasPolygonFilter = query.filters.any(
         (filter) => filter.value is Polygon,
       ),
       limitValue = query.limit;
}

final class AdvancedSearchQueryShare
    extends AdvancedSearchQueryRunAnalyticsEvent {
  @override
  String get objectAction => 'query_share';

  AdvancedSearchQueryShare(super.query);
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
