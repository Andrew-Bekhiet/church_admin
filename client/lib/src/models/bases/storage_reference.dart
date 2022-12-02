import 'dart:async';

import 'package:churchdata_core/churchdata_core.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:get_it/get_it.dart';

class CAStorageReference extends StorageReference {
  CAStorageReference({
    required this.photoUpdatedAt,
    required super.fullPath,
    required super.downloadUrl,
  });

  final DateTime photoUpdatedAt;

  @override
  FutureOr<String> getCachedDownloadUrl({
    void Function(String oldUrl, String? newUrl)? onCacheChanged,
    void Function(Exception e, String? cache)? onError,
  }) async {
    final String? cache = GetIt.I<CacheRepository>()
        .box<String?>('PhotosURLsCache')
        .get(fullPath);

    try {
      if (cache == null ||
          cache.split('|').first !=
              photoUpdatedAt.millisecondsSinceEpoch.toString()) {
        final downloadUrl = getDownloadURL();

        if (downloadUrl is String) return downloadUrl;

        final String url = await downloadUrl;

        await GetIt.I<CacheRepository>()
            .box<String?>('PhotosURLsCache')
            .put(fullPath, '${photoUpdatedAt.millisecondsSinceEpoch}|$url');

        if (cache != null) onCacheChanged?.call(cache, url);

        return url;
      }

      return cache.split('|')[1];
    } on Exception catch (e) {
      if (onError == null) {
        rethrow;
      } else {
        onError(e, cache);
      }
      return cache ?? '';
    }
  }

  @override
  Future<void> deleteCache() async {
    final String? cache = GetIt.I<CacheRepository>()
        .box<String?>('PhotosURLsCache')
        .get(fullPath);

    if (cache == null) return;

    await (GetIt.I.isRegistered<BaseCacheManager>()
            ? GetIt.I<BaseCacheManager>()
            : DefaultCacheManager())
        .removeFile(cache.split('|')[1]);

    await GetIt.I<CacheRepository>()
        .box<String?>('PhotosURLsCache')
        .delete(fullPath);
  }

  @override
  Never child(String child) {
    throw UnsupportedError('child is not supported');
  }
}
