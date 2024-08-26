import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';

class QueryableType<T extends Object> with EquatableMixin {
  final String name;
  final String label;
  final Map<String, FieldMetadata> fieldsMetadata;
  final T Function(Json) fromJson;

  QueryableType({
    required this.name,
    required this.label,
    required this.fromJson,
    this.fieldsMetadata = const {},
  });

  Type get type => T;

  // ignore: no-object-declaration
  Object get dummyInstance => AdvancedQueriesMetadata.dummyInstanceForType[T]!;

  StreamableDAO? get dao => DatabaseService.I.daosByType[T] as StreamableDAO?;

  @override
  List<Object?> get props => [name, label, fieldsMetadata, fromJson];
}
