import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:rxdart/rxdart.dart';

class AdvancedSearchController {
  final BehaviorSubject<AdvancedQuery> _query = BehaviorSubject.seeded(
    AdvancedQuery(
      name: '',
      queryableType: AdvancedQueriesMetadata.queryableTypes[Person]!,
      conditions: [
        Condition(
          queryableType: AdvancedQueriesMetadata.queryableTypes[Person]!,
          field: 'name',
          operator: Operator.ilike,
          value: '%%',
        ),
      ],
      orderBy: [
        OrderBy(fieldName: 'name'),
      ],
    ),
  );

  final BehaviorSubject<bool> _hideAdvancedOperators =
      BehaviorSubject.seeded(true);

  Stream<bool> get hideAdvancedOperatorsStream => _hideAdvancedOperators.stream;

  Stream<AdvancedQuery> get queryStream => _query.stream;

  Stream<QueryableType> get selectedTypeStream =>
      _query.map((q) => q.queryableType).distinct();

  Stream<LogicalOperator> get logicalOperatorStream =>
      _query.map((q) => q.logicalOperator).distinct();

  Stream<List<Condition>> get conditionsStream =>
      _query.map((q) => q.conditions).distinct();

  Stream<int?> get limitStream => _query.map((q) => q.limit).distinct();

  Stream<List<OrderBy>> get orderByStream =>
      _query.map((q) => q.orderBy).distinct();

  bool get hideAdvancedOperators => _hideAdvancedOperators.value;

  AdvancedQuery get query => _query.value;

  QueryableType get selectedQueryableType => _query.value.queryableType;

  LogicalOperator get logicalOperator => _query.value.logicalOperator;

  List<Condition> get conditions => _query.value.conditions;

  int? get limit => _query.value.limit;

  List<OrderBy> get orderBy => _query.value.orderBy;

  void toggleHideAdvancedOperators() =>
      _hideAdvancedOperators.add(!_hideAdvancedOperators.value);

  void changeQuery(AdvancedQuery value) => _query.add(value);

  void changeSelectedQueryableType(QueryableType queryableType) {
    final defaultField =
        queryableType.fieldsMetadata.keys.firstWhere((p) => p != 'id');

    _query.add(
      AdvancedQuery(
        name: query.name,
        queryableType: queryableType,
        conditions: [
          Condition(
            queryableType: queryableType,
            field: defaultField,
            operator: Operator.eq,
          ),
        ],
        orderBy: [
          OrderBy(fieldName: defaultField),
        ],
      ),
    );
  }

  void changeConditions(List<Condition> newConditions) {
    for (final condition in newConditions) {
      _checkConditionType(condition);
    }

    _query.add(query.copyWith(conditions: newConditions));
  }

  void addCondition(Condition newCondition) {
    _checkConditionType(newCondition);

    changeConditions([...conditions, newCondition]);
  }

  void replaceCondition(int index, Condition newCondition) {
    _checkConditionType(newCondition);

    changeConditions(
      conditions
          .mapIndexed(
            (i, e) => i == index ? newCondition : e,
          )
          .toList(),
    );
  }

  void _checkConditionType(Condition condition) {
    if (condition.queryableType != selectedQueryableType) {
      throw ArgumentError(
        'Expected all conditions to be of type ${selectedQueryableType.type}, '
        'but got ${condition.queryableType.type}',
      );
    }
  }

  void removeConditionAt(int index) {
    changeConditions(conditions.whereIndexed((i, e) => i != index).toList());
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
