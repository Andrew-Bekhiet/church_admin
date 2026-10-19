import 'package:church_admin/church_admin.dart';
import 'package:gql/ast.dart';
import 'package:meta/meta.dart';

@immutable
class UpdateObjectConfig<T> extends DAOMethodTemplate<T?> {
  final ObjectVarsConstructor<T> varsConstructor;

  const UpdateObjectConfig({
    required this.varsConstructor,
    required super.document,
    super.operationName,
    super.parserFn,
  });

  UpdateObjectConfig<T> copyWith({
    DocumentNode? document,
    String? operationName,
    ObjectVarsConstructor<T>? varsConstructor,
    T? Function(Json)? parserFn,
  }) => UpdateObjectConfig<T>(
    document: document ?? this.document,
    operationName: operationName ?? effectiveOperationName,
    varsConstructor: varsConstructor ?? this.varsConstructor,
    parserFn: parserFn ?? this.parserFn,
  );
}
