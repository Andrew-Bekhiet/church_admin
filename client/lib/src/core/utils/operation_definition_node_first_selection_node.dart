import 'package:gql/ast.dart';

extension OperationDefinitionNodeFirstSelectionNode on OperationDefinitionNode {
  FieldNode get firstSelectionNode =>
      selectionSet.selections.first as FieldNode;
}
