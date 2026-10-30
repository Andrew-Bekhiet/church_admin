import 'package:church_admin/church_admin.dart';

enum GenderOperator implements Operator<Gender?> {
  is$('_eq', 'يساوي'),
  isNot('_neq', 'لا يساوي');

  @override
  final String label;
  final String _operatorValue;

  @override
  String get serializationId => 'GenderOperator.$name';

  @override
  bool get acceptsValue => true;

  const GenderOperator(this._operatorValue, this.label);

  @override
  Json queryToJson(FieldMetadata field, Gender? filterValue) {
    if (filterValue?.isMale case final isMale?) {
      return field.queryToJson({_operatorValue: isMale});
    }

    return field.queryToJson({'_isNull': this == GenderOperator.is$});
  }

  @override
  Object? serializeValue(Gender? value) => value?.name;

  @override
  Gender? deserializeValue(Object? data) => switch (data) {
    final String name => Gender.values.byName(name),
    _ => null,
  };
}
