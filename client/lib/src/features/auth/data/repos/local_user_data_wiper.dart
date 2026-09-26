import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/features/data_export/application/export_operations_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

class LocalUserDataWiper implements UserDataWiper {
  final AuthStorage _authStorage;
  final BaseCacheManager _imageCacheManager;
  final ExportOperationsStorage _exportOperationsStorage;
  final NotificationsStorage Function() _notificationsStorage;
  final LocalAuthService? Function() _existingLocalAuthService;

  LocalUserDataWiper({
    required this._authStorage,
    required this._imageCacheManager,
    required this._exportOperationsStorage,
    required this._notificationsStorage,
    required this._existingLocalAuthService,
  });

  @override
  Future<void> wipeUserData() async {
    final steps = <Future<void> Function()>[
      _authStorage.clearAll,
      SyncKVStore.clearAllLoaded,
      () => _notificationsStorage().clear(),
      _imageCacheManager.emptyCache,
      () async {
        if (!kIsWeb) await _exportOperationsStorage.deleteSavedFiles();
      },
      () async => _existingLocalAuthService()?.revokeAuthForAllPaths(),
    ];

    await Future.wait(
      steps.map((step) async {
        try {
          await step();
        } catch (error, stackTrace) {
          await LoggingService.I.exception(
            LogRecord(error: error, stackTrace: stackTrace),
          );
        }
      }),
    );
  }
}
