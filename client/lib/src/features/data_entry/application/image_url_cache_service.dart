import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:universal_io/io.dart';

class ImageUrlCacheService {
  static ImageUrlCacheService get I =>
      globalProviderContainer.read(imageUrlCacheServiceProvider);

  ImageUrlCacheService({
    required this.box,
    required this.cacheManager,
  }) : assert(box.isOpen);

  final Box<String> box;
  final BaseCacheManager cacheManager;

  Future<File> getImageFile(ObjectImageInfo imageInfo) async {
    return cacheManager.getSingleFile(
      await getImageUrl(imageInfo),
      key: imageInfo.cacheKey,
    );
  }

  /// Returns cached url if available and its file is cached or if its not expired
  /// otherwise returns a fresh download url
  Future<String> getImageUrl(ObjectImageInfo imageObject) async {
    final cachedImageUrl = getCachedImageUrl(imageObject);

    if (cachedImageUrl != null &&
        (!isUrlExpired(cachedImageUrl) ||
            await isUrlFileCachedAndValid(imageObject.cacheKey))) {
      return SynchronousFuture(cachedImageUrl);
    }

    return _getUrlAndSaveToCache(imageObject);
  }

  /// Retrieves the cached image URL for the given [imageObject].
  ///
  /// Throws a [StateError] if the [imageObject] has no image.
  ///
  /// Returns the cached URL if it exists and is not expired, otherwise returns null.
  String? getNonExpiredCachedImageUrl(ObjectImageInfo imageObject) {
    final cachedUrl = getCachedImageUrl(imageObject);

    if (cachedUrl == null || isUrlExpired(cachedUrl)) {
      return null;
    }

    return cachedUrl;
  }

  String? getCachedImageUrl(ObjectImageInfo imageInfo) {
    final cachedData = box.get(imageInfo.cacheKey);

    if (cachedData == null) return null;

    final cacheLastUpdatedTime = DateTime.parse(cachedData.split('|').first);
    final cachedUrl = cachedData.split('|').last;

    if (cacheLastUpdatedTime != imageInfo.lastUpdatedTime) {
      return null;
    }

    return cachedUrl;
  }

  Future<bool> isUrlFileCachedAndValid(String cacheKey) async {
    final cacheFile = await cacheManager.getFileFromCache(cacheKey);
    return cacheFile != null && cacheFile.validTill.isAfter(DateTime.now());
  }

  bool isUrlExpired(String url) {
    final parsedUrl = Uri.parse(url);
    final queryParameters = parsedUrl.queryParameters;

    if (queryParameters['X-Goog-Date'] == null ||
        queryParameters['X-Goog-Expires'] == null) {
      return true;
    }

    final createdAt = DateTime.parse(queryParameters['X-Goog-Date']!);
    final expiresInSeconds = int.parse(queryParameters['X-Goog-Expires']!);

    final expiresAt = createdAt.add(Duration(seconds: expiresInSeconds));

    return expiresAt.isBefore(DateTime.now());
  }

  Future<String> _getUrlAndSaveToCache(ObjectImageInfo imageInfo) async {
    final downloadUrl = await imageInfo.getDownloadUrl();

    await _updateFileAndUrlCache(imageInfo, downloadUrl);

    return downloadUrl;
  }

  Future<void> _updateFileAndUrlCache(
    ObjectImageInfo imageInfo,
    String url,
  ) async {
    final cacheKey = imageInfo.cacheKey;

    final oldCache = box.get(cacheKey);

    await box.put(
      cacheKey,
      '${imageInfo.lastUpdatedTime!.toIso8601String()}|$url',
    );

    if (oldCache == null) return;

    final [oldUpdatedTime, _] = oldCache.split('|');

    if (oldUpdatedTime == imageInfo.lastUpdatedTime?.toIso8601String()) return;

    await cacheManager.removeFile(cacheKey);
  }
}
