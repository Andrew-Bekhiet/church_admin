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
  void delete(String key) {
    _map.remove(key);
  }

  @override
  Future<void> flush() async {}

  @override
  T? get(String key) {
    return _map[key];
  }

  @override
  void put(String key, T? value) {
    if (value == null) {
      _map.remove(key);
    } else {
      _map[key] = value;
    }
  }

  @override
  void putAll(Map<String, T?> values) {
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
