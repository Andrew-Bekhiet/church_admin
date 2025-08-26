import 'package:church_admin/church_admin.dart';
import 'package:flutter/foundation.dart';

class HiveInit implements Initializer {
  const HiveInit();

  @override
  Future<void> initialize() async {
    try {
      final mainSembastInstance = await globalProviderContainer
          .read(sembastProvider(KvDatabase.main).future);
      final sharedSembastInstance = await globalProviderContainer
          .read(sembastProvider(KvDatabase.shared).future);

      await SyncKVStore.load<Json>(sharedSembastInstance.kv('GQLCache'));
      await SyncKVStore.load(mainSembastInstance.kv('Settings'));
      await SyncKVStore.load<String>(sharedSembastInstance.kv('ImageUrlsCache'));
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
