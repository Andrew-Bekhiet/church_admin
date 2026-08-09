import 'package:church_admin/church_admin.dart';
import 'package:gql/ast.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:meta/meta.dart';

@immutable
class StreamAllConfig<T>
    extends DAOMethodTemplate<PaginatableStreamResponse<T>> {
  final StreamAllConfigVarsConstructor<T>? transformRequest;
  final SubscriptionOptions<PaginatableStreamResponse<T>>? operationOptions;

  const StreamAllConfig({
    required super.document,
    this.transformRequest,
    this.operationOptions,
    super.operationName,
    super.variables,
    PaginatableStreamResponse<T> Function(Json)? super.parserFn,
  });

  @override
  PaginatableStreamResponse<T> Function(Json)? get parserFn =>
      super.parserFn as PaginatableStreamResponse<T> Function(Json)?;

  StreamAllConfig<T> copyWith({
    DocumentNode? document,
    String? operationName,
    Json? variables,
    StreamAllConfigVarsConstructor<T>? transformRequest,
    SubscriptionOptions<PaginatableStreamResponse<T>>? operationOptions,
    PaginatableStreamResponse<T> Function(Json)? parserFn,
  }) {
    return StreamAllConfig<T>(
      document: document ?? this.document,
      operationName: operationName ?? super.effectiveOperationName,
      variables: variables ?? this.variables,
      transformRequest: transformRequest ?? this.transformRequest,
      operationOptions: operationOptions ?? this.operationOptions,
      parserFn: parserFn ?? this.parserFn,
    );
  }
}

typedef StreamAllConfigVarsConstructor<T> =
    Json Function(
      PaginatableStreamRequest<T, StreamableDAOParameters<T>?> request,
    );
