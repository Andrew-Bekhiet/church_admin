import 'package:church_admin/church_admin.dart';
import 'package:gql/ast.dart';

class DataChecksDocumentTransformer {
  static final _documentsWithoutDataChecks = Expando<DocumentNode>();

  static DocumentNode removeDataChecksIfDisabled(DocumentNode document) {
    if (FeatureFlagsRepository.I.enableDataChecks) return document;

    return _documentsWithoutDataChecks[document] ??=
        DataCheckSelectionRemover.removeFrom(document);
  }
}
