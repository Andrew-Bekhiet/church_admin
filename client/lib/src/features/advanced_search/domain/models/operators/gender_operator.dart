import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';

enum GenderOperator implements Operator<Gender?> {
  is$('يساوي'),
  isNot('لا يساوي');

  @override
  final String label;

  @override
  String get serializationId => 'GenderOperator.$name';

  @override
  bool get acceptsValue => true;

  const GenderOperator(this.label);

  @override
  Object? serializeValue(Gender? value) => value?.name;

  @override
  Gender? deserializeValue(Object? data) => switch (data) {
    final String name => Gender.values.firstWhereOrNull(
      (gender) => gender.name == name,
    ),
    _ => null,
  };
}
