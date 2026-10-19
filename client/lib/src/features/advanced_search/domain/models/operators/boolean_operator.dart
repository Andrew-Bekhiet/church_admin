import 'package:church_admin/church_admin.dart';

enum BooleanOperator implements Operator<bool?> {
  is$('يساوي'),
  isNot('لا يساوي');

  @override
  final String label;

  @override
  String get serializationId => 'BooleanOperator.$name';

  @override
  bool get acceptsValue => true;

  const BooleanOperator(this.label);

  @override
  Object? serializeValue(bool? value) => value;

  @override
  bool? deserializeValue(Object? data) => data is bool? ? data : false;
}
