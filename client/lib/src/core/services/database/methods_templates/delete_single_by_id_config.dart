import 'package:church_admin/church_admin.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart';
import 'package:meta/meta.dart';

@immutable
class DeleteSingleByIdConfig<T> extends DAOMethodTemplate<T?> {
  final DeleteSingleByIdConfigVarsConstructor? varsConstructor;

  final MutationOptions<T>? operationOptions;

  const DeleteSingleByIdConfig({
    required super.document,
    this.varsConstructor,
    this.operationOptions,
    super.operationName,
    super.variables,
    super.parserFn,
  });

  DeleteSingleByIdConfig copyWith({
    DocumentNode? document,
    String? operationName,
    Json? variables,
    DeleteSingleByIdConfigVarsConstructor? varsConstructor,
    MutationOptions<T>? operationOptions,
    T? Function(Json)? parserFn,
  }) {
    return DeleteSingleByIdConfig(
      document: document ?? this.document,
      operationName: operationName ?? super.effectiveOperationName,
      variables: variables ?? this.variables,
      varsConstructor: varsConstructor ?? this.varsConstructor,
      operationOptions: operationOptions ?? this.operationOptions,
      parserFn: parserFn ?? this.parserFn,
    );
  }
}

typedef DeleteSingleByIdConfigVarsConstructor = Json Function({
  required UuidValue id,
});
