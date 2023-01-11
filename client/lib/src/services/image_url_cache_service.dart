import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:universal_file/universal_file.dart';

class ImageUrlCacheService {
  ImageUrlCacheService({Box<String>? box, BaseCacheManager? cacheManager})
      : box = box ?? GetIt.I<HiveInterface>().box('ImageUrlsCache'),
        cacheManager = cacheManager ?? GetIt.I<BaseCacheManager>() {
    assert(this.box.isOpen);
  }

  final Box<String> box;
  final BaseCacheManager cacheManager;

  Future<File> getImageFileFromCache(IImage imageObject) async {
    return cacheManager.getSingleFile(await getImageUrl(imageObject));
  }

  /// Returns cached url if available and its file is cached or if its not expired
  /// otherwise returns a fresh download url
  Future<String> getImageUrl(IImage imageObject) async {
    final cachedImageUrl = getCachedImageUrl(imageObject);

    if (cachedImageUrl != null &&
        (await isUrlFileCached(cachedImageUrl) ||
            !isUrlExpired(cachedImageUrl))) {
      return cachedImageUrl;
    }

    return _getUrlAndSaveToCache(imageObject);
  }

  String? getCachedImageUrl(IImage imageObject) {
    assert(imageObject.hasImage);

    final imageInfo = imageObject.imageInfo!;

    final cachedData = box.get(imageInfo.cacheKey);

    if (cachedData == null) return null;

    final cacheLastUpdatedTime = DateTime.parse(cachedData.split('|').first);
    final cachedUrl = cachedData.split('|').last;

    if (cacheLastUpdatedTime != imageInfo.lastUpdatedTime) return null;

    return cachedUrl;
  }

  Future<bool> isUrlFileCached(String cachedUrl) async {
    return await cacheManager.getFileFromCache(cachedUrl) != null;
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
    final downloadUrl = await imageObject.imageInfo!.downloadUrl();

    await _saveUrlToCache(imageObject, downloadUrl);

    return downloadUrl;
  }

  Future<String> _saveUrlToCache(
    IImage imageObject,
    String url,
  ) async {
    await box.put(
      imageObject.imageInfo!.cacheKey,
      '${imageObject.imageInfo!.lastUpdatedTime}|$url',
    );

    return url;
  }
}
