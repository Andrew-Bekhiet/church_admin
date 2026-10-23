import 'package:church_admin/church_admin.dart';

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
  final QueryableType from;
  final QueryableType to;

  @override
  String get objectAction => 'queryable_type_change';

  @override
  Json get properties => {'from_type': from.name, 'type': to.name};

  const AdvancedSearchQueryableTypeChange({
    required this.from,
    required this.to,
  });
}

sealed class AdvancedSearchOrderByAnalyticsEvent
    extends AdvancedSearchQueryAnalyticsEvent {
  final OrderBy orderBy;
  final int orderCount;

  @override
  Json get properties => {
    'field_name': AdvancedSearchFilterAnalyticsEvent.fieldPathOf(
      orderBy.field,
    ).join('.'),
    'direction': orderBy.value.name,
    'order_count': orderCount,
  };

  const AdvancedSearchOrderByAnalyticsEvent(
    this.orderBy, {
    required this.orderCount,
  });
}

final class AdvancedSearchOrderByAdd
    extends AdvancedSearchOrderByAnalyticsEvent {
  @override
  String get objectAction => 'order_by_add';

  const AdvancedSearchOrderByAdd(super.orderBy, {required super.orderCount});
}

final class AdvancedSearchOrderByChange
    extends AdvancedSearchOrderByAnalyticsEvent {
  @override
  String get objectAction => 'order_by_change';

  const AdvancedSearchOrderByChange(super.orderBy, {required super.orderCount});
}

final class AdvancedSearchOrderByDirectionToggle
    extends AdvancedSearchOrderByAnalyticsEvent {
  @override
  String get objectAction => 'order_by_direction_toggle';

  const AdvancedSearchOrderByDirectionToggle(
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
  final int limit;

  @override
  String get objectAction => 'limit_set';

  @override
  Json get properties => {'limit': limit};

  const AdvancedSearchLimitSet(this.limit);
}

final class AdvancedSearchLimitClear extends AdvancedSearchQueryAnalyticsEvent {
  @override
  String get objectAction => 'limit_clear';

  const AdvancedSearchLimitClear();
}

sealed class AdvancedSearchQueryRunAnalyticsEvent
    extends AdvancedSearchQueryAnalyticsEvent {
  final AdvancedQuery query;

  @override
  Json get properties => {
    'type': query.queryableType.name,
    'logical_operator': query.logicalOperator.name,
    'filter_count': query.filters.length,
    'field_names': [
      for (final filter in query.filters)
        AdvancedSearchFilterAnalyticsEvent.fieldPathOf(filter.field).join('.'),
    ],
    'operator_ids': [
      for (final filter in query.filters) filter.operator.serializationId,
    ],
    'order_count': query.orderBy.length,
    'has_limit': query.limit != null,
  };

  const AdvancedSearchQueryRunAnalyticsEvent(this.query);
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

  const AdvancedSearchQuerySubmit(
    super.query, {
    required this.isAutoExecuted,
  });
}

final class AdvancedSearchQueryShare
    extends AdvancedSearchQueryRunAnalyticsEvent {
  @override
  String get objectAction => 'query_share';

  const AdvancedSearchQueryShare(super.query);
}

final class AdvancedSearchResultsSearch
    extends AdvancedSearchQueryAnalyticsEvent {
  final int queryLength;

  @override
  String get objectAction => 'results_search';

  @override
  Json get properties => {'query_length': queryLength};

  const AdvancedSearchResultsSearch({required this.queryLength});
}
