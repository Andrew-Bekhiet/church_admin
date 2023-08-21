import 'package:church_admin/church_admin.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart';
import 'package:meta/meta.dart';

@immutable
class CreateObjectConfig<T> extends DAOMethodTemplate<T> {
  final CreateObjectConfigVarsConstructor<T>? varsConstructor;
  final MutationOptions<T>? operationOptions;

  const CreateObjectConfig({
    required super.document,
    this.varsConstructor,
    this.operationOptions,
    super.operationName,
    super.variables,
    super.parserFn,
  });

  CreateObjectConfig<T> copyWith({
    DocumentNode? document,
    String? operationName,
    Json? variables,
    CreateObjectConfigVarsConstructor<T>? varsConstructor,
    MutationOptions<T>? operationOptions,
    T Function(Json)? parserFn,
  }) {
    return CreateObjectConfig<T>(
      document: document ?? this.document,
      operationName: operationName ?? super.effectiveOperationName,
      variables: variables ?? this.variables,
      varsConstructor: varsConstructor ?? this.varsConstructor,
      operationOptions: operationOptions ?? this.operationOptions,
      parserFn: parserFn ?? this.parserFn,
    );
  }
}

typedef CreateObjectConfigVarsConstructor<T> = Json Function({
  required T newObject,
});
