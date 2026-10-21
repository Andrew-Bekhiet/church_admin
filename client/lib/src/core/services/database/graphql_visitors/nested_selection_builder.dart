import 'package:church_admin/church_admin.dart';
import 'package:gql/ast.dart';

/// Builds the selection a field needs, nesting through every related object
/// it reaches and selecting each one's key field so the cache can link it.
class NestedSelectionBuilder extends FieldMetadataVisitor<FieldNode> {
  final List<SelectionNode> nestedSelections;

  const NestedSelectionBuilder({this.nestedSelections = const []});

  @override
  FieldNode visitField(FieldMetadata field) => FieldNode(
    name: NameNode(value: field.name),
    selectionSet: switch (field.referencedObjectType) {
      final objectType? => SelectionSetNode(
        selections: [
          if (objectType.keyField case final keyField?)
            FieldNode(name: NameNode(value: keyField.name)),
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
      ).visit(field.parentField);
}
