import 'package:church_admin/church_admin.dart';

bool _assertIsPrimitiveValidType(Object? value) {
  assert(
    value is String ||
        value is num ||
        value is bool ||
        value is DateTime ||
        (value is List &&
            (value.isEmpty || _assertIsPrimitiveValidType(value.first))),
    'PrimitiveOperator supports only String, num, bool, DateTime, or List types',
  );

  return true;
}

enum PrimitiveOperator<V> implements Operator<V?> {
  eq('يساوي'),
  neq('لا يساوي'),
  lt('<'),
  lte('<='),
  gt('>'),
  gte('>='),
  isNull('فارغ'),
  isNotNull('ليس فارغاً');

  @override
  final String label;

  @override
  String get serializationId => 'PrimitiveOperator.$name';

  @override
  bool get acceptsValue => !{isNull, isNotNull}.contains(this);

  const PrimitiveOperator(this.label);

  @override
  Object? serializeValue(V? value) {
    if (this == isNull || this == isNotNull) {
      return null;
    }

    _assertIsPrimitiveValidType(value);

    switch (value) {
      case DateTime():
        return value.toUtc().toIso8601String();

      case _:
        return value as Object?;
    }
  }

  @override
  V? deserializeValue(Object? data) {
    return data is V
        ? data
        : this == isNull || this == isNotNull
        ? null
        : DateTime.tryParse(data.toString())?.toLocal() as V? ??
              (throw ArgumentError('Cannot deserialize $V from $data'));
  }
}
