import 'package:church_admin_generator/src/model/field_metadata_spec.dart';

sealed class QueryableField {
  final String name;

  String get memberName => name == 'class' ? r'class$' : name;

  const QueryableField({required this.name});
}

final class DirectField extends QueryableField {
  final FieldMetadataSpec metadata;

  const DirectField({required this.metadata, required super.name});
}

final class ManyToManyField extends QueryableField {
  final FieldMetadataSpec through;
  final String throughTypeName;
  final String targetTypeName;
  final String targetMemberName;

  String get throughMemberName => '${memberName}Rel';

  const ManyToManyField({
    required this.through,
    required this.throughTypeName,
    required this.targetTypeName,
    required this.targetMemberName,
    required super.name,
  });
}
