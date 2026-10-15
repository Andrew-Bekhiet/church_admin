import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class FakeLoggingService extends Fake implements LoggingService {
  final List<LogRecord> reportedErrors = [];

  @override
  Future<void> exception(LogRecord record) async {}

  @override
  Future<void> error(LogRecord record) async => reportedErrors.add(record);

  @override
  Future<void> showErrorDialogAndReport(
    BuildContext context,
    LogRecord record,
  ) async {
    unawaited(
      showDialog<void>(
        context: context,
        builder: (context) => CAErrorDialog(exception: record.error!),
      ),
    );
    await error(record);
  }
}
