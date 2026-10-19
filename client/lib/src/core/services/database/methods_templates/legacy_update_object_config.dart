import 'package:church_admin/church_admin.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart';
import 'package:meta/meta.dart';

@immutable
class LegacyUpdateObjectConfig<T> extends DAOMethodTemplate<T> {
  final LegacyUpdateObjectConfigVarsConstructor<T>? varsConstructor;

  final MutationOptions<T>? operationOptions;

  const LegacyUpdateObjectConfig({
    required super.document,
    this.varsConstructor,
    this.operationOptions,
    super.operationName,
    super.variables,
    super.parserFn,
  });

  LegacyUpdateObjectConfig<T> copyWith({
    DocumentNode? document,
    String? operationName,
    Json? variables,
    LegacyUpdateObjectConfigVarsConstructor<T>? varsConstructor,
    MutationOptions<T>? operationOptions,
    T Function(Json)? parserFn,
  }) {
    return LegacyUpdateObjectConfig<T>(
      document: document ?? this.document,
      operationName: operationName ?? super.effectiveOperationName,
      variables: variables ?? this.variables,
      varsConstructor: varsConstructor ?? this.varsConstructor,
      operationOptions: operationOptions ?? this.operationOptions,
      parserFn: parserFn ?? this.parserFn,
    );
  }
}

typedef LegacyUpdateObjectConfigVarsConstructor<T> = Json Function({
  required T newObject,
  required T oldObject,
});
