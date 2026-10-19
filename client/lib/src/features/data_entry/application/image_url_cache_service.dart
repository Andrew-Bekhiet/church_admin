import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:universal_io/io.dart';

class ImageUrlCacheService {
  static ImageUrlCacheService get I =>
      globalProviderContainer.read(imageUrlCacheServiceProvider);

  static const String storeName = 'ImageUrlsCacheV2';
  static const String legacyStoreName = 'ImageUrlsCache';

  final SyncKVStore<String> box;
  final BaseCacheManager cacheManager;

  ImageUrlCacheService({
    required this.box,
    required this.cacheManager,
  });

  Future<File> getImageFile(ObjectImageInfo imageInfo) async {
    return cacheManager.getSingleFile(
      await getImageUrl(imageInfo),
      key: imageInfo.photoCacheKey,
    );
  }

  /// Returns cached url if available and its file is cached or if its not expired
  /// otherwise returns a fresh download url
  Future<String> getImageUrl(ObjectImageInfo imageObject) async {
    final cached = _cachedEntryOf(imageObject);

    if (cached != null &&
        (!cached.isExpired ||
            await isUrlFileCachedAndValid(imageObject.photoCacheKey))) {
      return SynchronousFuture(cached.url);
    }

    return _getUrlAndSaveToCache(imageObject);
  }

  /// Retrieves the cached image URL for the given [imageObject].
  ///
  /// Throws a [StateError] if the [imageObject] has no image.
  ///
  /// Returns the cached URL if it exists and is not expired, otherwise returns null.
  String? getNonExpiredCachedImageUrl(ObjectImageInfo imageObject) {
    final cached = _cachedEntryOf(imageObject);

    if (cached == null || cached.isExpired) {
      return null;
    }

    return cached.url;
  }

  String? getCachedImageUrl(ObjectImageInfo imageInfo) =>
      _cachedEntryOf(imageInfo)?.url;

  Future<bool> isUrlFileCachedAndValid(String cacheKey) async {
    final cacheFile = await cacheManager.getFileFromCache(cacheKey);

    return cacheFile != null && cacheFile.validTill.isAfter(DateTime.now());
  }

  Future<String> _getUrlAndSaveToCache(ObjectImageInfo imageInfo) async {
    final link = await imageInfo.getDownloadLink();

    await _updateFileAndUrlCache(imageInfo, link);

    return link.url;
  }

  CachedImageUrl? _cachedEntryOf(ObjectImageInfo imageInfo) {
    final cachedData = box.get(imageInfo.cacheKey);

    if (cachedData == null) return null;

    final cached = CachedImageUrl.parse(cachedData);

    return cached.photoUpdatedAt == imageInfo.lastUpdatedTime ? cached : null;
  }

  Future<void> _updateFileAndUrlCache(
    ObjectImageInfo imageInfo,
    PhotoLink link,
  ) async {
    final cacheKey = imageInfo.cacheKey;
    final updatedTime = imageInfo.lastUpdatedTime!;

    final oldCache = box.get(cacheKey);

    box.put(
      cacheKey,
      CachedImageUrl(
        photoUpdatedAt: updatedTime,
        expiresAt: link.expiresAt,
        url: link.url,
      ).toStoredString(),
    );

    if (oldCache == null) return;

    final oldUpdatedTime = CachedImageUrl.parse(oldCache).photoUpdatedAt;

    if (oldUpdatedTime == updatedTime) return;

    await cacheManager.removeFile(
      ObjectImageInfo.photoCacheKeyOf(cacheKey, oldUpdatedTime),
    );
  }
}
