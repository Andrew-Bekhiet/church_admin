import 'package:church_admin/church_admin.dart';

enum DateTimeOperator implements Operator<DateTime> {
  isOn('_eq', 'في نفس اليوم'),
  isAfter('_gt', 'بعد'),
  isOnOrAfter('_gte', 'في نفس اليوم أو بعد'),
  isBefore('_lt', 'قبل'),
  isOnOrBefore('_lte', 'في نفس اليوم أو قبل');

  const DateTimeOperator(this._operatorValue, this.label);

  final String _operatorValue;
  @override
  final String label;

  @override
  String get serializationId => 'DateOperator.$name';

  @override
  bool get acceptsValue => true;

  @override
  Json queryToJson(FieldMetadata field, DateTime value) {
    return field.queryToJson({_operatorValue: value.toIso8601String()});
  }

  @override
  Object serializeValue(DateTime value) => value.toIso8601String();

  @override
  DateTime deserializeValue(Object? data) => data is String
      ? DateTime.parse(data)
      : throw ArgumentError('Cannot deserialize DateTime from $data');
}
