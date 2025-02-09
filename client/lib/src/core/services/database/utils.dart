import 'package:church_admin/src/core/services/database/iterable_difference_result.dart';
import 'package:gql/ast.dart';
import 'package:uuid/uuid.dart';

IterableDifferenceResult<T> diff<T>(Set<T> old, Set<T> $new) {
  return IterableDifferenceResult(
    removed: old.where((s) => !$new.contains(s)).toSet(),
    added: $new.where((s) => !old.contains(s)).toSet(),
  );
}

extension AddSelectionFields on DocumentNode {
  DocumentNode withSelectionFields(
    Map<String, List<FieldNode>> fieldsToAdd,
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
                            (f) => f is FieldNode &&
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

extension StringToUuid on String {
  UuidValue toUuid() => UuidValue.fromString(this);
}
