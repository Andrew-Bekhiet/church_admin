import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';

class FakeLoggingService extends Fake implements LoggingService {
  final List<LogRecord> reportedErrors = [];
  final List<LogRecord> reportedExceptions = [];

  @override
  Future<void> exception(LogRecord record) async =>
      reportedExceptions.add(record);

  @override
  Future<void> error(LogRecord record) async => reportedErrors.add(record);

  @override
  Future<void> showErrorDialogAndReport(
    BuildContext context,
    LogRecord record,
  ) async {
    showDialog<void>(
      context: context,
      builder: (context) => CAErrorDialog(exception: record.error ?? record),
    );
    await error(record);
  }
}
