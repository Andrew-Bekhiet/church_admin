import 'package:church_admin_generator/src/model/field_metadata_spec.dart';

sealed class QueryableField {
  final String name;
  final String memberName;

  const QueryableField({required this.name, required this.memberName});
}

final class DirectField extends QueryableField {
  final FieldMetadataSpec metadata;

  const DirectField({
    required this.metadata,
    required super.name,
    required super.memberName,
  });
}

final class ManyToManyField extends QueryableField {
  final FieldMetadataSpec through;
  final String throughTypeName;
  final String targetTypeName;
  final String targetMemberName;
  final String? label;

  String get throughMemberName => '${memberName}Rel';

  const ManyToManyField({
    required this.through,
    required this.throughTypeName,
    required this.targetTypeName,
    required this.targetMemberName,
    required super.name,
    required super.memberName,
    this.label,
  });
}
