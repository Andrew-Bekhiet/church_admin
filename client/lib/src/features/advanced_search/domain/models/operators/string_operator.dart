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

  const StringOperator(this.label);

  @override
  final String label;

  @override
  String get serializationId => 'StringOperator.$name';

  @override
  bool get acceptsValue => !{isEmpty, isNotEmpty}.contains(this);

  @override
  Json queryToJson(FieldMetadata field, String? filterValue) {
    final value = filterValue ?? '';

    return switch (this) {
      StringOperator.eq => field.queryToJson({'_eq': value}),
      StringOperator.neq => field.queryToJson({'_neq': value}),
      StringOperator.contains => field.queryToJson({'_ilike': '%$value%'}),
      StringOperator.doesNotContain => field.queryToJson({
        '_nilike': '%$value%',
      }),
      StringOperator.startsWith => field.queryToJson({'_ilike': '$value%'}),
      StringOperator.endsWith => field.queryToJson({'_ilike': '%$value'}),
      StringOperator.isEmpty => {
        '_or': [
          field.queryToJson({'_eq': ''}),
          field.queryToJson({'_isNull': true}),
        ],
      },
      StringOperator.isNotEmpty => {
        '_and': [
          field.queryToJson({'_neq': ''}),
          field.queryToJson({'_isNull': false}),
        ],
      },
    };
  }

  @override
  Object? serializeValue(String? value) => value;

  @override
  String? deserializeValue(Object? data) => data?.toString();
}
