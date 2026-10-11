import 'package:church_admin/src/core/services/database/graphql_visitors/operation_variable_collector.dart';
import 'package:gql/ast.dart';

class DataCheckSelectionRemover extends TransformingVisitor {
  static const _fieldName = 'dataCheck';
  static const _fragmentName = 'DataCheck';

  static DocumentNode removeFrom(DocumentNode document) {
    final stripped = transform(document, const [DataCheckSelectionRemover()]);
    if (stripped == document) return document;

    final fragments = {
      for (final fragment
          in stripped.definitions.whereType<FragmentDefinitionNode>())
        fragment.name.value: fragment,
    };
    final reachableFragments = <String>{};
    final definitions = <DefinitionNode>[];
    for (final operation
        in stripped.definitions.whereType<OperationDefinitionNode>()) {
      final collector = OperationVariableCollector(fragments);
      operation.selectionSet.accept(collector);
      for (final directive in operation.directives) {
        directive.accept(collector);
      }
      reachableFragments.addAll(collector.reachableFragments);
      definitions.add(
        OperationDefinitionNode(
          span: operation.span,
          type: operation.type,
          name: operation.name,
          directives: operation.directives,
          selectionSet: operation.selectionSet,
          variableDefinitions: operation.variableDefinitions
              .where(
                (variable) =>
                    collector.variables.contains(variable.variable.name.value),
              )
              .toList(),
        ),
      );
    }
    definitions.addAll(
      fragments.values.where(
        (fragment) => reachableFragments.contains(fragment.name.value),
      ),
    );

    return DocumentNode(span: stripped.span, definitions: definitions);
  }

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
