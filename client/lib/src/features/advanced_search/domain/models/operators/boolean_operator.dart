import 'package:church_admin/church_admin.dart';

enum BooleanOperator implements Operator<bool?> {
  is$('_eq', 'يساوي'),
  isNot('_neq', 'لا يساوي');

  @override
  final String label;
  final String _operatorValue;

  @override
  String get serializationId => 'BooleanOperator.$name';

  @override
  bool get acceptsValue => true;

  const BooleanOperator(this._operatorValue, this.label);

  @override
  Json queryToJson(FieldMetadata field, bool? filterValue) {
    if (filterValue == null) {
      return field.queryToJson({'_isNull': this == BooleanOperator.is$});
    }

    return field.queryToJson({_operatorValue: filterValue});
  }

  @override
  Object? serializeValue(bool? value) => value;

  @override
  bool? deserializeValue(Object? data) => data is bool? ? data : false;
}
