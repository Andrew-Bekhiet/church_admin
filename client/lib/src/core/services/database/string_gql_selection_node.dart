import 'package:collection/collection.dart';
import 'package:gql/ast.dart';

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
