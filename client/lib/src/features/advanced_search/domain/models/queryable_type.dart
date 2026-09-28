import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';

class QueryableType<T extends Object> with Equatable {
  final String name;
  final String label;
  final Map<String, FieldMetadata> fieldsMetadataByName;
  final List<FieldMetadata> fieldsMetadata;
  final List<T> enumValues;
  final bool isEnum;
  final T Function(Json)? fromJson;
  final T Function(String)? byName;

  Type get type => T;

  StreamableDAO? get dao =>
      isEnum ? null : DatabaseService.I.daosByType[T] as StreamableDAO?;

  bool get isSelectableAsReference => isEnum || dao != null;

  FieldMetadata? get keyField =>
      fieldsMetadataByName['id'] ?? fieldsMetadataByName['uid'];

  @override
  List<Object?> get props => [name, label, fieldsMetadataByName, fromJson];

  QueryableType({
    required this.name,
    required this.label,
    required T Function(Json) this.fromJson,
    this.fieldsMetadataByName = const {},
    this.fieldsMetadata = const [],
  }) : byName = null,
       enumValues = const [],
       isEnum = false;

  QueryableType.enum$({
    required this.name,
    required this.label,
    required T Function(String) this.byName,
    required this.enumValues,
  }) : fieldsMetadataByName = const {},
       fieldsMetadata = const [],
       fromJson = null,
       isEnum = true;

  bool hasField(String fieldName) {
    return fieldsMetadataByName.containsKey(fieldName);
  }
}
