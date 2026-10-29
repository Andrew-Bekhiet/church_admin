import 'package:church_admin/church_admin.dart';

import 'fake_logging_service.dart';

class ThrowingLoggingService extends FakeLoggingService {
  final Object failure;

  ThrowingLoggingService(this.failure);

  @override
  Future<void> exception(LogRecord record) async => throw failure;
}
