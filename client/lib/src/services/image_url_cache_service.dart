import 'dart:async';
// ignore: unused_import
import 'dart:developer';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:universal_io/io.dart';

class ImageUrlCacheService {
  static ImageUrlCacheService get I =>
      globalProviderContainer.read(imageUrlCacheServiceProvider);

  ImageUrlCacheService({
    required this.box,
    required this.cacheManager,
  }) {
    assert(box.isOpen);
  }

  final Box<String> box;
  final BaseCacheManager cacheManager;

  Future<File> getImageFile(IImage imageObject) async {
    return cacheManager.getSingleFile(await getImageUrl(imageObject));
  }

  /// Returns cached url if available and its file is cached or if its not expired
  /// otherwise returns a fresh download url
  Future<String> getImageUrl(IImage imageObject) async {
    if (!imageObject.hasImage) throw StateError('Object has no image');

    final cachedImageUrl = getNonExpiredCachedImageUrl(imageObject);

    if (cachedImageUrl != null &&
        (await isUrlFileCachedAndValid(cachedImageUrl) ||
            !isUrlExpired(cachedImageUrl))) {
      return cachedImageUrl;
    }

    return _getUrlAndSaveToCache(imageObject);
  }

  /// Retrieves the cached image URL for the given [imageObject].
  ///
  /// Throws a [StateError] if the [imageObject] has no image.
  ///
  /// Returns the cached URL if it exists and is not expired, otherwise returns null.
  String? getNonExpiredCachedImageUrl(IImage imageObject) {
    if (!imageObject.hasImage) throw StateError('Object has no image');

    final imageInfo = imageObject.imageInfo;

    final cachedData = box.get(imageInfo.cacheKey);

    if (cachedData == null) return null;

    final cacheLastUpdatedTime = DateTime.parse(cachedData.split('|').first);
    final cachedUrl = cachedData.split('|').last;

    if (cacheLastUpdatedTime != imageInfo.lastUpdatedTime ||
        isUrlExpired(cachedUrl)) {
      return null;
    }

    return cachedUrl;
  }

  Future<bool> isUrlFileCachedAndValid(String cachedUrl) async {
    final cacheFile = await cacheManager.getFileFromCache(cachedUrl);
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

  Future<String> _getUrlAndSaveToCache(IImage imageObject) async {
    final downloadUrl = await imageObject.imageInfo.getDownloadUrl();

    await _saveUrlToCache(imageObject, downloadUrl);

    return downloadUrl;
  }

  Future<String> _saveUrlToCache(
    IImage imageObject,
    String url,
  ) async {
    await box.put(
      imageObject.imageInfo.cacheKey,
      imageObject.imageInfo.lastUpdatedTime!.toIso8601String() + '|' + url,
    );

    return url;
  }
}
