import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:fake_async/fake_async.dart';
import 'package:flutter_test/flutter_test.dart';

class RecordingKvStore<T> implements KVStore<T> {
  RecordingKvStore(this.name);

  @override
  final String name;

  final Map<String, T> data = {};
  final List<Map<String, T?>> putAllBatches = [];

  int clearCount = 0;
  int closeCount = 0;

  @override
  Future<void> putAll(Map<String, T?> values) async {
    putAllBatches.add(Map<String, T?>.of(values));

    for (final MapEntry(:key, :value) in values.entries) {
      if (value == null) {
        data.remove(key);
      } else {
        data[key] = value;
      }
    }
  }

  @override
  Future<void> put(String key, T? value) => putAll({key: value});

  @override
  Future<void> delete(String key) => putAll({key: null});

  @override
  Future<void> clear() async {
    clearCount++;
    data.clear();
  }

  @override
  Future<void> close() async {
    closeCount++;
  }

  @override
  Future<bool> containsKey(String key) async => data.containsKey(key);

  @override
  Future<T?> get(String key) async => data[key];

  @override
  Future<Map<String, T>> toMap() async => Map<String, T>.of(data);
}

void main() {
  group('SyncKVStore write-behind', () {
    late RecordingKvStore<int> storage;
    late SyncKVStore<int> store;
    late bool closed;

    setUp(() async {
      storage = RecordingKvStore<int>('test');
      store = await SyncKVStore.load<int>(storage);
      closed = false;
    });

    tearDown(() async {
      if (!closed) {
        await store.close();
      }
    });

    test('reads are synchronous and writes do not persist before flush', () {
      store.put('a', 1);

      expect(store.get('a'), 1);
      expect(storage.putAllBatches, isEmpty);
    });

    test('flush batches all pending writes into a single putAll', () async {
      store
        ..putAll({'a': 1, 'b': 2, 'c': 3})
        ..put('d', 4);

      await store.flush();

      expect(storage.putAllBatches, hasLength(1));
      expect(storage.putAllBatches.single, {'a': 1, 'b': 2, 'c': 3, 'd': 4});
    });

    test(
      'coalesces repeated writes to the same key (last write wins)',
      () async {
        store
          ..put('k', 1)
          ..put('k', 2)
          ..put('k', 3);

        await store.flush();

        expect(storage.putAllBatches, hasLength(1));
        expect(storage.putAllBatches.single, {'k': 3});
        expect(store.get('k'), 3);
      },
    );

    test('delete-then-put on the same key persists the put', () async {
      store.put('k', 1);
      await store.flush();

      store
        ..delete('k')
        ..put('k', 5);
      await store.flush();

      expect(storage.putAllBatches.last, {'k': 5});
      expect(store.get('k'), 5);
      expect(storage.data['k'], 5);
    });

    test('put-then-delete on the same key persists the delete', () async {
      store
        ..put('k', 1)
        ..delete('k');

      await store.flush();

      expect(storage.putAllBatches.single, {'k': null});
      expect(store.get('k'), isNull);
      expect(storage.data.containsKey('k'), isFalse);
    });

    test('close flushes pending writes then closes storage', () async {
      store.put('x', 9);

      await store.close();
      closed = true;

      expect(storage.putAllBatches.single, {'x': 9});
      expect(storage.closeCount, 1);
      expect(() => SyncKVStore.fromLoaded<int>('test'), throwsStateError);
    });

    test(
      'clear cancels pending writes and clears memory and storage',
      () async {
        store.put('y', 1);

        await store.clear();

        expect(storage.putAllBatches, isEmpty);
        expect(storage.clearCount, 1);
        expect(store.toMap(), isEmpty);
        expect(storage.data, isEmpty);
      },
    );

    test('flushAll flushes every loaded store', () async {
      final otherStorage = RecordingKvStore<int>('other');
      final otherStore = await SyncKVStore.load<int>(otherStorage);

      store.put('a', 1);
      otherStore.put('b', 2);

      await SyncKVStore.flushAll();

      expect(storage.putAllBatches.single, {'a': 1});
      expect(otherStorage.putAllBatches.single, {'b': 2});

      await otherStore.close();
    });
  });

  group('SyncKVStore debounce timing', () {
    SyncKVStore<int> loadInZone(
      FakeAsync async,
      RecordingKvStore<int> storage,
    ) {
      late SyncKVStore<int> store;
      unawaited(
        SyncKVStore.load<int>(storage).then((loaded) => store = loaded),
      );
      async.flushMicrotasks();
      return store;
    }

    test(
      'debounced timer flushes pending writes without an explicit flush',
      () {
        fakeAsync((async) {
          final storage = RecordingKvStore<int>('debounce');
          final store = loadInZone(async, storage)..put('a', 1);

          expect(storage.putAllBatches, isEmpty);

          async.elapse(const Duration(milliseconds: 700));
          expect(storage.putAllBatches, isEmpty);

          async
            ..elapse(const Duration(milliseconds: 50))
            ..flushMicrotasks();

          expect(storage.putAllBatches, hasLength(1));
          expect(storage.putAllBatches.single, {'a': 1});

          unawaited(store.close());
          async.flushMicrotasks();
        });
      },
    );

    test('max-coalesce cap flushes despite a continuously reset debounce', () {
      fakeAsync((async) {
        final storage = RecordingKvStore<int>('max-cap');
        final store = loadInZone(async, storage);

        var lastWritten = -1;
        while (storage.putAllBatches.isEmpty) {
          store.put('k', ++lastWritten);
          async.elapse(const Duration(milliseconds: 200));
        }

        expect(async.elapsed, lessThanOrEqualTo(const Duration(seconds: 3)));
        expect(storage.putAllBatches.last, {'k': lastWritten});

        unawaited(store.close());
        async.flushMicrotasks();
      });
    });
  });
}
