import 'package:church_admin/church_admin.dart';
import 'package:flutter/widgets.dart';

enum ColorOperator implements Operator<Color?> {
  eq('يساوي'),
  neq('لا يساوي');

  @override
  final String label;

  @override
  String get serializationId => 'ColorOperator.$name';

  @override
  bool get acceptsValue => true;

  const ColorOperator(this.label);

  @override
  Object? serializeValue(Color? value) {
    return colorToInt(value);
  }

  @override
  Color? deserializeValue(Object? data) {
    return colorFromInt(data as int?);
  }
}
