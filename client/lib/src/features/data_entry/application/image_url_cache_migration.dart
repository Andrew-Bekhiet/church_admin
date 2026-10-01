import 'package:church_admin/church_admin.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:path/path.dart' as p;

class ImageUrlCacheMigration {
  final KVStore<String> legacyStore;
  final SyncKVStore<String> box;
  final BaseCacheManager cacheManager;

  const ImageUrlCacheMigration({
    required this.legacyStore,
    required this.box,
    required this.cacheManager,
  });

  Future<void> run() async {
    final legacyEntries = await legacyStore.toMap();

    for (final MapEntry(key: cacheKey, value: cachedData)
        in legacyEntries.entries) {
      if (!box.containsKey(cacheKey)) box.put(cacheKey, cachedData);

      await legacyStore.delete(cacheKey);

      await _moveLegacyPhotoFile(
        cacheKey,
        ObjectImageInfo.photoCacheKeyOf(
          cacheKey,
          DateTime.parse(cachedData.split('|').first),
        ),
      );
    }
  }

  Future<void> _moveLegacyPhotoFile(
    String legacyKey,
    String photoCacheKey,
  ) async {
    final legacyPhoto = await cacheManager.getFileFromCache(legacyKey);

    if (legacyPhoto == null) return;

    await cacheManager.putFileStream(
      legacyPhoto.originalUrl,
      legacyPhoto.file.openRead(),
      key: photoCacheKey,
      maxAge: legacyPhoto.validTill.difference(DateTime.now()),
      fileExtension: p.extension(legacyPhoto.file.path).replaceFirst('.', ''),
    );
    await cacheManager.removeFile(legacyKey);
  }
}
