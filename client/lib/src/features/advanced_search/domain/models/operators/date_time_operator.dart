import 'package:church_admin/church_admin.dart';

enum DateTimeOperator implements Operator<DateTime> {
  isOn('في نفس اليوم'),
  isAfter('بعد'),
  isOnOrAfter('في نفس اليوم أو بعد'),
  isBefore('قبل'),
  isOnOrBefore('في نفس اليوم أو قبل');

  @override
  final String label;

  @override
  String get serializationId => 'DateOperator.$name';

  @override
  bool get acceptsValue => true;

  const DateTimeOperator(this.label);

  @override
  Object serializeValue(DateTime value) => value.toUtc().toIso8601String();

  @override
  DateTime deserializeValue(Object? data) => data is String
      ? DateTime.parse(data).toLocal()
      : throw ArgumentError('Cannot deserialize DateTime from $data');
}
