import 'dart:async';

import 'package:church_admin/church_admin.dart';

extension BestEffortCallback on Future<void> Function() {
  Future<void> runBestEffort({Duration? within}) async {
    try {
      final run = Future.sync(this);
      await (within == null ? run : run.timeout(within));
    } catch (error, stackTrace) {
      _reportWithoutWaiting(LogRecord(error: error, stackTrace: stackTrace));
    }
  }
}

void _reportWithoutWaiting(LogRecord record) {
  Future.sync(() => LoggingService.I.warning(record)).ignore();
}
