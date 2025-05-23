import 'dart:collection';

import 'package:church_admin/church_admin.dart';
import 'package:meta/meta.dart';

export 'sync_kv_store/kv_store.dart';

/// Synchronous-read, key-value storage that persists data to disk using [KVStore]
///
/// Loads all data from disk on startup and keeps it in memory for synchronous access
interface class SyncKVStore<T> {
  static final Map<String, SyncKVStore> _loadedStores = {};

  static SyncKVStore<T> fromLoaded<T>(String name) {
    final store = _loadedStores[name];

    if (store == null) {
      throw StateError('Store $name is not loaded');
    } else if (store is! SyncKVStore<T>) {
      throw StateError(
        'Expected loaded store "$name" to be of type SyncKVStore<$T>, '
        'but it is of type ${store.runtimeType}',
      );
    }

    return _loadedStores[name]! as SyncKVStore<T>;
  }

  static Future<SyncKVStore<T>> load<T>(
    KVStore<T> storage,
  ) async {
    final store = SyncKVStore<T>.private(storage);

    await store._load();

    _loadedStores[storage.name] = store;

    return store;
  }

  final Map<String, T?> _memoryCache = {};
  final KVStore<T> _storage;

  bool _isLoaded;

  @visibleForTesting
  SyncKVStore.private(this._storage) : _isLoaded = false;

  Future<void> _load() async {
    _memoryCache.addAll(await _storage.toMap());
    _isLoaded = true;
  }

  T? get(String key) {
    _checkLoaded();
    return _memoryCache[key];
  }

  Future<void> put(String key, T? value) async {
    _checkLoaded();

    if (value != null) {
      _memoryCache[key] = value;
    } else {
      _memoryCache.remove(key);
    }

    await _storage.put(key, value);
  }

  Future<void> putAll(Map<String, T?> values) async {
    _checkLoaded();

    for (final MapEntry(:key, :value) in values.entries) {
      if (value != null) {
        _memoryCache[key] = value;
      } else {
        _memoryCache.remove(key);
      }
    }

    await _storage.putAll(values);
  }

  Future<void> delete(String key) async {
    _checkLoaded();
    await _storage.delete(key);
    _memoryCache.remove(key);
  }

  Future<void> clear() async {
    _checkLoaded();
    await _storage.clear();
    _memoryCache.clear();
  }

  Future<void> close() async {
    _checkLoaded();
    await _storage.close();
    _memoryCache.clear();

    _isLoaded = false;

    _loadedStores.removeWhere((_, value) => value == this);
  }

  Map<String, T?> toMap() {
    _checkLoaded();
    return UnmodifiableMapView(_memoryCache);
  }

  void _checkLoaded() {
    if (!_isLoaded) {
      throw StateError('KVStore must be loaded before being used');
    }
  }
}
