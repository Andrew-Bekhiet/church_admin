import 'package:church_admin/church_admin.dart';

class DataChecksFlagFieldFilter {
  static bool isFieldAllowed(FieldMetadata field) =>
      FeatureFlagsRepository.I.enableDataChecks ||
      field.fieldQueryableType != AdvancedQueriesMetadata().dataCheck;

  const DataChecksFlagFieldFilter._();
}
