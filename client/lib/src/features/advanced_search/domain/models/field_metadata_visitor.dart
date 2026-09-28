import 'package:church_admin/church_admin.dart';

abstract class FieldMetadataVisitor<R> {
  const FieldMetadataVisitor();

  R visit(FieldMetadata field) => switch (field) {
    final RedirectingFieldMetadata redirectingField => visitRedirectingField(
      redirectingField,
    ),
    _ => visitField(field),
  };

  R visitField(FieldMetadata field);

  R visitRedirectingField(RedirectingFieldMetadata field);
}
