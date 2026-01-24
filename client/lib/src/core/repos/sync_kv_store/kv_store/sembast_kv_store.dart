import 'package:church_admin/church_admin.dart';
import 'package:sembast/sembast.dart';

class SembastKvStore<T> implements KVStore<T> {
  final DatabaseClient _dbClient;
  final StoreRef<String, T> _storeRef;

  SembastKvStore(this._dbClient, this._storeRef);

  @override
  String get name => _storeRef.name;

  @override
  Future<void> clear() async => _storeRef.delete(_dbClient);

  @override
  Future<void> close() async {}

  @override
  Future<bool> containsKey(String key) async {
    final exists = await _storeRef.record(key).exists(_dbClient);

    return exists;
  }

  @override
  Future<void> delete(String key) async {
    await _storeRef.record(key).delete(_dbClient);
  }

  @override
  Future<T?> get(String key) async {
    final value = await _storeRef.record(key).get(_dbClient);

    return value;
  }

  @override
  Future<void> put(String key, T? value) async {
    if (value == null) {
      await _storeRef.record(key).delete(_dbClient);
    } else {
      await _storeRef.record(key).put(_dbClient, value);
    }
  }

  @override
  Future<Map<String, T>> toMap() async {
    final records = await _storeRef.find(_dbClient);

    return records.fold<Map<String, T>>(
      {},
      (acc, record) {
        acc[record.key] = record.value;
        return acc;
      },
    );
  }

  @override
  Future<void> putAll(Map<String, T?> values) async {
    final (:putRecordsKeys, :putRecordsValues, :deleteRecordsKeys) = values
        .entries
        .map((e) => MapEntry(e.key, e.value))
        .fold(
          (
            putRecordsKeys: <String>[],
            putRecordsValues: <T>[],
            deleteRecordsKeys: <String>[],
          ),
          (acc, e) {
            if (e.value == null) {
              acc.deleteRecordsKeys.add(e.key);
            } else {
              acc.putRecordsKeys.add(e.key);
              acc.putRecordsValues.add(e.value as T);
            }

            return acc;
          },
        );

    await _storeRef.records(putRecordsKeys).put(_dbClient, putRecordsValues);
    await _storeRef.records(deleteRecordsKeys).delete(_dbClient);
  }
}

extension KvStoreExtension on DatabaseClient {
  SembastKvStore<T> kv<T>(String name) {
    return SembastKvStore<T>(this, StoreRef(name));
  }
}
