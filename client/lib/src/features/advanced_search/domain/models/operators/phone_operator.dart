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
  Json queryToJson(FieldMetadata field, String? filterValue) {
    final typed = filterValue ?? '';
    late final containing = {
      '_ilike': '%${PhoneNumberFormat.normalizeForSearch(typed)}%',
    };
    late final equal = {
      '_eq': const PhoneNumberService().toE164(typed) ?? typed,
    };
    const anyNumber = {'_isNull': false};

    return switch (this) {
      PhoneOperator.contains => field.queryToJson(containing),
      PhoneOperator.doesNotContain => {'_not': field.queryToJson(containing)},
      PhoneOperator.startsWith => field.queryToJson({
        '_ilike': '${PhoneNumberFormat.toInternationalStart(typed)}%',
      }),
      PhoneOperator.endsWith => field.queryToJson({
        '_ilike': '%${PhoneNumberFormat.withoutSeparators(typed)}',
      }),
      PhoneOperator.eq => field.queryToJson(equal),
      PhoneOperator.neq => {'_not': field.queryToJson(equal)},
      PhoneOperator.isNotEmpty => field.queryToJson(anyNumber),
      PhoneOperator.isEmpty => {'_not': field.queryToJson(anyNumber)},
    };
  }

  @override
  Object? serializeValue(String? value) => value;

  @override
  String? deserializeValue(Object? data) => data?.toString();
}
