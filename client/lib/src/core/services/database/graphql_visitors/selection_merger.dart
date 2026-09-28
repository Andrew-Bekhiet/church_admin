import 'package:gql/ast.dart';

/// Merges sibling fields that GraphQL treats as one — same response name,
/// arguments and directives — into a single field whose sub-selections are
/// merged the same way.
class SelectionMerger extends TransformingVisitor {
  const SelectionMerger();

  @override
  SelectionSetNode visitSelectionSetNode(SelectionSetNode node) =>
      SelectionSetNode(selections: _merge(node.selections));

  List<SelectionNode> _merge(Iterable<SelectionNode> selections) {
    final mergedByIdentity = <SelectionNode, SelectionNode>{};

    for (final selection in selections) {
      final identity = switch (selection) {
        FieldNode(
          :final alias,
          :final name,
          :final arguments,
          :final directives,
        ) =>
          FieldNode(
            alias: alias,
            name: name,
            arguments: arguments,
            directives: directives,
          ),
        _ => selection,
      };

      mergedByIdentity[identity] = switch ((
        mergedByIdentity[identity],
        selection,
      )) {
        (final FieldNode existing, final FieldNode field) => _mergeFields(
          existing,
          field,
        ),
        _ => selection,
      };
    }

    return mergedByIdentity.values.toList();
  }

  FieldNode _mergeFields(FieldNode existing, FieldNode field) => FieldNode(
    alias: existing.alias,
    name: existing.name,
    arguments: existing.arguments,
    directives: existing.directives,
    selectionSet: switch ((existing.selectionSet, field.selectionSet)) {
      (null, null) => null,
      (final existingSet, final fieldSet) => SelectionSetNode(
        selections: _merge([
          ...?existingSet?.selections,
          ...?fieldSet?.selections,
        ]),
      ),
    },
  );
}
