import 'package:church_admin/church_admin.dart';
import 'package:flutter/foundation.dart';

class SembastInit implements Initializer {
  const SembastInit();

  @override
  Future<void> initialize() async {
    try {
      final mainSembastInstance = await globalProviderContainer.read(
        sembastProvider(KvDatabase.main).future,
      );
      final sharedSembastInstance = await globalProviderContainer.read(
        sembastProvider(KvDatabase.shared).future,
      );

      for (final legacyStoreName in GqlKvStore.legacyStoreNames) {
        await sharedSembastInstance.kv<Json>(legacyStoreName).clear();
      }

      await SyncKVStore.load<Json>(
        sharedSembastInstance.kv(GqlKvStore.storeName),
      );

      for (final legacyStoreName in UserPreferencesService.legacyStoreNames) {
        await mainSembastInstance.kv<Json>(legacyStoreName).clear();
      }
      await SyncKVStore.load(
        mainSembastInstance.kv(UserPreferencesService.storeName),
      );

      await SyncKVStore.load<String>(
        sharedSembastInstance.kv('ImageUrlsCache'),
      );
      await SyncKVStore.load<NotificationSetting>(
        mainSembastInstance.serializableKv(
          'NotificationsSettings',
          fromJson: NotificationSetting.fromJson,
          toJson: (n) => n.toJson(),
        ),
      );
      await SyncKVStore.load<Map>(
        mainSembastInstance.kv('HomeDailyDataIndexes'),
      );
    } catch (e) {
      debugPrint('Hive/Sembast initialization failed: $e');
      // Don't rethrow as this might be due to corrupted data and shouldn't prevent app startup
    }
  }
}
