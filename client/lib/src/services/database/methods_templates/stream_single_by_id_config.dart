import 'package:church_admin/church_admin.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart';
import 'package:meta/meta.dart';

@immutable
class StreamSingleByIdConfig<T> extends DAOMethodTemplate<T?> {
  final StreamSingleByIdConfigVarsConstructor? varsConstructor;
  final SubscriptionOptions<T>? operationOptions;

  const StreamSingleByIdConfig({
    required super.document,
    this.varsConstructor,
    this.operationOptions,
    super.operationName,
    super.variables,
    super.parserFn,
  });

  StreamSingleByIdConfig<T> copyWith({
    DocumentNode? document,
    String? operationName,
    Json? variables,
    StreamSingleByIdConfigVarsConstructor? varsConstructor,
    SubscriptionOptions<T>? operationOptions,
    T? Function(Json)? parserFn,
  }) {
    return StreamSingleByIdConfig<T>(
      document: document ?? this.document,
      operationName: operationName ?? super.effectiveOperationName,
      variables: variables ?? this.variables,
      varsConstructor: varsConstructor ?? this.varsConstructor,
      operationOptions: operationOptions ?? this.operationOptions,
      parserFn: parserFn ?? this.parserFn,
    );
  }
}

typedef StreamSingleByIdConfigVarsConstructor = Json Function({
  required UuidValue id,
});
