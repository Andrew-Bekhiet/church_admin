import 'dart:io';

import 'package:args/args.dart';
import 'package:church_admin_migrator/church_admin_migrator.dart'
    as church_admin_migrator;
import 'package:church_admin_migrator/church_admin_storage_migrator.dart';
import 'package:dart_firebase_admin/dart_firebase_admin.dart';
import 'package:logger/logger.dart';

final logger = Logger();

Future<void> main(List<String> arguments) async {
  final parser = ArgParser()
    ..addOption(
      'church-data-credentials',
      abbr: 'c',
      mandatory: true,
      help: 'Path to the Church Data service account JSON file.',
    )
    ..addOption(
      'meeting-helper-credentials',
      abbr: 'm',
      mandatory: true,
      help: 'Path to the Meeting Helper service account JSON file.',
    )
    ..addOption(
      'church-admin-credentials',
      abbr: 'a',
      mandatory: false,
      help: 'Path to the Church Admin service account JSON file.',
    )
    ..addFlag(
      'migrate-data',
      defaultsTo: true,
      help:
          'Migrate data (documents) from ChurchData and MeetingHelper to ChurchAdmin.',
    )
    ..addFlag(
      'migrate-storage',
      defaultsTo: false,
      help:
          'Migrate storage (photos) from ChurchData and MeetingHelper to ChurchAdmin.',
    );

  final argResults = parser.parse(arguments);

  final churchDataCredentials = argResults.option('church-data-credentials')!;
  final meetingHelperCredentials = argResults.option(
    'meeting-helper-credentials',
  )!;
  final churchAdminCredentials = argResults.option('church-admin-credentials');

  final churchDataApp = FirebaseAdminApp.initializeApp(
    'churchdata-cf3db',
    Credential.fromServiceAccount(File(churchDataCredentials)),
  );

  final meetingHelperApp = FirebaseAdminApp.initializeApp(
    'meetinghelper-2a869',
    Credential.fromServiceAccount(File(meetingHelperCredentials)),
  );

  logger.i('Starting migration at ${DateTime.now()}', time: DateTime.now());

  if (argResults.flag('migrate-data')) {
    await church_admin_migrator.migrate(
      churchDataApp: churchDataApp,
      meetingHelperApp: meetingHelperApp,
    );
  }

  if (argResults.flag('migrate-storage') && churchAdminCredentials != null) {
    await migratePhotos(
      churchDataServiceAccount: File(churchDataCredentials),
      meetingHelperServiceAccount: File(meetingHelperCredentials),
      churchAdminServiceAccount: File(churchAdminCredentials),
      exportDir: Directory('./export'),
    );
  }

  logger.i('Migration completed at ${DateTime.now()}', time: DateTime.now());

  exit(0);
}
