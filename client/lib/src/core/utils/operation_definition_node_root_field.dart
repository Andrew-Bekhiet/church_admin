import 'package:gql/ast.dart';

extension OperationDefinitionNodeRootField on OperationDefinitionNode {
  FieldNode get rootField => selectionSet.selections
      .whereType<FieldNode>()
      .firstWhere((field) => field.name.value != '__typename');
}
