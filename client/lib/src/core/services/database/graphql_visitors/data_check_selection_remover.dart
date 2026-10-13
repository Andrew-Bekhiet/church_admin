import 'package:church_admin/src/core/services/database/graphql_visitors/operation_variable_collector.dart';
import 'package:gql/ast.dart';

class DataCheckSelectionRemover extends TransformingVisitor {
  static const _fieldName = 'dataCheck';
  static const _fragmentName = 'DataCheck';

  static DocumentNode removeFrom(DocumentNode document) =>
      transform(document, const [DataCheckSelectionRemover()]);

  const DataCheckSelectionRemover();

  @override
  DocumentNode visitDocumentNode(DocumentNode node) {
    final fragments = {
      for (final fragment
          in node.definitions.whereType<FragmentDefinitionNode>())
        if (fragment.name.value != _fragmentName) fragment.name.value: fragment,
    };
    final usagesByOperation = {
      for (final operation
          in node.definitions.whereType<OperationDefinitionNode>())
        operation: _collectUsages(operation, fragments),
    };
    final reachableFragments = usagesByOperation.values
        .expand((usages) => usages.reachableFragments)
        .toSet();

    return DocumentNode(
      span: node.span,
      definitions: [
        for (final MapEntry(key: operation, value: usages)
            in usagesByOperation.entries)
          _withoutUnusedVariables(operation, usages.variables),
        ...fragments.values.where(
          (fragment) => reachableFragments.contains(fragment.name.value),
        ),
      ],
    );
  }

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

  OperationVariableCollector _collectUsages(
    OperationDefinitionNode operation,
    Map<String, FragmentDefinitionNode> fragments,
  ) {
    final collector = OperationVariableCollector(fragments);
    operation.selectionSet.accept(collector);
    for (final directive in operation.directives) {
      directive.accept(collector);
    }

    return collector;
  }

  OperationDefinitionNode _withoutUnusedVariables(
    OperationDefinitionNode operation,
    Set<String> usedVariables,
  ) => OperationDefinitionNode(
    span: operation.span,
    type: operation.type,
    name: operation.name,
    directives: operation.directives,
    selectionSet: operation.selectionSet,
    variableDefinitions: operation.variableDefinitions
        .where(
          (variable) => usedVariables.contains(variable.variable.name.value),
        )
        .toList(),
  );
}
