import 'package:church_admin/church_admin.dart';
import 'package:gql/ast.dart';

/// A list document that also selects what its arrangement needs: the field
/// shown as each item's second line and, for Hasura documents, every sort key
/// (an Ash keyset page sorts on the server), each identifiable by the cache
/// exactly like generated selections.
class ArrangedListDocument {
  static const _hasuraSelectionBuilder = NestedSelectionBuilder();
  static const _ashSelectionBuilder = NestedSelectionBuilder(
    selectsRecordedByInfoAsAshRelationship: true,
  );

  final DocumentNode listDocument;

  const ArrangedListDocument(this.listDocument);

  DocumentNode arrangedBy(ListArrangement arrangement) {
    final isKeysetPage = listDocument.definitions
        .whereType<OperationDefinitionNode>()
        .map((operation) => operation.rootField)
        .any(RootFieldSelectionsAppender.isKeysetPage);
    final selectedFields = [
      ?arrangement.effectiveSecondLineField,
      if (!isKeysetPage)
        for (final order in arrangement.orderBy) order.field.sortKey,
    ];
    if (selectedFields.isEmpty) return listDocument;

    final selectionBuilder = isKeysetPage
        ? _ashSelectionBuilder
        : _hasuraSelectionBuilder;
    final selections = selectedFields
        .map(
          (field) => transform(selectionBuilder.visit(field), [
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
