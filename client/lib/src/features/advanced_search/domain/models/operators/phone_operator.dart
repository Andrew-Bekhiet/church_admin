import 'package:church_admin/church_admin.dart';

enum PhoneOperator implements Operator<String?> {
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
  String get serializationId => 'PhoneOperator.$name';

  @override
  bool get acceptsValue => !{isEmpty, isNotEmpty}.contains(this);

  const PhoneOperator(this.label);

  @override
  Object? serializeValue(String? value) => value;

  @override
  String? deserializeValue(Object? data) => data?.toString();
}
