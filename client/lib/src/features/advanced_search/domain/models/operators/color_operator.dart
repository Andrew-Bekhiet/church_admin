import 'package:church_admin/church_admin.dart';
import 'package:flutter/widgets.dart';

enum ColorOperator implements Operator<Color?> {
  eq('_eq', 'يساوي'),
  neq('_neq', 'لا يساوي');

  @override
  final String label;
  final String _value;

  @override
  String get serializationId => 'ColorOperator.$name';

  @override
  bool get acceptsValue => true;

  const ColorOperator(this._value, this.label);

  @override
  Json queryToJson(FieldMetadata field, Color? filterValue) {
    if (filterValue == null) {
      return field.queryToJson({'_isNull': this == ColorOperator.eq});
    }

    return field.queryToJson({_value: filterValue.argbValue});
  }

  @override
  Object? serializeValue(Color? value) {
    return colorToInt(value);
  }

  @override
  Color? deserializeValue(Object? data) {
    return colorFromInt(data as int?);
  }
}
