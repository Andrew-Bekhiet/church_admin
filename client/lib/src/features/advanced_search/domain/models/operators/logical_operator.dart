import 'package:church_admin/church_admin.dart';

enum LogicalOperator<
  Field extends FieldMetadata,
  OperatorT extends Operator,
  Value extends Object,
  FilterT extends Filter<Value>
>
    implements Operator<List<FilterT>> {
  or('أو'),
  and('و'),
  not('ليس');

  @override
  final String label;

  @override
  String get serializationId => 'LogicalOperator.$name';

  @override
  bool get acceptsValue => true;

  const LogicalOperator(this.label);

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
