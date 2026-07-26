import 'package:gql/ast.dart';

/// Appends [fieldsToAdd] to the operations' root fields matching each key.
///
/// Only the operations' own selections are visited, so a field of the same name
/// nested inside a fragment is left alone.
class AddSelectionFieldsVisitor extends TransformingVisitor {
  final Map<String, List<SelectionNode>> fieldsToAdd;

  const AddSelectionFieldsVisitor(this.fieldsToAdd);

  @override
  OperationDefinitionNode visitOperationDefinitionNode(
    OperationDefinitionNode node,
  ) {
    return OperationDefinitionNode(
      type: node.type,
      directives: node.directives,
      name: node.name,
      variableDefinitions: node.variableDefinitions,
      selectionSet: SelectionSetNode(
        selections: node.selectionSet.selections.map(_withAddedFields).toList(),
      ),
    );
  }

  SelectionNode _withAddedFields(SelectionNode selection) {
    if (selection is! FieldNode) return selection;

    final additions = fieldsToAdd[selection.name.value];
    if (additions == null || additions.isEmpty) return selection;

    return FieldNode(
      name: selection.name,
      alias: selection.alias,
      arguments: selection.arguments,
      directives: selection.directives,
      selectionSet: SelectionSetNode(
        selections: [...?selection.selectionSet?.selections, ...additions],
      ),
    );
  }
}
