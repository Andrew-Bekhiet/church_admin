import 'package:church_admin/church_admin.dart';

enum LogicalOperator<
  Field extends FieldMetadata,
  OperatorT extends Operator,
  Value extends Object,
  FilterT extends Filter<Value>
>
    implements Operator<List<FilterT>> {
  or('_or', 'أو'),
  and('_and', 'و'),
  not('_not', 'ليس');

  @override
  final String label;
  final String _value;

  @override
  String get serializationId => 'LogicalOperator.$name';

  @override
  bool get acceptsValue => true;

  const LogicalOperator(this._value, this.label);

  @override
  Json queryToJson(FieldMetadata field, List<FilterT> filterValue) {
    if (this == LogicalOperator.not && filterValue.length == 1) {
      return {_value: field.queryToJson(filterValue.single.queryToJson())};
    } else if (this == LogicalOperator.not) {
      return {_value: and.queryToJson(field, filterValue)};
    }

    return field.queryToJson({
      _value: filterValue.map((e) => e.queryToJson()).toList(),
    });
  }

  @override
  Object serializeValue(List<FilterT> value) {
    return value.map((e) => e.toJson()).toList();
  }

  @override
  List<FilterT> deserializeValue(Object? data) {
    if (data is List) {
      return data.map((e) => Filter.fromJson(e as Json) as FilterT).toList();
    } else {
      throw ArgumentError('Cannot deserialize List<FilterT> from $data');
    }
  }
}
