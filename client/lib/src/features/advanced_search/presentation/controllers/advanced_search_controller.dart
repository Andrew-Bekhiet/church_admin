import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:rxdart/rxdart.dart';

class AdvancedSearchController {
  static const Duration typingSettleDuration = Duration(milliseconds: 500);

  final AnalyticsService _analyticsService;

  late final StreamSubscription<void> _configSubscription;

  final PublishSubject<AnalyticsEvent?> _typedEdits = PublishSubject();
  late final StreamSubscription<AnalyticsEvent> _typedEditsTracking;

  final BehaviorSubject<AdvancedQuery> _query = BehaviorSubject.seeded(
    AdvancedQuery(
      queryableType: AdvancedQueriesMetadata().person,
      filters: [
        Filter(PersonFields().name, StringOperator.contains, ''),
      ],
      orderBy: [
        OrderBy(field: PersonFields().name),
      ],
    ),
  );

  Stream<AdvancedQuery> get queryStream => _query.stream;

  Stream<QueryableType> get selectedTypeStream =>
      _query.map((q) => q.queryableType).distinct();

  Stream<LogicalOperator> get logicalOperatorStream =>
      _query.map((q) => q.logicalOperator).distinct();

  Stream<List<Filter>> get filtersStream => _query
      .map((q) => q.filters)
      .distinct(const ListEquality<Filter>().equals);

  Stream<int?> get limitStream => _query.map((q) => q.limit).distinct();

  Stream<List<OrderBy>> get orderByStream => _query
      .map((q) => q.orderBy)
      .distinct(const ListEquality<OrderBy>().equals);

  AdvancedQuery get query => _query.value;

  QueryableType get selectedQueryableType => _query.value.queryableType;

  LogicalOperator get logicalOperator => _query.value.logicalOperator;

  List<Filter> get filters => _query.value.filters;

  int? get limit => _query.value.limit;

  List<OrderBy> get orderBy => _query.value.orderBy;

  AdvancedSearchController({AnalyticsService? analyticsService})
    : _analyticsService = analyticsService ?? AnalyticsService.I {
    _configSubscription = FeatureFlagsRepository.I.onConfigChanged.listen(
      (_) => changeQuery(query),
    );
    _typedEditsTracking = _typedEdits
        .debounceTime(typingSettleDuration)
        .whereNotNull()
        .listen(_analyticsService.track);
  }

  void trackOpen({
    required bool hasInitialQuery,
    required bool isAutoExecuted,
  }) => _analyticsService.track(
    AdvancedSearchOpen(
      hasInitialQuery: hasInitialQuery,
      isAutoExecuted: isAutoExecuted,
    ),
  );

  void trackQuerySubmit({required bool isAutoExecuted}) => _analyticsService
      .track(AdvancedSearchQuerySubmit(query, isAutoExecuted: isAutoExecuted));

  void trackQueryShare() =>
      _analyticsService.track(AdvancedSearchQueryShare(query));

  StreamSubscription<String> trackResultsSearchesIn(Stream<String?> searches) =>
      searches
          .debounceTime(typingSettleDuration)
          .whereType<String>()
          .where((search) => search.isNotEmpty)
          .listen(
            (search) => _analyticsService.track(
              AdvancedSearchResultsSearchRun(queryLength: search.length),
            ),
          );

  void changeQuery(AdvancedQuery value) =>
      _query.add(value.withEnabledFields());

  void changeSelectedQueryableType(QueryableType queryableType) {
    final defaultField = queryableType.filterableFields.firstWhere(
      (f) => f != queryableType.keyField && f.operators.isNotEmpty,
      orElse: () => queryableType.filterableFields.first,
    );

    final defaultOrderField = defaultField.isOrderable
        ? defaultField
        : queryableType.orderableFields.firstOrNull;

    _maybeTrackQueryableTypeChange(queryableType);
    changeQuery(
      AdvancedQuery(
        name: query.name,
        queryableType: queryableType,
        filters: [
          Filter(
            defaultField,
            defaultField.operators.first,
            '',
          ),
        ],
        orderBy: [
          if (defaultOrderField case final field?) OrderBy(field: field),
        ],
      ),
    );
  }

  void changeFilters(List<Filter> newFilters) {
    for (final filter in newFilters) {
      _checkFilterType(filter);
    }

    _maybeTrackFilterEdit(filters, newFilters);
    changeQuery(query.copyWith(filters: newFilters));
  }

  void addFilter(Filter newFilter) {
    _checkFilterType(newFilter);

    changeFilters([...filters, newFilter]);
  }

  void replaceFilter(int index, Filter newFilter) {
    _checkFilterType(newFilter);

    changeFilters(
      filters
          .mapIndexed(
            (i, e) => i == index ? newFilter : e,
          )
          .toList(),
    );
  }

  void _checkFilterType(Filter filter) {
    if (filter.field.parentQueryableType != selectedQueryableType) {
      throw ArgumentError(
        'Expected all filters to be of type ${selectedQueryableType.type}, '
        'but got ${filter.field.parentQueryableType.type}',
      );
    }
  }

  void removeFilterAt(int index) {
    changeFilters(filters.whereIndexed((i, e) => i != index).toList());
  }

  void changeLimit(int? limit) {
    _maybeTrackLimitChange(this.limit, limit);
    changeQuery(query.copyWith(limit: limit));
  }

  void clearLimit() {
    _typedEdits.add(null);
    _analyticsService.track(const AdvancedSearchLimitClear());
    changeQuery(query.copyWith(limit: null));
  }

  void changeOrderBy(List<OrderBy> orderBy) =>
      changeQuery(query.copyWith(orderBy: orderBy));

  void addOrderBy(OrderBy newOrderBy) {
    _analyticsService.track(
      AdvancedSearchOrderByAdd(newOrderBy, orderCount: orderBy.length + 1),
    );
    changeOrderBy([...orderBy, newOrderBy]);
  }

  void replaceOrderBy(int index, OrderBy newOrderBy) {
    _maybeTrackOrderByReplacement(index, newOrderBy);
    changeOrderBy(
      orderBy
          .mapIndexed(
            (i, e) => i == index ? newOrderBy : e,
          )
          .toList(),
    );
  }

  void removeOrderByAt(int index) {
    _analyticsService.track(
      AdvancedSearchOrderByRemove(orderCount: orderBy.length - 1),
    );
    changeOrderBy(orderBy.whereIndexed((i, e) => i != index).toList());
  }

  void _maybeTrackQueryableTypeChange(QueryableType next) {
    if (next == selectedQueryableType) return;

    _analyticsService.track(
      AdvancedSearchQueryableTypeChange(from: selectedQueryableType, to: next),
    );
  }

  void _maybeTrackOrderByReplacement(int index, OrderBy replacement) {
    final replaced = orderBy.elementAtOrNull(index);
    if (replaced == replacement) return;

    _analyticsService.track(
      replaced?.field == replacement.field
          ? AdvancedSearchOrderByDirectionToggle(
              replacement,
              orderCount: orderBy.length,
            )
          : AdvancedSearchOrderByChange(
              replacement,
              orderCount: orderBy.length,
            ),
    );
  }

  void _maybeTrackFilterEdit(List<Filter> previous, List<Filter> next) {
    final event = AdvancedSearchFilterEdit.eventForSingleEdit(previous, next);
    if (event is AdvancedSearchFilterValueSet && event.isFreeText) {
      _typedEdits.add(event);
    } else if (event != null) {
      _analyticsService.track(event);
    }
  }

  void _maybeTrackLimitChange(int? previous, int? next) {
    switch ((previous, next)) {
      case (null, final added?):
        _analyticsService.track(AdvancedSearchLimitSet(added));
      case (final previous?, final typed?) when typed != previous:
        _typedEdits.add(AdvancedSearchLimitChange(typed));
      case (_?, null):
        _typedEdits.add(null);
      default:
    }
  }

  Future<void> dispose() async {
    await _typedEditsTracking.cancel();
    await _typedEdits.close();
    await _configSubscription.cancel();
    await _query.close();
  }
}
