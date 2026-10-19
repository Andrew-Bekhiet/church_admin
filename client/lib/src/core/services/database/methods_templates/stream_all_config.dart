import 'package:church_admin/church_admin.dart';
import 'package:gql/ast.dart';
import 'package:meta/meta.dart';

@immutable
class StreamAllConfig<T> extends DAOMethodTemplate<KeysetPage<T>> {
  final ListQueryArgumentsBuilder<T> arguments;

  const StreamAllConfig({
    required this.arguments,
    required super.document,
    super.operationName,
    super.variables,
  });

  StreamAllConfig<T> copyWith({
    DocumentNode? document,
    String? operationName,
    Json? variables,
    ListQueryArgumentsBuilder<T>? arguments,
  }) => StreamAllConfig<T>(
    document: document ?? this.document,
    operationName: operationName ?? effectiveOperationName,
    variables: variables ?? this.variables,
    arguments: arguments ?? this.arguments,
  );

  Json variablesFor(StreamableDAOParameters<T>? parameters) => {
    ...?variables,
    ...arguments(parameters).toVariables(),
  };
}
