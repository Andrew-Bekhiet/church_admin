class LogRecord {
  final String? message;

  /// Use only for non Bloc logs or events that are not related to a specific Bloc
  final String? moduleName;

  /// eg: "recordLastVisit", "updateObject", etc
  final String? eventName;

  final Object? error;
  final StackTrace? stackTrace;

  final Map<String, dynamic>? data;

  const LogRecord({
    this.message,
    this.moduleName,
    this.eventName,
    this.error,
    this.stackTrace,
    this.data,
  });
}
