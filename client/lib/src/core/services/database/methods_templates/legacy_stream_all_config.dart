import 'package:church_admin/church_admin.dart';
import 'package:gql/ast.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:meta/meta.dart';

@immutable
class LegacyStreamAllConfig<T>
    extends DAOMethodTemplate<PaginatableStreamResponse<T>> {
  final LegacyStreamAllConfigVarsConstructor<T>? transformRequest;
  final SubscriptionOptions<PaginatableStreamResponse<T>>? operationOptions;

  @override
  PaginatableStreamResponse<T> Function(Json)? get parserFn =>
      super.parserFn as PaginatableStreamResponse<T> Function(Json)?;

  const LegacyStreamAllConfig({
    required super.document,
    this.transformRequest,
    this.operationOptions,
    super.operationName,
    super.variables,
    PaginatableStreamResponse<T> Function(Json)? super.parserFn,
  });

  LegacyStreamAllConfig<T> copyWith({
    DocumentNode? document,
    String? operationName,
    Json? variables,
    LegacyStreamAllConfigVarsConstructor<T>? transformRequest,
    SubscriptionOptions<PaginatableStreamResponse<T>>? operationOptions,
    PaginatableStreamResponse<T> Function(Json)? parserFn,
  }) {
    return LegacyStreamAllConfig<T>(
      document: document ?? this.document,
      operationName: operationName ?? super.effectiveOperationName,
      variables: variables ?? this.variables,
      transformRequest: transformRequest ?? this.transformRequest,
      operationOptions: operationOptions ?? this.operationOptions,
      parserFn: parserFn ?? this.parserFn,
    );
  }
}

typedef LegacyStreamAllConfigVarsConstructor<T> = Json Function(
  PaginatableStreamRequest<T, StreamableDAOParameters<T>?> request,
);
