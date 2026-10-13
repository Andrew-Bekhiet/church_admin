import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

class FakeLoggingService extends Fake implements LoggingService {
  @override
  Future<void> exception(LogRecord record) async {}
}
