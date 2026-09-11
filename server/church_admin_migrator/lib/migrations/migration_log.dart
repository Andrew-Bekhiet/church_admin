import 'package:logger/logger.dart';

class MigrationLog {
  static final Logger logger = Logger(
    printer: PrettyPrinter(
      methodCount: 0,
      noBoxingByDefault: true,
      dateTimeFormat: DateTimeFormat.dateAndTime,
    ),
  );

  static const bool isSilentMigration = true;
}
