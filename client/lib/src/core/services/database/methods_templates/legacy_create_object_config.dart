import 'package:church_admin/church_admin.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart';
import 'package:meta/meta.dart';

@immutable
class LegacyCreateObjectConfig<T> extends DAOMethodTemplate<T> {
  final LegacyCreateObjectConfigVarsConstructor<T>? varsConstructor;
  final MutationOptions<T>? operationOptions;

  @override
  T Function(Json)? get parserFn => super.parserFn as T Function(Json)?;

  const LegacyCreateObjectConfig({
    required super.document,
    this.varsConstructor,
    this.operationOptions,
    super.operationName,
    super.variables,
    T Function(Json)? super.parserFn,
  });

  LegacyCreateObjectConfig<T> copyWith({
    DocumentNode? document,
    String? operationName,
    Json? variables,
    LegacyCreateObjectConfigVarsConstructor<T>? varsConstructor,
    MutationOptions<T>? operationOptions,
    T Function(Json)? parserFn,
  }) {
    return LegacyCreateObjectConfig<T>(
      document: document ?? this.document,
      operationName: operationName ?? super.effectiveOperationName,
      variables: variables ?? this.variables,
      varsConstructor: varsConstructor ?? this.varsConstructor,
      operationOptions: operationOptions ?? this.operationOptions,
      parserFn: parserFn ?? this.parserFn,
    );
  }
}

typedef LegacyCreateObjectConfigVarsConstructor<T> = Json Function({
  required T newObject,
});
