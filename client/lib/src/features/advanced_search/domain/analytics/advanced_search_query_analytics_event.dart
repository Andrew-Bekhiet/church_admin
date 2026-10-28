part of 'package:church_admin/src/core/analytics/domain/models/analytics_event.dart';

sealed class AdvancedSearchQueryAnalyticsEvent extends AnalyticsEvent {
  @override
  String get category => 'advanced_search';

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

final class AdvancedSearchQueryableTypeChange
    extends AdvancedSearchQueryAnalyticsEvent {
  final String fromQueryableType;
  final String toQueryableType;

  @override
  String get objectAction => 'queryable_type_change';

  @override
  Json get properties => {
    'from_queryable_type': fromQueryableType,
    'to_queryable_type': toQueryableType,
  };

  AdvancedSearchQueryableTypeChange({
    required QueryableType from,
    required QueryableType to,
  }) : fromQueryableType = from.name,
       toQueryableType = to.name;
}

sealed class AdvancedSearchOrderByAnalyticsEvent
    extends AdvancedSearchQueryAnalyticsEvent {
  final String fieldName;
  final OrderByValue sortDirection;
  final int orderCount;

  @override
  Json get properties => {
    'field_name': fieldName,
    'sort_direction': sortDirection.name,
    'order_count': orderCount,
  };

  AdvancedSearchOrderByAnalyticsEvent(
    OrderBy orderBy, {
    required this.orderCount,
  }) : fieldName = AdvancedSearchFilterAnalyticsEvent.fieldPathOf(
         orderBy.field,
       ).join('.'),
       sortDirection = orderBy.value;
}

final class AdvancedSearchOrderByAdd
    extends AdvancedSearchOrderByAnalyticsEvent {
  @override
  String get objectAction => 'order_by_add';

  AdvancedSearchOrderByAdd(super.orderBy, {required super.orderCount});
}

final class AdvancedSearchOrderByChange
    extends AdvancedSearchOrderByAnalyticsEvent {
  @override
  String get objectAction => 'order_by_change';

  AdvancedSearchOrderByChange(super.orderBy, {required super.orderCount});
}

final class AdvancedSearchOrderByDirectionToggle
    extends AdvancedSearchOrderByAnalyticsEvent {
  @override
  String get objectAction => 'order_by_direction_toggle';

  AdvancedSearchOrderByDirectionToggle(
    super.orderBy, {
    required super.orderCount,
  });
}

final class AdvancedSearchOrderByRemove
    extends AdvancedSearchQueryAnalyticsEvent {
  final int orderCount;

  @override
  String get objectAction => 'order_by_remove';

  @override
  Json get properties => {'order_count': orderCount};

  const AdvancedSearchOrderByRemove({required this.orderCount});
}

final class AdvancedSearchLimitSet extends AdvancedSearchQueryAnalyticsEvent {
  final int limitValue;

  @override
  String get objectAction => 'limit_set';

  @override
  Json get properties => {'limit_value': limitValue};

  const AdvancedSearchLimitSet(this.limitValue);
}

final class AdvancedSearchLimitChange
    extends AdvancedSearchQueryAnalyticsEvent {
  final int limitValue;

  @override
  String get objectAction => 'limit_change';

  @override
  Json get properties => {'limit_value': limitValue};

  const AdvancedSearchLimitChange(this.limitValue);
}

final class AdvancedSearchLimitClear extends AdvancedSearchQueryAnalyticsEvent {
  @override
  String get objectAction => 'limit_clear';

  const AdvancedSearchLimitClear();
}

sealed class AdvancedSearchQueryRunAnalyticsEvent
    extends AdvancedSearchQueryAnalyticsEvent {
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
        for (final filter in query.filters)
          AdvancedSearchFilterAnalyticsEvent.fieldPathOf(
            filter.field,
          ).join('.'),
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

  @override
  String get objectAction => 'query_submit';

  @override
  Json get properties => {
    ...super.properties,
    'is_auto_executed': isAutoExecuted,
  };

  AdvancedSearchQuerySubmit(
    super.query, {
    required this.isAutoExecuted,
  });
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
