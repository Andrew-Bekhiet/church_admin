import 'package:church_admin/church_admin.dart';
import 'package:gql/ast.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:meta/meta.dart';

@immutable
class LegacyStreamCountConfig<T> extends DAOMethodTemplate<int> {
  final SubscriptionOptions<int>? operationOptions;

  @override
  int Function(Json)? get parserFn => super.parserFn as int Function(Json)?;

  const LegacyStreamCountConfig({
    required super.document,
    this.operationOptions,
    super.operationName,
    super.variables,
    int Function(Json)? super.parserFn,
  });

  LegacyStreamCountConfig<T> copyWith({
    DocumentNode? document,
    String? operationName,
    Json? variables,
    SubscriptionOptions<int>? operationOptions,
    int Function(Json)? parserFn,
  }) {
    return LegacyStreamCountConfig<T>(
      document: document ?? this.document,
      operationName: operationName ?? super.effectiveOperationName,
      variables: variables ?? this.variables,
      operationOptions: operationOptions ?? this.operationOptions,
      parserFn: parserFn ?? this.parserFn,
    );
  }
}
