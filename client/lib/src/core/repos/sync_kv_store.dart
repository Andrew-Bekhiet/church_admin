import 'dart:async';
import 'dart:collection';

import 'package:church_admin/church_admin.dart';
import 'package:meta/meta.dart';

export 'sync_kv_store/kv_store.dart';

/// Synchronous-read key-value storage backed by a [KVStore], loaded into memory
/// on startup.
///
/// Writes are write-behind: [put], [putAll] and [delete] mutate the in-memory
/// cache synchronously and buffer the change, and a single debounced storage
/// batch persists the whole buffer to disk. This keeps the GraphQL cache's
/// per-entity writes off the main isolate's disk-transaction hot path.
interface class SyncKVStore<T> {
  static const Duration _flushDelay = Duration(milliseconds: 750);
  static const Duration _maxFlushDelay = Duration(seconds: 3);

  static final Map<String, SyncKVStore> _loadedStores = {};

  static Future<void> flushAll() =>
      Future.wait(_loadedStores.values.map((store) => store.flush()));

  static Future<void> clearAllLoaded() =>
      Future.wait(_loadedStores.values.map((store) => store.clear()));

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

    return store;
  }

  static Future<SyncKVStore<T>> load<T>(KVStore<T> storage) async {
    final store = SyncKVStore<T>.private(storage);

    await store._load();

    _loadedStores[storage.name] = store;

    return store;
  }

  final KVStore<T> _storage;
  final Map<String, T?> _memoryCache = {};

  Map<String, T?> _pendingWrites = {};

  Timer? _flushTimer;
  Timer? _maxFlushTimer;
  Future<void>? _currentFlushOperationFuture;

  bool _isLoaded;

  @visibleForTesting
  SyncKVStore.private(this._storage) : _isLoaded = false;

  T? get(String key) {
    _checkLoaded();

    return _memoryCache[key];
  }

  Future<void> _load() async {
    _memoryCache.addAll(await _storage.toMap());
    _isLoaded = true;
  }

  void put(String key, T? value) {
    _checkLoaded();
    _write(key, value);
    _scheduleFlush();
  }

  void putAll(Map<String, T?> values) {
    _checkLoaded();

    for (final MapEntry(:key, :value) in values.entries) {
      _write(key, value);
    }

    _scheduleFlush();
  }

  void delete(String key) {
    _checkLoaded();
    _write(key, null);
    _scheduleFlush();
  }

  /// Persists all buffered writes in a single batch, serializing with any
  /// flush already in flight.
  Future<void> flush() {
    _cancelTimers();

    final nextFlushFuture =
        _currentFlushOperationFuture?.then((_) => _drainPending()) ??
        _drainPending();

    _currentFlushOperationFuture = nextFlushFuture;
    unawaited(
      nextFlushFuture.whenComplete(() {
        if (!identical(_currentFlushOperationFuture, nextFlushFuture)) return;

        _currentFlushOperationFuture = null;
      }),
    );

    return nextFlushFuture;
  }

  Future<void> clear() async {
    _checkLoaded();

    _cancelTimers();
    _pendingWrites = {};

    _memoryCache.clear();

    await _currentFlushOperationFuture;
    await _storage.clear();
  }

  Future<void> close() async {
    _checkLoaded();

    await flush();
    await _storage.close();

    _memoryCache.clear();
    _pendingWrites = {};
    _isLoaded = false;

    _loadedStores.removeWhere((_, value) => value == this);
  }

  bool containsKey(String key) {
    _checkLoaded();

    return _memoryCache.containsKey(key);
  }

  bool containsValue(T? value) {
    _checkLoaded();

    return _memoryCache.containsValue(value);
  }

  Map<String, T?> toMap() {
    _checkLoaded();

    return UnmodifiableMapView(_memoryCache);
  }

  void _write(String key, T? value) {
    if (value != null) {
      _memoryCache[key] = value;
    } else {
      _memoryCache.remove(key);
    }

    _pendingWrites[key] = value;
  }

  void _scheduleFlush() {
    _flushTimer?.cancel();
    _flushTimer = Timer(_flushDelay, () => unawaited(flush()));
    _maxFlushTimer ??= Timer(_maxFlushDelay, () => unawaited(flush()));
  }

  void _cancelTimers() {
    _flushTimer?.cancel();
    _flushTimer = null;
    _maxFlushTimer?.cancel();
    _maxFlushTimer = null;
  }

  Future<void> _drainPending() async {
    if (_pendingWrites.isEmpty) return;

    final batch = _pendingWrites;
    _pendingWrites = <String, T?>{};

    try {
      await _storage.putAll(batch);
    } on Exception {
      _pendingWrites = {...batch, ..._pendingWrites};
    }
  }

  void _checkLoaded() {
    if (!_isLoaded) {
      throw StateError('KVStore must be loaded before being used');
    }
  }
}
