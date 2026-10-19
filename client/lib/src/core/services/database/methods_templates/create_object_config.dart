import 'package:church_admin/church_admin.dart';
import 'package:gql/ast.dart';
import 'package:meta/meta.dart';

@immutable
class CreateObjectConfig<T> extends DAOMethodTemplate<T> {
  final ObjectVarsConstructor<T> varsConstructor;

  @override
  T Function(Json)? get parserFn => super.parserFn as T Function(Json)?;

  const CreateObjectConfig({
    required this.varsConstructor,
    required super.document,
    super.operationName,
    T Function(Json)? super.parserFn,
  });

  CreateObjectConfig<T> copyWith({
    DocumentNode? document,
    String? operationName,
    ObjectVarsConstructor<T>? varsConstructor,
    T Function(Json)? parserFn,
  }) => CreateObjectConfig<T>(
    document: document ?? this.document,
    operationName: operationName ?? effectiveOperationName,
    varsConstructor: varsConstructor ?? this.varsConstructor,
    parserFn: parserFn ?? this.parserFn,
  );
}

typedef ObjectVarsConstructor<T> = Json Function({required T newObject});
