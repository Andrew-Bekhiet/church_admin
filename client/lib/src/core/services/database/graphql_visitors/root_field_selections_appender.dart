import 'package:church_admin/church_admin.dart';
import 'package:gql/ast.dart';

class RootFieldSelectionsAppender extends TransformingVisitor {
  final List<SelectionNode> selections;

  const RootFieldSelectionsAppender(this.selections);

  @override
  OperationDefinitionNode visitOperationDefinitionNode(
    OperationDefinitionNode node,
  ) {
    final rootField = node.firstSelectionNode;

    return OperationDefinitionNode(
      type: node.type,
      name: node.name,
      variableDefinitions: node.variableDefinitions,
      directives: node.directives,
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            alias: rootField.alias,
            name: rootField.name,
            arguments: rootField.arguments,
            directives: rootField.directives,
            selectionSet: SelectionSetNode(
              selections: [
                ...?rootField.selectionSet?.selections,
                ...selections,
              ],
            ),
          ),
          ...node.selectionSet.selections.skip(1),
        ],
      ),
    );
  }
}
