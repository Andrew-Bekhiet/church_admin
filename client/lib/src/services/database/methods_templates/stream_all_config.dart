import 'package:church_admin/church_admin.dart';
import 'package:gql/ast.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:meta/meta.dart';

@immutable
class StreamAllConfig<T, TBoolExp> extends DAOMethodTemplate<Iterable<T>> {
  final StreamAllConfigVarsConstructor<T, TBoolExp>? varsConstructor;
  final SubscriptionOptions<Iterable<T>>? operationOptions;

  const StreamAllConfig({
    required super.document,
    this.varsConstructor,
    this.operationOptions,
    super.operationName,
    super.variables,
    super.parserFn,
  });

  StreamAllConfig<T, TBoolExp> copyWith({
    DocumentNode? document,
    String? operationName,
    Json? variables,
    StreamAllConfigVarsConstructor<T, TBoolExp>? varsConstructor,
    SubscriptionOptions<Iterable<T>>? operationOptions,
    Iterable<T> Function(Json)? parserFn,
  }) {
    return StreamAllConfig<T, TBoolExp>(
      document: document ?? this.document,
      operationName: operationName ?? super.effectiveOperationName,
      variables: variables ?? this.variables,
      varsConstructor: varsConstructor ?? this.varsConstructor,
      operationOptions: operationOptions ?? this.operationOptions,
      parserFn: parserFn ?? this.parserFn,
    );
  }
}

typedef StreamAllConfigVarsConstructor<T, TBoolExp> = Json Function({
  required GQLPaginatableStreamEvent<T> event,
  required List<TBoolExp> where,
});
