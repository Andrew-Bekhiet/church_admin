import 'package:church_admin/church_admin.dart';
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
  const _AddSelectionFieldsVisitor(this.fieldsToAdd);

  final Map<String, List<SelectionNode>> fieldsToAdd;

  @override
  OperationDefinitionNode visitOperationDefinitionNode(
    OperationDefinitionNode node,
  ) {
    return OperationDefinitionNode(
      type: node.type,
      directives: node.directives,
      name: node.name,
      span: node.span,
      variableDefinitions: node.variableDefinitions,
      selectionSet: SelectionSetNode(
        span: node.selectionSet.span,
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

extension MergeSelections on FieldNode {
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
      span: span,
      selectionSet: mergedSelections.isEmpty
          ? null
          : SelectionSetNode(
              span: selectionSet?.span,
              selections: mergedSelections,
            ),
    );
  }
}

extension MergeDuplicateSelections on List<SelectionNode> {
  /// Merges sibling [FieldNode]s sharing a response key into a single node,
  /// recursively merging their sub selections.
  ///
  /// The normalized cache cannot re-read documents where the same field is
  /// selected more than once, so `personType { name } personType { order }`
  /// has to become `personType { name order }`.
  List<SelectionNode> mergedSelections() {
    final merged = <SelectionNode>[];
    final indexesByResponseKey = <String, int>{};

    for (final selection in this) {
      if (selection is! FieldNode) {
        merged.add(selection);
        continue;
      }

      final responseKey = selection.alias?.value ?? selection.name.value;

      switch (indexesByResponseKey[responseKey]) {
        case final int index:
          merged[index] = (merged[index] as FieldNode).withMergedSelections(
            selection.selectionSet?.selections ?? const [],
          );
        case null:
          indexesByResponseKey[responseKey] = merged.length;
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
