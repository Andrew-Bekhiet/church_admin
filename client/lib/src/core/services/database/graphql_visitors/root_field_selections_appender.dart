import 'package:church_admin/church_admin.dart';
import 'package:gql/ast.dart';

/// Appends [selections] to the operation's root field, or inside its
/// `results` when the root field is an Ash keyset page.
class RootFieldSelectionsAppender extends TransformingVisitor {
  static const pageResultsField = 'results';

  static bool isKeysetPage(FieldNode rootField) =>
      _resultsOf(rootField) != null;

  static FieldNode? _resultsOf(FieldNode field) => field
      .selectionSet
      ?.selections
      .whereType<FieldNode>()
      .where((selection) => selection.name.value == pageResultsField)
      .firstOrNull;

  final List<SelectionNode> selections;

  const RootFieldSelectionsAppender(this.selections);

  @override
  OperationDefinitionNode visitOperationDefinitionNode(
    OperationDefinitionNode node,
  ) {
    final rootField = node.rootField;

    return OperationDefinitionNode(
      type: node.type,
      name: node.name,
      variableDefinitions: node.variableDefinitions,
      directives: node.directives,
      selectionSet: SelectionSetNode(
        selections: [
          for (final selection in node.selectionSet.selections)
            if (identical(selection, rootField))
              _withAppendedSelections(rootField)
            else
              selection,
        ],
      ),
    );
  }

  FieldNode _withAppendedSelections(FieldNode rootField) {
    final results = _resultsOf(rootField);
    if (results == null) return _appendedTo(rootField);

    return _withSelections(rootField, [
      for (final selection in [...?rootField.selectionSet?.selections])
        if (identical(selection, results)) _appendedTo(results) else selection,
    ]);
  }

  FieldNode _appendedTo(FieldNode field) => _withSelections(field, [
    ...?field.selectionSet?.selections,
    ...selections,
  ]);

  FieldNode _withSelections(FieldNode field, List<SelectionNode> selections) =>
      FieldNode(
        alias: field.alias,
        name: field.name,
        arguments: field.arguments,
        directives: field.directives,
        selectionSet: SelectionSetNode(selections: selections),
      );
}
