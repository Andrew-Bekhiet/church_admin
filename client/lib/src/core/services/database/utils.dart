import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:gql/ast.dart';

IterableDifferenceResult<T> diff<T>(Set<T> old, Set<T> $new) {
  return IterableDifferenceResult(
    removed: old.where((s) => !$new.contains(s)).toSet(),
    added: $new.where((s) => !old.contains(s)).toSet(),
  );
}

extension AddSelectionFields on DocumentNode {
  DocumentNode withSelectionFields(
    Map<String, List<SelectionNode>> fieldsToAdd,
  ) {
    return transform(this, [_AddSelectionFieldsVisitor(fieldsToAdd)]);
  }
}

class _AddSelectionFieldsVisitor extends TransformingVisitor {
  final Map<String, List<SelectionNode>> fieldsToAdd;

  const _AddSelectionFieldsVisitor(this.fieldsToAdd);

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
    if (additions == null) return selection;

    return selection.withMergedSelections(additions);
  }
}

extension _MergeSelections on FieldNode {
  bool canMergeWith(FieldNode other) {
    return name.value == other.name.value &&
        const ListEquality<Node>().equals(arguments, other.arguments) &&
        const ListEquality<Node>().equals(directives, other.directives);
  }

  FieldNode withMergedSelections(Iterable<SelectionNode> selections) {
    final mergedSelections = [
      ...?selectionSet?.selections,
      ...selections,
    ].mergedSelections();

    return FieldNode(
      name: name,
      alias: alias,
      arguments: arguments,
      directives: directives,
      selectionSet: mergedSelections.isEmpty
          ? null
          : SelectionSetNode(selections: mergedSelections),
    );
  }
}

extension _MergeDuplicateSelections on List<SelectionNode> {
  /// Merges sibling [FieldNode]s sharing a response key into a single node,
  /// recursively merging their sub selections. Per GraphQL spec 5.3.2 they only
  /// merge when their name, arguments and directives all match.
  ///
  /// The normalized cache cannot re-read documents where the same field is
  /// selected more than once, so `personType { name } personType { order }`
  /// has to become `personType { name order }`.
  ///
  /// Duplicates straddling a fragment spread or inline fragment are
  /// deliberately left alone: `normalize` expands fragments and merges their
  /// selections itself on both the cache write and read paths.
  List<SelectionNode> mergedSelections() {
    final merged = <SelectionNode>[];
    final indexesByResponseKey = <String, List<int>>{};

    for (final selection in this) {
      if (selection is! FieldNode) {
        merged.add(selection);
        continue;
      }

      final responseKey = selection.alias?.value ?? selection.name.value;
      final indexes = indexesByResponseKey.putIfAbsent(responseKey, () => []);

      final matchingIndex = indexes.firstWhereOrNull(
        (i) => (merged[i] as FieldNode).canMergeWith(selection),
      );

      switch (matchingIndex) {
        case final int index:
          merged[index] = (merged[index] as FieldNode).withMergedSelections(
            selection.selectionSet?.selections ?? const [],
          );
        case null:
          indexes.add(merged.length);
          merged.add(selection);
      }
    }

    return merged;
  }
}

extension GQLSelectionNode on Json {
  List<SelectionNode> asGQLSelectionNode() {
    return entries.map((e) {
      return FieldNode(
        name: NameNode(value: e.key),
        selectionSet: e.value is Map<String, Object?>
            ? SelectionSetNode(
                selections: (e.value as Map<String, Object?>)
                    .asGQLSelectionNode(),
              )
            : null,
      );
    }).toList();
  }
}

extension StringGQLSelectionNode on List<String> {
  List<SelectionNode> asGQLSelectionNode() {
    if (firstOrNull?.isEmpty ?? true) return [];

    return [
      FieldNode(
        name: NameNode(value: first),
        selectionSet: length > 1
            ? SelectionSetNode(
                selections: sublist(1).asGQLSelectionNode(),
              )
            : null,
      ),
    ];
  }
}

extension StringToUuid on String {
  UuidValue toUuid() => UuidValue.fromString(this);
}
