enum LoggingLevel implements Comparable<LoggingLevel> {
  fine(100),
  config(200),
  info(300),
  warning(400),
  exception(500),
  error(600);

  final int severity;

  const LoggingLevel(this.severity);

  @override
  int compareTo(LoggingLevel other) => severity.compareTo(other.severity);

  bool operator <(LoggingLevel other) => severity < other.severity;

  bool operator <=(LoggingLevel other) => severity <= other.severity;

  bool operator >(LoggingLevel other) => severity > other.severity;

  bool operator >=(LoggingLevel other) => severity >= other.severity;
}
