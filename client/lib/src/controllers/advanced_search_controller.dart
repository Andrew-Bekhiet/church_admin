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
      orderBy: [
        const OrderBy(field: 'name'),
      ],
    ),
  );

  Stream<AdvancedQuery> get queryStream => _query.stream;

  Stream<Type> get selectedTypeStream =>
      _query.map((q) => q.conditions.first.type);
  Stream<List<Condition>> get conditionsStream =>
      _query.map((q) => q.conditions);
  Stream<int?> get limitStream => _query.map((q) => q.limit);
  Stream<List<OrderBy>> get orderByStream => _query.map((q) => q.orderBy);

  AdvancedQuery get currentQuery => _query.value;

  Type get selectedType => _query.value.conditions.first.type;
  List<Condition> get conditions => _query.value.conditions;
  int? get limit => _query.value.limit;
  List<OrderBy> get orderBy => _query.value.orderBy;

  void changeSelectedType(Type type) {
    _query.add(
      AdvancedQuery(
        name: currentQuery.name,
        conditions: [
          Condition(type: type, field: 'name', operator: Operator.ilike),
        ],
        orderBy: [
          const OrderBy(field: 'name'),
        ],
      ),
    );
  }

  void changeConditions(List<Condition> conditions) {
    _query.add(currentQuery.copyWith(conditions: conditions));
  }

  void replaceCondition(int index, Condition newCondition) {
    changeConditions(
      conditions
          .mapIndexed(
            (i, e) => i == index ? newCondition : e,
          )
          .toList(),
    );
  }

  void removeCondition(int index) {
    changeConditions(conditions.whereIndexed((i, e) => i != index).toList());
  }

  void changeLimit(int? limit) =>
      _query.add(currentQuery.copyWith(limit: limit));

  void changeOrderBy(List<OrderBy> orderBy) =>
      _query.add(currentQuery.copyWith(orderBy: orderBy));

  void changeQuery(AdvancedQuery value) => _query.add(value);

  void replaceOrderBy(int index, OrderBy newOrderBy) {
    changeOrderBy(
      orderBy
          .mapIndexed(
            (i, e) => i == index ? newOrderBy : e,
          )
          .toList(),
    );
  }

  void removeOrderBy(int index) {
    changeOrderBy(orderBy.whereIndexed((i, e) => i != index).toList());
  }

  Future<void> dispose() async {
    await _query.close();
  }
}
