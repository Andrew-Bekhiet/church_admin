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
    return DocumentNode(
      definitions: definitions
          .map(
            (d) => d is OperationDefinitionNode
                ? OperationDefinitionNode(
                    type: d.type,
                    directives: d.directives,
                    name: d.name,
                    span: d.span,
                    variableDefinitions: d.variableDefinitions,
                    selectionSet: SelectionSetNode(
                      span: d.selectionSet.span,
                      selections: d.selectionSet.selections
                          .map(
                            (f) =>
                                f is FieldNode &&
                                    fieldsToAdd.containsKey(f.name.value)
                                ? FieldNode(
                                    name: f.name,
                                    alias: f.alias,
                                    arguments: f.arguments,
                                    directives: f.directives,
                                    span: f.span,
                                    selectionSet: SelectionSetNode(
                                      span: f.selectionSet?.span,
                                      selections: [
                                        ...f.selectionSet?.selections ?? [],
                                        ...fieldsToAdd[f.name.value] ?? [],
                                      ],
                                    ),
                                  )
                                : f,
                          )
                          .toList(),
                    ),
                  )
                : d,
          )
          .toList(),
      span: span,
    );
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
