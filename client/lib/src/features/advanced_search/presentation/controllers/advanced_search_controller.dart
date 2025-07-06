import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:rxdart/rxdart.dart';

class AdvancedSearchController {
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

  Stream<List<Filter>> get filtersStream =>
      _query.map((q) => q.filters).distinct();

  Stream<int?> get limitStream => _query.map((q) => q.limit).distinct();

  Stream<List<OrderBy>> get orderByStream =>
      _query.map((q) => q.orderBy).distinct();

  AdvancedQuery get query => _query.value;

  QueryableType get selectedQueryableType => _query.value.queryableType;

  LogicalOperator get logicalOperator => _query.value.logicalOperator;

  List<Filter> get filters => _query.value.filters;

  int? get limit => _query.value.limit;

  List<OrderBy> get orderBy => _query.value.orderBy;

  void changeQuery(AdvancedQuery value) => _query.add(value);

  void changeSelectedQueryableType(QueryableType queryableType) {
    final defaultField = queryableType.fieldsMetadata.firstWhere(
      (p) => !p.name.endsWith('id') && p.operators.isNotEmpty,
      orElse: () => queryableType.fieldsMetadata.first,
    );

    _query.add(
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
          OrderBy(field: defaultField),
        ],
      ),
    );
  }

  void changeFilters(List<Filter> newFilters) {
    for (final filter in newFilters) {
      _checkFilterType(filter);
    }

    _query.add(query.copyWith(filters: newFilters));
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

  void changeLimit(int? limit) => _query.add(query.copyWith(limit: limit));

  void changeOrderBy(List<OrderBy> orderBy) =>
      _query.add(query.copyWith(orderBy: orderBy));

  void addOrderBy(OrderBy newOrderBy) {
    changeOrderBy([...orderBy, newOrderBy]);
  }

  void replaceOrderBy(int index, OrderBy newOrderBy) {
    changeOrderBy(
      orderBy
          .mapIndexed(
            (i, e) => i == index ? newOrderBy : e,
          )
          .toList(),
    );
  }

  void removeOrderByAt(int index) {
    changeOrderBy(orderBy.whereIndexed((i, e) => i != index).toList());
  }

  Future<void> dispose() async {
    await _query.close();
  }
}
