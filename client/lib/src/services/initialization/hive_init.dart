import 'package:church_admin/church_admin.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';

class HiveInit implements Initializer {
  const HiveInit();

  @override
  Future<void> initialize() async {
    final hiveInstance = globalProviderContainer.read(hiveProvider);

    await initHiveDir(hiveInstance);

    registerAdapters(hiveInstance);

    await openBoxes(hiveInstance);
  }

  @visibleForTesting
  Future<void> initHiveDir(HiveInterface hiveInstance) async {
    await hiveInstance.initFlutter('church_admin');
  }

  @visibleForTesting
  void registerAdapters(HiveInterface hiveInstance) {
    hiveInstance.registerAdapter(NotificationSettingAdapter());
  }

  @visibleForTesting
  Future<void> openBoxes(HiveInterface hiveInstance) async {
    await Future.wait([
      hiveInstance.openBox<Map?>(
        'GQLCache',
        encryptionCipher: await globalProviderContainer
            .read(encryptionServiceProvider)
            .getHiveCipher(boxName: 'GQLCache'),
      ),
      hiveInstance.openBox('Settings'),
      hiveInstance.openBox<String>(
        'ImageUrlsCache',
        encryptionCipher: await globalProviderContainer
            .read(encryptionServiceProvider)
            .getHiveCipher(boxName: 'ImageUrlsCache'),
      ),
      hiveInstance.openLazyBox<Notification>('Notifications'),
      hiveInstance.openBox<NotificationSetting>('NotificationsSettings'),
    ]);
  }
}
