import 'package:church_admin/church_admin.dart';
import 'package:gql/ast.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:meta/meta.dart';

@immutable
class StreamAllConfig<T, TBoolExp, TOrderByExp>
    extends DAOMethodTemplate<PaginatableStreamResponse<T>> {
  final StreamAllConfigVarsConstructor<T, TBoolExp, TOrderByExp>? transformVars;
  final SubscriptionOptions<PaginatableStreamResponse<T>>? operationOptions;

  @override
  PaginatableStreamResponse<T> Function(Json)? get parserFn =>
      super.parserFn as PaginatableStreamResponse<T> Function(Json)?;

  const StreamAllConfig({
    required super.document,
    this.transformVars,
    this.operationOptions,
    super.operationName,
    super.variables,
    PaginatableStreamResponse<T> Function(Json)? super.parserFn,
  });

  StreamAllConfig<T, TBoolExp, TOrderByExp> copyWith({
    DocumentNode? document,
    String? operationName,
    Json? variables,
    StreamAllConfigVarsConstructor<T, TBoolExp, TOrderByExp>? varsConstructor,
    SubscriptionOptions<PaginatableStreamResponse<T>>? operationOptions,
    PaginatableStreamResponse<T> Function(Json)? parserFn,
  }) {
    return StreamAllConfig<T, TBoolExp, TOrderByExp>(
      document: document ?? this.document,
      operationName: operationName ?? super.effectiveOperationName,
      variables: variables ?? this.variables,
      transformVars: varsConstructor ?? this.transformVars,
      operationOptions: operationOptions ?? this.operationOptions,
      parserFn: parserFn ?? this.parserFn,
    );
  }
}

typedef StreamAllConfigVarsConstructor<T, TBoolExp, TOrderByExp> = Json
    Function({
  required PaginatableStreamRequest<T> request,
  List<TBoolExp>? where,
  List<TOrderByExp>? orderBy,
});
