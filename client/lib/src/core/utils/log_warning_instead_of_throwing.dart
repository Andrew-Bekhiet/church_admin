import 'dart:async';

import 'package:church_admin/church_admin.dart';

extension LogWarningInsteadOfThrowing on Future<void> {
  Future<void> logWarningInsteadOfThrowing() async {
    try {
      await this;
    } catch (error, stackTrace) {
      _warnWithoutWaiting(LogRecord(error: error, stackTrace: stackTrace));
    }
  }

  void _warnWithoutWaiting(LogRecord record) {
    Future.sync(() => LoggingService.I.warning(record)).ignore();
  }
}
