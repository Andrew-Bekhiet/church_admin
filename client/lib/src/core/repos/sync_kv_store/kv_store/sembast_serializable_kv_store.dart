import 'package:church_admin/church_admin.dart';
import 'package:sembast/sembast.dart';

class SembastSerializableKvStore<T> implements SembastKvStore<T> {
  final T Function(Map<String, dynamic>) fromJson;
  final Map<String, dynamic> Function(T) toJson;
  final SembastKvStore<Map<String, dynamic>> _inner;

  @override
  String get name => _inner.name;

  SembastSerializableKvStore({
    required DatabaseClient dbClient,
    required StoreRef<String, Map<String, dynamic>> storeRef,
    required this.fromJson,
    required this.toJson,
  }) : _inner = SembastKvStore(dbClient, storeRef);

  @override
  Future<T?> get(String key) async {
    final value = await _inner.get(key);

    return value == null ? null : fromJson(value);
  }

  @override
  Future<void> clear() async => _inner.clear();

  @override
  Future<void> close() async => _inner.close();

  @override
  Future<bool> containsKey(String key) async => _inner.containsKey(key);

  @override
  Future<void> delete(String key) async => _inner.delete(key);

  @override
  Future<void> put(String key, T? value) async =>
      _inner.put(key, value == null ? null : toJson(value));

  @override
  Future<Map<String, T>> toMap() async => (await _inner.toMap()).map(
    (key, value) => MapEntry(key, fromJson(value)),
  );

  @override
  Future<void> putAll(Map<String, T?> values) async => _inner.putAll(
    values.map(
      (key, value) => MapEntry(key, value == null ? null : toJson(value)),
    ),
  );
}

extension SerializableKvStoreExtension on DatabaseClient {
  SembastSerializableKvStore<T> serializableKv<T>(
    String name, {
    required T Function(Map<String, dynamic>) fromJson,
    required Map<String, dynamic> Function(T) toJson,
  }) {
    return SembastSerializableKvStore<T>(
      dbClient: this,
      storeRef: StoreRef(name),
      fromJson: fromJson,
      toJson: toJson,
    );
  }
}
