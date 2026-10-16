import 'package:church_admin/church_admin.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart';
import 'package:meta/meta.dart';

@immutable
class UpdateObjectConfig<T> extends DAOMethodTemplate<T> {
  final UpdateObjectConfigVarsConstructor<T>? varsConstructor;

  final MutationOptions<T>? operationOptions;

  const UpdateObjectConfig({
    required super.document,
    this.varsConstructor,
    this.operationOptions,
    super.operationName,
    super.variables,
    super.parserFn,
  });

  UpdateObjectConfig<T> copyWith({
    DocumentNode? document,
    String? operationName,
    Json? variables,
    UpdateObjectConfigVarsConstructor<T>? varsConstructor,
    MutationOptions<T>? operationOptions,
    T Function(Json)? parserFn,
  }) {
    return UpdateObjectConfig<T>(
      document: document ?? this.document,
      operationName: operationName ?? super.effectiveOperationName,
      variables: variables ?? this.variables,
      varsConstructor: varsConstructor ?? this.varsConstructor,
      operationOptions: operationOptions ?? this.operationOptions,
      parserFn: parserFn ?? this.parserFn,
    );
  }
}

typedef UpdateObjectConfigVarsConstructor<T> = Json Function({
  required T newObject,
  required T oldObject,
});
