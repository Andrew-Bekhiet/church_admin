import 'dart:io';

import 'package:args/args.dart';
import 'package:church_admin_migrator/church_admin_migrator.dart'
    as church_admin_migrator;
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
    );

  final argResults = parser.parse(arguments);

  final churchDataCredentials = argResults.option('church-data-credentials')!;
  final meetingHelperCredentials = argResults.option(
    'meeting-helper-credentials',
  )!;

  final churchDataApp = FirebaseAdminApp.initializeApp(
    'churchdata-cf3db',
    Credential.fromServiceAccount(File(churchDataCredentials)),
  );

  final meetingHelperApp = FirebaseAdminApp.initializeApp(
    'meetinghelper-2a869',
    Credential.fromServiceAccount(File(meetingHelperCredentials)),
  );

  logger.i('Starting migration at ${DateTime.now()}', time: DateTime.now());

  await church_admin_migrator.migrate(
    churchDataApp: churchDataApp,
    meetingHelperApp: meetingHelperApp,
  );
}
