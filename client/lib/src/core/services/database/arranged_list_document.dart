import 'package:church_admin/church_admin.dart';
import 'package:gql/ast.dart';

/// A list document that also selects what its arrangement needs: every sort
/// key and the field shown as each item's second line, each identifiable by
/// the cache exactly like generated selections.
class ArrangedListDocument {
  static const _selectionBuilder = NestedSelectionBuilder();

  final DocumentNode listDocument;

  const ArrangedListDocument(this.listDocument);

  DocumentNode arrangedBy(ListArrangement arrangement) {
    final selectedFields = [
      ?arrangement.effectiveSecondLineField,
      for (final order in arrangement.orderBy) order.field.sortKey,
    ];
    if (selectedFields.isEmpty) return listDocument;

    final selections = selectedFields
        .map(
          (field) => transform(_selectionBuilder.visit(field), [
            const TypenameAdder(),
          ]),
        )
        .toList();

    return transform(
      transform(listDocument, [RootFieldSelectionsAppender(selections)]),
      [const SelectionMerger()],
    );
  }
}
