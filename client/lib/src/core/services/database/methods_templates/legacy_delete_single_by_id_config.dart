import 'package:church_admin/church_admin.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart';
import 'package:meta/meta.dart';

@immutable
class LegacyDeleteSingleByIdConfig<T> extends DAOMethodTemplate<T?> {
  final LegacyDeleteSingleByIdConfigVarsConstructor? varsConstructor;

  final MutationOptions<T>? operationOptions;

  const LegacyDeleteSingleByIdConfig({
    required super.document,
    this.varsConstructor,
    this.operationOptions,
    super.operationName,
    super.variables,
    super.parserFn,
  });

  LegacyDeleteSingleByIdConfig copyWith({
    DocumentNode? document,
    String? operationName,
    Json? variables,
    LegacyDeleteSingleByIdConfigVarsConstructor? varsConstructor,
    MutationOptions<T>? operationOptions,
    T? Function(Json)? parserFn,
  }) {
    return LegacyDeleteSingleByIdConfig(
      document: document ?? this.document,
      operationName: operationName ?? super.effectiveOperationName,
      variables: variables ?? this.variables,
      varsConstructor: varsConstructor ?? this.varsConstructor,
      operationOptions: operationOptions ?? this.operationOptions,
      parserFn: parserFn ?? this.parserFn,
    );
  }
}

typedef LegacyDeleteSingleByIdConfigVarsConstructor = Json Function({
  required UuidValue id,
});
