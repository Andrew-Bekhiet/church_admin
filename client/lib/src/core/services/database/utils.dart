import 'package:church_admin/church_admin.dart';
import 'package:gql/ast.dart';

export 'utils/add_selection_fields_visitor.dart';
export 'utils/merge_duplicate_selections_visitor.dart';

IterableDifferenceResult<T> diff<T>(Set<T> old, Set<T> $new) {
  return IterableDifferenceResult(
    removed: old.where((s) => !$new.contains(s)).toSet(),
    added: $new.where((s) => !old.contains(s)).toSet(),
  );
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

extension StringToUuid on String {
  UuidValue toUuid() => UuidValue.fromString(this);
}
