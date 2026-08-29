import 'dart:async';

import 'package:church_admin/church_admin.dart';

class LoggingInit implements Initializer {
  const LoggingInit();

  @override
  Future<void> initialize() async {
    await LoggingService.I.initialize();
  }
}
