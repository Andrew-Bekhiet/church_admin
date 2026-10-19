import 'package:church_admin/church_admin.dart';

enum BirthdayOperator implements Operator<String?> {
  equals;

  @override
  final String label = '=';

  @override
  String get serializationId => 'BirthdayOperator.$name';

  @override
  bool get acceptsValue => true;

  const BirthdayOperator();

  @override
  Object? serializeValue(String? value) => value;

  @override
  String? deserializeValue(Object? data) => data?.toString();
}
