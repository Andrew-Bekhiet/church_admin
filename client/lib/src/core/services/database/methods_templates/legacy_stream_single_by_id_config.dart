import 'package:church_admin/church_admin.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart';
import 'package:meta/meta.dart';

@immutable
class LegacyStreamSingleByIdConfig<T> extends DAOMethodTemplate<T?> {
  final LegacyStreamSingleByIdConfigVarsConstructor? varsConstructor;
  final SubscriptionOptions<T>? operationOptions;

  const LegacyStreamSingleByIdConfig({
    required super.document,
    this.varsConstructor,
    this.operationOptions,
    super.operationName,
    super.variables,
    super.parserFn,
  });

  LegacyStreamSingleByIdConfig<T> copyWith({
    DocumentNode? document,
    String? operationName,
    Json? variables,
    LegacyStreamSingleByIdConfigVarsConstructor? varsConstructor,
    SubscriptionOptions<T>? operationOptions,
    T? Function(Json)? parserFn,
  }) {
    return LegacyStreamSingleByIdConfig<T>(
      document: document ?? this.document,
      operationName: operationName ?? super.effectiveOperationName,
      variables: variables ?? this.variables,
      varsConstructor: varsConstructor ?? this.varsConstructor,
      operationOptions: operationOptions ?? this.operationOptions,
      parserFn: parserFn ?? this.parserFn,
    );
  }
}

typedef LegacyStreamSingleByIdConfigVarsConstructor = Json Function({
  required UuidValue id,
});
