import 'package:church_admin/church_admin.dart';

import 'advanced_query_case.dart';

/// Filters the advanced search offers that the backend does not expose yet.
/// Each entry names the missing piece, keyed by the dotted path from the
/// field on its type; remove it once the backend adds it.
abstract final class AdvancedQueryKnownBackendGaps {
  static final Map<(Type, String), String> missingFilterByPath = {
    (
      Person,
      '${PersonFields().lastAttendance.name}.${LastRecordedByInfoFields().user.name}',
    ): 'persons have no latestAttendedAt relationship (ENG-292)',
  };

  static String? missingPieceBehindFilter(AdvancedQueryCase queryCase) {
    if (queryCase.query.filters.isEmpty) return null;

    final field = queryCase.field;
    final path = _pathOf(field);

    for (var length = 1; length <= path.length; length++) {
      final missing =
          missingFilterByPath[(field.parentType, path.take(length).join('.'))];
      if (missing != null) return missing;
    }

    return null;
  }

  static List<String> _pathOf(FieldMetadata field) => switch (field) {
    RedirectingFieldMetadata(:final parentField, :final targetField) => [
      ..._pathOf(parentField),
      ..._pathOf(targetField),
    ],
    _ => [field.name],
  };
}
