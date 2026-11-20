import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:patrol/patrol.dart';

import 'e2e_app.dart';
import 'e2e_backend.dart';

/// Declares a journey that starts from the state `server/scripts/e2e-backend.sh
/// up` snapshotted, whatever the journeys before it in the same run left
/// behind. App state on the simulator, such as stored preferences, is not
/// reset.
abstract final class E2eJourney {
  static final Uri _hasuraQuery = Uri.http('localhost:8080', '/v2/query');
  static const _authAccountsPath =
      '/identitytoolkit.googleapis.com/v1/projects/${E2eBackend.projectId}/accounts';
  static const _authEmulatorAdmin = {'authorization': 'Bearer owner'};

  static void test(
    String description,
    PatrolTesterCallback body, {
    required Timeout timeout,
  }) {
    patrolTest(description, ($) async {
      E2eApp.uncaughtAppErrors.clear();
      await _restoreSeededDatabase();
      await _deleteAuthAccountsOtherThanAdmin();
      await body($);
    }, timeout: timeout);
  }

  static Future<void> _restoreSeededDatabase() => _postJson(
    _hasuraQuery,
    headers: {'x-hasura-admin-secret': E2eBackend.hasuraAdminSecret},
    body: {
      'type': 'run_sql',
      'args': {
        'source': 'default',
        'sql': 'select e2e_snapshot.restore_seeded_state()',
      },
    },
  );

  static Future<void> _deleteAuthAccountsOtherThanAdmin() async {
    final accounts = await _postJson(
      E2eBackend.authEmulator.replace(path: '$_authAccountsPath:query'),
      headers: _authEmulatorAdmin,
      body: {},
    );
    final nonAdminIds = [
      for (final account in (accounts['userInfo'] as List?) ?? const [])
        if ((account as Map)['email'] != E2eBackend.adminEmail)
          account['localId'],
    ];

    if (nonAdminIds.isEmpty) {
      return;
    }

    await _postJson(
      E2eBackend.authEmulator.replace(path: '$_authAccountsPath:batchDelete'),
      headers: _authEmulatorAdmin,
      body: {'localIds': nonAdminIds, 'force': true},
    );
  }

  static Future<Map<String, dynamic>> _postJson(
    Uri uri, {
    required Map<String, String> headers,
    required Map<String, Object> body,
  }) async {
    final response = await http.post(
      uri,
      headers: {...headers, 'content-type': 'application/json'},
      body: jsonEncode(body),
    );

    if (response.statusCode != 200) {
      throw StateError(
        'Resetting the E2E backend failed at $uri: ${response.body}',
      );
    }

    return jsonDecode(response.body) as Map<String, dynamic>;
  }
}
