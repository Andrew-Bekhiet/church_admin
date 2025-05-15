import 'package:church_admin/church_admin.dart';

class FakeSyncKVStore<T> implements SyncKVStore<T> {
  FakeSyncKVStore();

  final Map<String, T> _map = {};

  @override
  Future<void> clear() async {
    _map.clear();
  }

  @override
  Future<void> close() async {}

  @override
  Future<void> delete(String key) async {
    _map.remove(key);
  }

  @override
  T? get(String key) {
    return _map[key];
  }

  @override
  Future<void> put(String key, T? value) async {
    if (value == null) {
      _map.remove(key);
    } else {
      _map[key] = value;
    }
  }

  @override
  Future<void> putAll(Map<String, T?> values) async {
    for (final entry in values.entries) {
      if (entry.value == null) {
        _map.remove(entry.key);
      } else {
        _map[entry.key] = entry.value as T;
      }
    }
  }

  @override
  Map<String, T> toMap() {
    return _map;
  }
}
