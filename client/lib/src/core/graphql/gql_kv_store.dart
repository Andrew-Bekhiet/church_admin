import 'package:church_admin/church_admin.dart';
import 'package:graphql_flutter/graphql_flutter.dart' as gql;

class GqlKvStore extends gql.Store {
  /// Bumped from 'GQLCache' to abandon the old layout where all query results
  /// were deep-merged into one giant `Query` root entry.
  static const int _currentVersion = 2;

  static const String storeName = 'GQLCacheV$_currentVersion';

  static final List<String> legacyStoreNames = [
    'GQLCache',
    for (int version = 2; version < _currentVersion; version++)
      'GQLCacheV$version',
  ];

  static const String _filledUnderAccessKey = '@filledUnderAccess';

  final SyncKVStore<Map<String, dynamic>> _storage;

  /// The access of the user whose queries filled this cache, kept inside the
  /// cache so that clearing one always clears the other.
  Json? get filledUnderAccess => _storage.get(_filledUnderAccessKey);

  GqlKvStore(this._storage);

  Future<void> resetFilledUnder(Json access) async {
    await _storage.clear();
    _storage.put(_filledUnderAccessKey, access);
    await _storage.flush();
  }

  Future<void> resetLeavingAccessUnrecorded() => _storage.clear();

  @override
  Map<String, dynamic>? get(String dataId) => _storage.get(dataId);

  @override
  void delete(String dataId) => _storage.delete(dataId);

  @override
  void put(String dataId, Map<String, dynamic>? value) =>
      _storage.put(dataId, value);

  @override
  void putAll(Map<String, Map<String, dynamic>?> data) => _storage.putAll(data);

  @override
  void reset() => _storage.clear();

  @override
  Map<String, Map<String, dynamic>?> toMap() => _storage.toMap();

  Future<void> close() => _storage.close();
}
