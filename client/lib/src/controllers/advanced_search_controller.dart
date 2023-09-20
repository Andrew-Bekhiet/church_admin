import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:rxdart/rxdart.dart';

class AdvancedSearchController {
  final BehaviorSubject<AdvancedQuery> _query = BehaviorSubject.seeded(
    AdvancedQuery(
      name: '',
      conditions: [
        Condition(type: Person, field: 'name', operator: Operator.ilike),
      ],
      orderBy: const [
        OrderBy(field: 'name'),
      ],
    ),
  );

  Stream<AdvancedQuery> get queryStream => _query.stream;

  Stream<Type> get selectedTypeStream =>
      _query.map((q) => q.conditions.first.type).distinct();

  Stream<List<Condition>> get conditionsStream =>
      _query.map((q) => q.conditions).distinct();

  Stream<int?> get limitStream => _query.map((q) => q.limit).distinct();

  Stream<List<OrderBy>> get orderByStream =>
      _query.map((q) => q.orderBy).distinct();

  AdvancedQuery get query => _query.value;

  Type get selectedType => _query.value.conditions.first.type;

  List<Condition> get conditions => _query.value.conditions;

  int? get limit => _query.value.limit;

  List<OrderBy> get orderBy => _query.value.orderBy;

  void changeQuery(AdvancedQuery value) => _query.add(value);

  void changeSelectedType(Type type, String field) {
    _query.add(
      AdvancedQuery(
        name: query.name,
        conditions: [
          Condition(type: type, field: field, operator: Operator.eq),
        ],
        orderBy: [
          OrderBy(field: field),
        ],
      ),
    );
  }

  void changeConditions(List<Condition> newConditions) {
    for (final condition in newConditions) {
      _checkConditionType(condition, newConditions.first.type);
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

  void _checkConditionType(Condition condition, [Type? requiredType]) {
    requiredType ??= selectedType;

    if (condition.type != requiredType) {
      throw ArgumentError(
        'Expected all conditions to be o type $requiredType, but got ${condition.type}',
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
