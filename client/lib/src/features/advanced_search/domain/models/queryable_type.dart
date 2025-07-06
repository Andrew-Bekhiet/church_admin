import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';

class QueryableType<T extends Object> with EquatableMixin {
  final String name;
  final String label;
  final Map<String, FieldMetadata> fieldsMetadataByName;
  final List<FieldMetadata> fieldsMetadata;
  final T Function(Json) fromJson;

  QueryableType({
    required this.name,
    required this.label,
    required this.fromJson,
    this.fieldsMetadataByName = const {},
    this.fieldsMetadata = const [],
  });

  Type get type => T;

  StreamableDAO? get dao => DatabaseService.I.daosByType[T] as StreamableDAO?;
  bool get isSelectableAsReference => dao != null;

  bool hasField(String fieldName) {
    return fieldsMetadataByName.containsKey(fieldName);
  }

  @override
  List<Object?> get props => [name, label, fieldsMetadataByName, fromJson];
}
