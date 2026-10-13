import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/data_checks_document_transformer.dart';
import 'package:gql/ast.dart';

mixin DataCheckFreeDocuments<T extends ViewableWithID> on DAOBase<T> {
  @override
  DocumentNode transformDocument(
    DocumentNode document, {
    StreamableDAOParameters<T>? parameters,
  }) => DataChecksDocumentTransformer.removeDataChecksIfDisabled(
    super.transformDocument(document, parameters: parameters),
  );
}
