import 'package:church_admin/church_admin.dart';
import 'package:gql/ast.dart';
import 'package:meta/meta.dart';

@immutable
abstract class DAOMethodTemplate<TParsed> {
  final String? _operationName;

  final DocumentNode document;
  final Json? variables;
  final TParsed Function(Json)? parserFn;

  const DAOMethodTemplate({
    required this.document,
    String? operationName,
    this.variables,
    this.parserFn,
  }) : _operationName = operationName;

  String get effectiveOperationName =>
      _operationName ??
      document.definitions
          .whereType<OperationDefinitionNode>()
          .first
          .name!
          .value;
}
