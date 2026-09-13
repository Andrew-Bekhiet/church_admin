import 'dart:io';

import 'package:args/args.dart';
import 'package:church_admin_migrator/church_admin_migrator.dart'
    as church_admin_migrator;
import 'package:church_admin_migrator/church_admin_storage_migrator.dart';
import 'package:firebase_admin_sdk/firebase_admin_sdk.dart';
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
      mandatory: true,
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
      defaultsTo: true,
      help:
          'Migrate storage (photos) from ChurchData and MeetingHelper to ChurchAdmin.',
    )
    ..addFlag(
      'migrate-auth-users',
      defaultsTo: true,
      help:
          'Migrate auth users and map permissions from ChurchData and MeetingHelper to ChurchAdmin.',
    );

  final argResults = parser.parse(arguments);

  final churchDataCredentials = argResults.option('church-data-credentials')!;
  final meetingHelperCredentials = argResults.option(
    'meeting-helper-credentials',
  )!;
  final churchAdminCredentials = argResults.option('church-admin-credentials');

  final churchDataApp = FirebaseApp.initializeApp(
    options: AppOptions(
      credential: Credential.fromServiceAccount(File(churchDataCredentials)),
      projectId: 'churchdata-cf3db',
    ),
    name: 'churchdata',
  );

  final meetingHelperApp = FirebaseApp.initializeApp(
    options: AppOptions(
      credential: Credential.fromServiceAccount(File(meetingHelperCredentials)),
      projectId: 'meetinghelper-2a869',
    ),
    name: 'meetinghelper',
  );

  logger.i('Starting migration at ${DateTime.now()}', time: DateTime.now());

  if (argResults.flag('migrate-data')) {
    await church_admin_migrator.migrate(
      churchDataApp: churchDataApp,
      meetingHelperApp: meetingHelperApp,
      migrateAuthUsers: argResults.flag('migrate-auth-users'),
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
