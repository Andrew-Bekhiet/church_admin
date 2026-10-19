import 'package:church_admin/church_admin.dart';
import 'package:gql/ast.dart';

/// Builds the selection a field needs, nesting through every related object
/// it reaches and selecting each one's key field, and its `id` when it has
/// one, so the cache can link it.
class NestedSelectionBuilder extends FieldMetadataVisitor<FieldNode> {
  final List<SelectionNode> nestedSelections;
  final bool selectsRecordedByInfoAsAshRelationship;

  const NestedSelectionBuilder({
    this.nestedSelections = const [],
    this.selectsRecordedByInfoAsAshRelationship = false,
  });

  @override
  FieldNode visitField(FieldMetadata field) =>
      selectsRecordedByInfoAsAshRelationship && field.type == LastRecordedByInfo
      ? _ashRecordedByInfoRelationship(field)
      : _fieldWithObjectSelection(field);

  /// On Ash `lastEdit` is the scalar time and `latestEdit` the record, which
  /// is the key the ported models read.
  FieldNode _ashRecordedByInfoRelationship(FieldMetadata field) => FieldNode(
    name: NameNode(value: AshNaming.latestRelationship(field.name)),
    selectionSet: SelectionSetNode(
      selections: [
        const FieldNode(name: NameNode(value: 'id')),
        const FieldNode(name: NameNode(value: 'time')),
        ...nestedSelections,
      ],
    ),
  );

  FieldNode _fieldWithObjectSelection(FieldMetadata field) => FieldNode(
    name: NameNode(value: field.name),
    selectionSet: switch (field.referencedObjectType) {
      final objectType? => SelectionSetNode(
        selections: [
          for (final name in {
            ?objectType.keyField?.name,
            if (objectType.hasField('id')) 'id',
          })
            FieldNode(name: NameNode(value: name)),
          ...nestedSelections,
        ],
      ),
      null => null,
    },
  );

  @override
  FieldNode visitPhoneSearchField(PhoneSearchFieldMetadata field) =>
      const FieldNode(
        name: NameNode(value: 'contacts'),
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(name: NameNode(value: 'id')),
            FieldNode(name: NameNode(value: 'label')),
            FieldNode(name: NameNode(value: 'phone')),
            FieldNode(name: NameNode(value: 'isMainPhone')),
          ],
        ),
      );

  @override
  FieldNode visitRedirectingField(RedirectingFieldMetadata field) =>
      NestedSelectionBuilder(
        nestedSelections: [visit(field.targetField)],
        selectsRecordedByInfoAsAshRelationship:
            selectsRecordedByInfoAsAshRelationship,
      ).visit(field.parentField);
}
