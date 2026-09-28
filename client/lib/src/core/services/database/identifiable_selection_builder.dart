import 'package:church_admin/church_admin.dart';
import 'package:gql/ast.dart';

/// Builds the selection of a field so that every related object it reaches
/// selects `__typename` and its key field, exactly like generated selections,
/// letting the cache store it as the same linked entry other screens use.
class IdentifiableSelectionBuilder extends FieldMetadataVisitor<FieldNode> {
  static const _typename = FieldNode(name: NameNode(value: '__typename'));

  final List<SelectionNode> nestedSelections;

  const IdentifiableSelectionBuilder({this.nestedSelections = const []});

  @override
  FieldNode visitField(FieldMetadata field) => FieldNode(
    name: NameNode(value: field.name),
    selectionSet: switch (field.referencedObjectType) {
      final objectType? => SelectionSetNode(
        selections: [
          _typename,
          if (objectType.keyField case final keyField?)
            FieldNode(name: NameNode(value: keyField.name)),
          ...nestedSelections,
        ],
      ),
      null => null,
    },
  );

  @override
  FieldNode visitRedirectingField(RedirectingFieldMetadata field) =>
      IdentifiableSelectionBuilder(
        nestedSelections: [visit(field.targetField)],
      ).visit(field.parentField);
}
