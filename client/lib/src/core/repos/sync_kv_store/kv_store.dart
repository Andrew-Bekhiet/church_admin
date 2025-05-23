export 'kv_store/sembast_kv_store.dart';
export 'kv_store/sembast_serializable_kv_store.dart';

/// Key-value storage that persists data to disk
abstract interface class KVStore<T> {
  String get name;

  Future<bool> containsKey(String key);

  Future<T?> get(String key);

  Future<void> put(String key, T? value);

  Future<void> putAll(Map<String, T?> values);

  Future<void> delete(String key);

  Future<Map<String, T>> toMap();

  Future<void> clear();

  Future<void> close();
}
