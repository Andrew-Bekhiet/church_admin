import 'package:church_admin/church_admin.dart';
import 'package:gql/ast.dart';
import 'package:meta/meta.dart';

@immutable
class StreamSingleByIdConfig<T> extends DAOMethodTemplate<T?> {
  final IdVarsConstructor? varsConstructor;

  const StreamSingleByIdConfig({
    required super.document,
    this.varsConstructor,
    super.operationName,
    super.parserFn,
  });

  StreamSingleByIdConfig<T> copyWith({
    DocumentNode? document,
    String? operationName,
    IdVarsConstructor? varsConstructor,
    T? Function(Json)? parserFn,
  }) => StreamSingleByIdConfig<T>(
    document: document ?? this.document,
    operationName: operationName ?? effectiveOperationName,
    varsConstructor: varsConstructor ?? this.varsConstructor,
    parserFn: parserFn ?? this.parserFn,
  );

  Json variablesFor(String id) => varsConstructor?.call(id: id) ?? {'id': id};
}

typedef IdVarsConstructor = Json Function({required String id});
