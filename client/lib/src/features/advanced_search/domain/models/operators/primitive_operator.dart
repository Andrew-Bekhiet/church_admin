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
  eq('_eq', 'يساوي'),
  neq('_neq', 'لا يساوي'),
  lt('_lt', '<'),
  lte('_lte', '<='),
  gt('_gt', '>'),
  gte('_gte', '>='),
  isNull('_isNull', 'فارغ'),
  isNotNull('_isNotNull', 'ليس فارغاً');

  const PrimitiveOperator(this._operatorValue, this.label);

  final String _operatorValue;
  @override
  final String label;

  @override
  String get serializationId => 'PrimitiveOperator.$name';

  @override
  bool get acceptsValue => !{isNull, isNotNull}.contains(this);

  @override
  Json queryToJson(FieldMetadata field, V? filterValue) {
    if (this == isNull || this == isNotNull) {
      return field.queryToJson({'_isNull': this == isNull});
    }

    _assertIsPrimitiveValidType(filterValue);

    return field.queryToJson({_operatorValue: filterValue});
  }

  @override
  Object? serializeValue(V? value) {
    if (this == isNull || this == isNotNull) {
      return null;
    }

    _assertIsPrimitiveValidType(value);

    switch (value) {
      case DateTime():
        return value..toUtc().toIso8601String();

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
