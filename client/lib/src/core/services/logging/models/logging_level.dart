import 'package:sentry_flutter/sentry_flutter.dart';

enum LoggingLevel implements Comparable<LoggingLevel> {
  fine(100),
  config(200),
  info(300),
  warning(400),
  exception(500),
  error(600);

  final int severity;

  SentryLevel get sentryLevel {
    switch (this) {
      case LoggingLevel.fine:
        return SentryLevel.debug;
      case LoggingLevel.config:
        return SentryLevel.debug;
      case LoggingLevel.info:
        return SentryLevel.info;
      case LoggingLevel.warning:
        return SentryLevel.warning;
      case LoggingLevel.exception:
        return SentryLevel.error;
      case LoggingLevel.error:
        return SentryLevel.fatal;
    }
  }

  const LoggingLevel(this.severity);

  @override
  int compareTo(LoggingLevel other) => severity.compareTo(other.severity);

  bool operator <(LoggingLevel other) => severity < other.severity;

  bool operator <=(LoggingLevel other) => severity <= other.severity;

  bool operator >(LoggingLevel other) => severity > other.severity;

  bool operator >=(LoggingLevel other) => severity >= other.severity;
}
