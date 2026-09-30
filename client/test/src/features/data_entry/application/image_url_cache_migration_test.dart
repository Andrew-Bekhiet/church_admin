import 'dart:typed_data';

import 'package:church_admin/church_admin.dart';
import 'package:file/memory.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sembast/sembast_memory.dart';

import '../../../fakes/fake_box.dart';

void main() {
  final person = Person(
    id: 'id',
    name: 'name',
    photoUpdatedAt: DateTime.utc(2024),
  );
  final legacyEntry =
      '${person.photoUpdatedAt!.toIso8601String()}|https://example.com/photo';
  final photoBytes = Uint8List.fromList([1, 2, 3]);

  late KVStore<String> legacyStore;
  late FakeSyncKVStore<String> box;
  late CacheManager cacheManager;

  ImageUrlCacheMigration migration() => ImageUrlCacheMigration(
    legacyStore: legacyStore,
    box: box,
    cacheManager: cacheManager,
  );

  setUp(() async {
    final database = await databaseFactoryMemory.openDatabase(
      'image_url_cache_migration_test',
    );
    legacyStore = database.kv<String>(ImageUrlCacheService.legacyStoreName);
    box = FakeSyncKVStore<String>();
    cacheManager = CacheManager(
      Config(
        'image_url_cache_migration_test',
        repo: JsonCacheInfoRepository.withFile(
          MemoryFileSystem().file('cache.json'),
        ),
        fileSystem: MemoryCacheSystem(),
      ),
    );

    await legacyStore.put(person.imageInfo.cacheKey, legacyEntry);
    await cacheManager.putFile(
      'https://example.com/photo',
      photoBytes,
      key: person.imageInfo.cacheKey,
      fileExtension: 'jpg',
    );
  });

  tearDown(() async {
    await cacheManager.dispose();
    await databaseFactoryMemory.deleteDatabase(
      'image_url_cache_migration_test',
    );
  });

  test(
    'a photo cached before the upgrade is found under its versioned key',
    () async {
      await migration().run();

      final migratedPhoto = await cacheManager.getFileFromCache(
        person.imageInfo.photoCacheKey,
      );
      expect(await migratedPhoto?.file.readAsBytes(), photoBytes);
    },
  );

  test('the photo is no longer cached under its unversioned key', () async {
    await migration().run();

    expect(
      await cacheManager.getFileFromCache(person.imageInfo.cacheKey),
      isNull,
    );
  });

  test('the photo url cached before the upgrade is kept', () async {
    await migration().run();

    expect(
      ImageUrlCacheService(
        box: box,
        cacheManager: cacheManager,
      ).getCachedImageUrl(person.imageInfo),
      'https://example.com/photo',
    );
  });

  test('a url cached after the upgrade is not overwritten', () async {
    final updatedPerson = person.copyWith(photoUpdatedAt: DateTime.utc(2025));
    box.put(
      updatedPerson.imageInfo.cacheKey,
      '${updatedPerson.photoUpdatedAt!.toIso8601String()}|https://example.com/new',
    );

    await migration().run();

    expect(
      ImageUrlCacheService(
        box: box,
        cacheManager: cacheManager,
      ).getCachedImageUrl(updatedPerson.imageInfo),
      'https://example.com/new',
    );
  });

  test('a completed migration has nothing left to migrate', () async {
    await migration().run();

    expect(await legacyStore.toMap(), isEmpty);
  });
}
