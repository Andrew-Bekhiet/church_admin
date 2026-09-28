import 'package:church_admin/church_admin.dart';
import 'package:gql/ast.dart';

/// A list document that also selects what sorting it needs: every sort key and
/// the primary sort field shown as each item's second line, each identifiable
/// by the cache exactly like generated selections.
class SortedListDocument {
  static const _selectionBuilder = NestedSelectionBuilder();

  final DocumentNode listDocument;

  const SortedListDocument(this.listDocument);

  DocumentNode sortedBy(List<OrderBy> orderBy) {
    final primaryOrder = orderBy.firstOrNull;
    if (primaryOrder == null) return listDocument;

    final sortSelections =
        [
              primaryOrder.getSecondLineField(),
              for (final order in orderBy) order.field.sortKey,
            ]
            .map(
              (field) => transform(_selectionBuilder.visit(field), [
                const TypenameAdder(),
              ]),
            )
            .toList();

    return transform(
      transform(listDocument, [RootFieldSelectionsAppender(sortSelections)]),
      [const SelectionMerger()],
    );
  }
}
