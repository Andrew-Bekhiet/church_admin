import 'package:church_admin/church_admin.dart';
import 'package:graphql_flutter/graphql_flutter.dart' as gql;

class GqlKvStore extends gql.Store {
  final SyncKVStore<Map<String, dynamic>> _storage;

  GqlKvStore(this._storage);

  @override
  void delete(String dataId) => _storage.delete(dataId);

  @override
  Map<String, dynamic>? get(String dataId) => _storage.get(dataId);

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
