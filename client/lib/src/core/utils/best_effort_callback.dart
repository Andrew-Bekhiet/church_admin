import 'dart:async';

import 'package:church_admin/church_admin.dart';

extension BestEffortCallback on Future<void> Function() {
  Future<void> runBestEffort({Duration? within}) async {
    try {
      final run = Future.sync(this);
      await (within == null ? run : run.timeout(within));
    } catch (error, stackTrace) {
      await LoggingService.I.warning(
        LogRecord(error: error, stackTrace: stackTrace),
      );
    }
  }
}
