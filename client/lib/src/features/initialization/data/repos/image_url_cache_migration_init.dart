import 'dart:async';

import 'package:church_admin/church_admin.dart';

class ImageUrlCacheMigrationInit implements Initializer {
  const ImageUrlCacheMigrationInit();

  @override
  Future<void> initialize() async {
    final sharedSembastInstance = await globalProviderContainer.read(
      sembastProvider(KvDatabase.shared).future,
    );

    final migration = ImageUrlCacheMigration(
      legacyStore: sharedSembastInstance.kv<String>(
        ImageUrlCacheService.legacyStoreName,
      ),
      box: SyncKVStore.fromLoaded<String>(ImageUrlCacheService.storeName),
      cacheManager: globalProviderContainer.read(baseCacheManagerProvider),
    );

    unawaited(
      migration.run().catchError(
        (Object e, StackTrace stackTrace) => LoggingService.I.warning(
          LogRecord(
            message: 'Image url cache migration failed',
            moduleName: '$ImageUrlCacheMigrationInit',
            error: e,
            stackTrace: stackTrace,
          ),
        ),
      ),
    );
  }
}
