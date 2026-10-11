import 'package:gql/ast.dart';

class DataCheckSelectionRemover extends TransformingVisitor {
  static const _fieldName = 'dataCheck';
  static const _fragmentName = 'DataCheck';

  static DocumentNode removeFrom(DocumentNode document) =>
      transform(document, const [DataCheckSelectionRemover()]);

  const DataCheckSelectionRemover();

  @override
  DocumentNode visitDocumentNode(DocumentNode node) => DocumentNode(
    span: node.span,
    definitions: node.definitions
        .where(
          (definition) =>
              definition is! FragmentDefinitionNode ||
              definition.name.value != _fragmentName,
        )
        .toList(),
  );

  @override
  SelectionSetNode visitSelectionSetNode(SelectionSetNode node) =>
      SelectionSetNode(
        span: node.span,
        selections: node.selections
            .where(
              (selection) =>
                  selection is! FieldNode || selection.name.value != _fieldName,
            )
            .toList(),
      );
}
