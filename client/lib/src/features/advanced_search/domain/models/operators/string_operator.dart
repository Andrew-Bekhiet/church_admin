import 'package:church_admin/church_admin.dart';

enum StringOperator implements Operator<String?> {
  contains('يحتوي على'),
  doesNotContain('لا يحتوي على'),
  startsWith('يبدأ بـ'),
  endsWith('ينتهي بـ'),
  eq('يساوي بالضبط'),
  neq('لا يساوي بالضبط'),
  isEmpty('فارغ'),
  isNotEmpty('ليس فارغاً');

  @override
  final String label;

  @override
  String get serializationId => 'StringOperator.$name';

  @override
  bool get acceptsValue => !{isEmpty, isNotEmpty}.contains(this);

  const StringOperator(this.label);

  @override
  Object? serializeValue(String? value) => value;

  @override
  String? deserializeValue(Object? data) => data?.toString();
}
