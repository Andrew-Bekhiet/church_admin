import 'package:church_admin/church_admin.dart';

/// Fields the advanced search offers that Hasura does not expose yet. Each
/// entry names the missing piece; remove it once the backend adds it.
abstract final class AdvancedQueryKnownBackendGaps {
  static final Map<(Type, String), String> missingByField = {
    (Person, PersonFields().lastAttendance.name):
        'persons have no lastAttendance relationship',
    (Area, AreaFields().lastVisit.name):
        'areas have no lastVisit relationship to history.latest_visits',
  };

  static String? missingPieceBehind(FieldMetadata field) => switch (field) {
    RedirectingFieldMetadata(:final parentField) => missingPieceBehind(
      parentField,
    ),
    _ => missingByField[(field.parentType, field.name)],
  };
}
