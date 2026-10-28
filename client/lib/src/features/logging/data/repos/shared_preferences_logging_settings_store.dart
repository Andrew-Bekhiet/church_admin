import 'package:church_admin/church_admin.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesLoggingSettingsStore implements LoggingSettingsStore {
  static const String _enableSentryKey = 'logging.enableSentry';
  static const String _enablePostHogLogsKey = 'logging.enablePostHogLogs';
  static const String _sessionReplaySampleRateKey =
      'logging.sessionReplaySampleRate';

  @override
  Future<LoggingSettings> read() async {
    try {
      final prefs = await SharedPreferences.getInstance();

      return LoggingSettings.fromJson({
        'enableSentry': prefs.getBool(_enableSentryKey),
        'enablePostHogLogs': prefs.getBool(_enablePostHogLogsKey),
        'sessionReplaySampleRate': prefs.getDouble(_sessionReplaySampleRateKey),
      });
    } catch (_) {
      return LoggingSettings.defaults;
    }
  }

  @override
  Future<void> write(LoggingSettings settings) async {
    final prefs = await SharedPreferences.getInstance();

    await Future.wait([
      prefs.setBool(_enableSentryKey, settings.enableSentry),
      prefs.setBool(_enablePostHogLogsKey, settings.enablePostHogLogs),
      prefs.setDouble(
        _sessionReplaySampleRateKey,
        settings.sessionReplaySampleRate,
      ),
    ]);
  }
}
