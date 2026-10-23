import 'package:church_admin/church_admin.dart';

/// Fields the advanced search offers that the backend does not expose yet.
/// Each entry names the missing piece; remove it once the backend adds it.
abstract final class AdvancedQueryKnownBackendGaps {
  static const Map<(Type, String), String> missingByField = {};

  static String? missingPieceBehind(FieldMetadata field) => switch (field) {
    RedirectingFieldMetadata(:final parentField) => missingPieceBehind(
      parentField,
    ),
    _ => missingByField[(field.parentType, field.name)],
  };
}
