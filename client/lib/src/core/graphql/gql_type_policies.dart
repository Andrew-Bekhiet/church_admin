import 'package:normalize/normalize.dart';

/// Entity keying for the normalized GraphQL cache.
///
/// Rows without an `id` would otherwise be embedded into the single shared
/// `Query` store entry; each subsequent cache write then deep-merges and
/// rewrites that whole entry (a profiled jank source). Keying them by their
/// natural keys turns each row into its own normalized entity instead.
///
/// Every query selection of a keyed type MUST select all of its key fields;
/// otherwise `normalize` throws internally and silently falls back to embedding
/// that occurrence.
abstract final class GqlTypePolicies {
  static const Map<String, TypePolicy> policies = {
    ..._keyedEntities,
    ..._embeddedRows,
  };

  static const TypePolicy _embedded = TypePolicy(keyFields: {});

  static const Map<String, TypePolicy> _keyedEntities = {
    // The Ash id of a user is its uid, and a sort or second line that reaches
    // a user selects only the uid.
    'User': TypePolicy(keyFields: {'uid': true}),
    // The Ash StudyYear's id is its encoded order, and list selections built
    // from its key field (`QueryableType.keyField`) select order, not id.
    'StudyYear': TypePolicy(keyFields: {'order': true}),
  };

  static const Map<String, TypePolicy> _embeddedRows = {
    'Edit': _embedded,
    'ServiceMembership': _embedded,
    'GroupMembership': _embedded,
  };
}
