import 'package:church_admin/church_admin.dart';

class LoggingSyncInit implements Initializer {
  const LoggingSyncInit();

  @override
  Future<void> initialize() async {
    await LoggingService.I.startSyncingWithFeatureFlags();
  }
}
