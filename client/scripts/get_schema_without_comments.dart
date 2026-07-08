#!/usr/bin/env dart

// Usage: set -a && source server/hasura/.env && set +a && client/scripts/get_schema_without_comments.dart
import 'dart:io';

import 'package:path/path.dart' as p;

Future<void> main() async {
  final clientDir = p.dirname(p.dirname(p.fromUri(Platform.script)));
  final schemaFilePath = p.join(
    clientDir,
    'lib',
    'src',
    'core',
    'graphql',
    'schema.graphql',
  );

  final adminSecret = Platform.environment['HASURA_GRAPHQL_ADMIN_SECRET'];
  if (adminSecret == null || adminSecret.isEmpty) {
    stderr.writeln(
      'HASURA_GRAPHQL_ADMIN_SECRET environment variable is not set.',
    );
    exit(1);
  }

  final serverUrl = Platform.environment['HASURA_GRAPHQL_ENDPOINT'];
  if (serverUrl == null || serverUrl.isEmpty) {
    stderr.writeln('HASURA_GRAPHQL_ENDPOINT environment variable is not set.');
    exit(1);
  }

  final parsedServerUrl = Uri.parse(serverUrl);
  final graphqlUrl = parsedServerUrl.replace(
    pathSegments: [...parsedServerUrl.pathSegments, 'v1', 'graphql'],
  );

  stdout.writeln('Getting GQL schema from the server...');

  // Install using npm: i --global @graphql-inspector/cli graphql
  final result = await Process.run('graphql-inspector', [
    'introspect',
    '$graphqlUrl',
    '--comments',
    'false',
    '-w',
    schemaFilePath,
    '-h',
    'x-hasura-admin-secret: $adminSecret',
    '-h',
    'x-hasura-role: user',
  ], runInShell: true);

  stdout.write(result.stdout);
  stderr.write(result.stderr);
  if (result.exitCode != 0) {
    exit(result.exitCode);
  }

  stdout.writeln('Stripping comments from the schema...');

  final schema = File(schemaFilePath);
  final schemaWithoutComments = (await schema.readAsString())
      .replaceAll(RegExp(r'^\s+""".+"""\n', multiLine: true), '')
      .replaceAll(RegExp(r'^""".+"""\n', multiLine: true), '')
      .replaceAll(RegExp(r'^"""\n.+\n"""\n', multiLine: true), '')
      .replaceAll(RegExp(r'^\s+"""\s+.+\s+"""\n', multiLine: true), '');

  await schema.writeAsString(schemaWithoutComments);

  stdout.writeln('Done!');
}
