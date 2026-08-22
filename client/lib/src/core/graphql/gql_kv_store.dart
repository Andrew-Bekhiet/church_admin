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

  final SyncKVStore<Map<String, dynamic>> _storage;

  GqlKvStore(this._storage);

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
