import 'package:church_admin_generator/src/model/operator_family.dart';

final class FieldMetadataSpec {
  final String typeName;
  final String label;
  final bool isCodeOnly;
  final bool isOrderable;
  final OperatorFamily? operatorFamily;
  final bool isNullable;

  const FieldMetadataSpec({
    required this.typeName,
    required this.label,
    required this.operatorFamily,
    required this.isNullable,
    this.isCodeOnly = false,
    this.isOrderable = true,
  });
}
