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
  Json queryToJson(FieldMetadata field, String? filterValue) {
    final value = filterValue ?? '';

    return field.queryToJson({'_ilike': value});
  }

  @override
  Object? serializeValue(String? value) => value;

  @override
  String? deserializeValue(Object? data) => data?.toString();
}
