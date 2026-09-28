import 'package:church_admin/church_admin.dart';
import 'package:gql/ast.dart';

/// A list document that also selects what sorting it needs: every sort key and
/// the primary sort field shown as each item's second line.
class SortedListDocument {
  static const _selectionBuilder = IdentifiableSelectionBuilder();

  final DocumentNode listDocument;

  const SortedListDocument(this.listDocument);

  DocumentNode sortedBy(List<OrderBy> orderBy) {
    final primaryOrder = orderBy.firstOrNull;
    if (primaryOrder == null) return listDocument;

    final sortSelections = [
      _selectionBuilder.visit(primaryOrder.getSecondLineField()),
      for (final order in orderBy) _selectionBuilder.visit(order.field.sortKey),
    ];

    return transform(
      transform(listDocument, [RootFieldSelectionsAppender(sortSelections)]),
      [const SelectionMerger()],
    );
  }
}
