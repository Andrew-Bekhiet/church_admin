import 'package:church_admin/church_admin.dart';

import 'fake_logging_service.dart';

class RecordingLoggingService extends FakeLoggingService {
  final List<LoggingUser?> identifiedUsers = [];

  @override
  Future<void> identify(LoggingUser? user) async => identifiedUsers.add(user);

  @override
  Future<void> info(LogRecord record) async {}

  @override
  Future<void> config(LogRecord record) async {}
}
