import 'package:church_admin/church_admin.dart';

abstract interface class LoggingSettingsStore {
  Future<LoggingSettings> read();

  Future<void> write(LoggingSettings settings);
}
