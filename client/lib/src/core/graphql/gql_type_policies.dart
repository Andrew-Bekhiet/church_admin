import 'package:normalize/normalize.dart';

/// Entity keying for the normalized GraphQL cache.
///
/// History roster/analysis rows carry no `id`, so without an explicit key
/// `normalize` embeds every one of them into the single shared `Query` store
/// entry; each subsequent cache write then deep-merges and rewrites that whole
/// entry (a profiled jank source). Keying them by their natural composite keys
/// turns each row into its own normalized entity instead.
///
/// Every query selection of a keyed type MUST select all of its key fields;
/// otherwise `normalize` throws internally and silently falls back to embedding
/// that occurrence.
abstract final class GqlTypePolicies {
  static const Map<String, TypePolicy> policies = {
    ..._keyedEntities,
    ..._historyLogViews,
    ..._embeddedRows,
  };

  static const TypePolicy _embedded = TypePolicy(keyFields: {});

  static const Map<String, TypePolicy> _keyedEntities = {
    'HistoryMeetingRoster': TypePolicy(
      keyFields: {'personId': true, 'asServant': true, 'meetingId': true},
    ),
    'AuthUsersData': TypePolicy(keyFields: {'uid': true}),
    // Keyed by order (studyYearsByPk(order:)); their id is a nullable String
    // that is never selected.
    'StudyYears': TypePolicy(keyFields: {'order': true}),
  };

  // Keying these is deferred to ENG-157.
  static const Map<String, TypePolicy> _historyLogViews = {
    'HistoryLatestEdits': _embedded,
    'HistoryLatestCalls': _embedded,
    'HistoryLatestVisits': _embedded,
    'HistoryLatestFatherVisits': _embedded,
    'HistoryLatestKodases': _embedded,
    'HistoryLatestConfessions': _embedded,
    'HistoryEditHistory': _embedded,
    'HistoryCallHistory': _embedded,
    'HistoryVisitHistory': _embedded,
    'HistoryAttendanceDays': _embedded,
    'HistoryMeetingDays': _embedded,
  };

  static const Map<String, TypePolicy> _embeddedRows = {
    'PersonsGroups': _embedded,
    'PersonsHobbies': _embedded,
    'PersonsServices': _embedded,
    'PersonsTags': _embedded,
    'ClassesPersons': _embedded,
    'AreasStreets': _embedded,
    'FamiliesFamilies': _embedded,
    'AuthUsersAdminOn': _embedded,
    'AuthUsersPermissions': _embedded,
    'UsersFcmTokens': _embedded,
    'UsersPreferences': _embedded,
  };
}
