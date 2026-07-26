import 'package:collection/collection.dart';
import 'package:gql/ast.dart';

/// Merges sibling [FieldNode]s sharing a response key into a single node, so
/// `personType { name } personType { order }` becomes `personType { name order }`
/// and a bare `personType` next to `personType { order }` stops being an invalid
/// leaf selection on an object type.
///
/// Per GraphQL spec 5.3.2 two fields sharing a response key only merge when
/// their name, arguments and directives all match.
///
/// Duplicates straddling a fragment spread or inline fragment are deliberately
/// left alone: `normalize` expands fragments and merges their selections itself
/// on both the cache write and read paths.
class MergeDuplicateSelectionsVisitor extends TransformingVisitor {
  const MergeDuplicateSelectionsVisitor();

  @override
  SelectionSetNode visitSelectionSetNode(SelectionSetNode node) {
    final merged = <SelectionNode>[];
    final indexesByResponseKey = <String, List<int>>{};

    for (final selection in node.selections) {
      if (selection is! FieldNode) {
        merged.add(selection);
        continue;
      }

      final indexes = indexesByResponseKey.putIfAbsent(
        selection.responseKey,
        () => [],
      );
      final mergeableIndex = indexes.firstWhereOrNull(
        (i) => (merged[i] as FieldNode).canMergeWith(selection),
      );

      switch (mergeableIndex) {
        case final int index:
          merged[index] = _merged(merged[index] as FieldNode, selection);
        case null:
          indexes.add(merged.length);
          merged.add(selection);
      }
    }

    return SelectionSetNode(selections: merged);
  }

  FieldNode _merged(FieldNode into, FieldNode other) {
    final selections = [
      ...?into.selectionSet?.selections,
      ...?other.selectionSet?.selections,
    ];

    return FieldNode(
      name: into.name,
      alias: into.alias,
      arguments: into.arguments,
      directives: into.directives,
      selectionSet: selections.isEmpty
          ? null
          : transform(SelectionSetNode(selections: selections), [this]),
    );
  }
}

extension _MergeableField on FieldNode {
  String get responseKey => alias?.value ?? name.value;

  bool canMergeWith(FieldNode other) {
    return name.value == other.name.value &&
        const ListEquality<Node>().equals(arguments, other.arguments) &&
        const ListEquality<Node>().equals(directives, other.directives);
  }
}
