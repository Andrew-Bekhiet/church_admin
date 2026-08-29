import 'package:church_admin/church_admin.dart';

class LoggingSettings {
  static const LoggingSettings defaults = LoggingSettings();

  final bool enableSentry;
  final bool enablePostHog;
  final bool enablePostHogLogs;
  final double replaySampleRate;

  const LoggingSettings({
    this.enableSentry = true,
    this.enablePostHog = true,
    this.enablePostHogLogs = true,
    this.replaySampleRate = 1,
  });

  factory LoggingSettings.fromJson(Json json) => LoggingSettings(
    enableSentry: json['enableSentry'] as bool? ?? defaults.enableSentry,
    enablePostHog: json['enablePostHog'] as bool? ?? defaults.enablePostHog,
    enablePostHogLogs:
        json['enablePostHogLogs'] as bool? ?? defaults.enablePostHogLogs,
    replaySampleRate: switch (json['replaySampleRate']) {
      final num rate when rate >= 0 && rate <= 1 => rate.toDouble(),
      _ => defaults.replaySampleRate,
    },
  );

  Json toJson() => {
    'enableSentry': enableSentry,
    'enablePostHog': enablePostHog,
    'enablePostHogLogs': enablePostHogLogs,
    'replaySampleRate': replaySampleRate,
  };
}
