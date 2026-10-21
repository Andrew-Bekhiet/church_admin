import 'dart:convert';

import 'package:church_admin/church_admin.dart';
import 'package:http/http.dart' as http;

import 'e2e_admin_scope.dart';
import 'e2e_backend.dart';
import 'e2e_user.dart';

/// Creates users the way inviting and claiming would leave them, without
/// going through sign-up, email verification and claiming in the app.
abstract final class E2eUsers {
  static final Uri _authEmulatorApi = Uri.http(
    'localhost:9099',
    '/identitytoolkit.googleapis.com/v1',
  );

  /// Seeds an approved `auth.users_data` row with a new linked person, then
  /// creates its email-verified Firebase account carrying the Hasura claims
  /// and links the row to it, as `tryClaimAccount` does.
  static Future<E2eUser> createApprovedUser({
    required String email,
    String password = E2eBackend.password,
    Set<UserPermission> permissions = const {},
    List<E2eAdminScope> adminOn = const [],
    bool isMale = true,
    bool spiritDataUpToDate = true,
    String? name,
  }) async {
    final canonicalEmail = email.trim().toLowerCase();
    final (:uid, :personId) = await _insertApprovedUserData(
      email: canonicalEmail,
      name: name ?? canonicalEmail,
      permissions: permissions,
      adminOn: adminOn,
      isMale: isMale,
    );

    if (spiritDataUpToDate) {
      await recordUpToDateSpiritData(personId: personId, recordedBy: uid);
    }

    final authId = await _signUpFirebaseAccount(canonicalEmail, password);
    await _verifyEmailAndSetHasuraClaims(authId, hasuraUid: uid);
    await _linkAuthAccount(uid, authId: authId);

    return E2eUser(
      uid: uid,
      authId: authId,
      personId: personId,
      email: canonicalEmail,
      password: password,
    );
  }

  /// Records a confession and a communion today, so the app does not force
  /// `UpdateUserSpiritDataScreen` on the user linked to [personId].
  static Future<void> recordUpToDateSpiritData({
    required String personId,
    required String recordedBy,
  }) async {
    final today = DateTime.now().toIso8601String().substring(0, 10);

    await E2eBackend.hasuraQuery(
      r'''
      mutation RecordUpToDateSpiritData($personId: uuid!, $recordedBy: uuid!, $today: date!) {
        insertHistoryAttendanceDaysOne(
          object: {day: $today}
          onConflict: {constraint: attendance_days_pkey, updateColumns: day}
        ) { day }
        insertHistoryConfessionHistoryOne(
          object: {personId: $personId, dayId: $today, recordedBy: $recordedBy}
          onConflict: {constraint: confession_history_day_id_person_id_key}
        ) { id }
        insertHistoryKodasHistoryOne(
          object: {personId: $personId, dayId: $today, recordedBy: $recordedBy}
          onConflict: {constraint: kodas_history_day_id_person_id_key}
        ) { id }
      }
      ''',
      variables: {
        'personId': personId,
        'recordedBy': recordedBy,
        'today': today,
      },
    );
  }

  /// Lets an existing user, such as the seeded admin, skip
  /// `UpdateUserSpiritDataScreen` on their next sign-in.
  static Future<void> recordUpToDateSpiritDataOf(String email) async {
    final user = await E2eBackend.userByEmail(email);
    final uid = user['uid'] as String;

    await recordUpToDateSpiritData(
      personId: (user['person'] as Map)['id'] as String,
      recordedBy: uid,
    );
  }

  static Future<void> grantWritingRelatedFamiliesOnServiceScopesOf(
    String uid,
  ) async {
    final granted = await E2eBackend.hasuraQuery(
      r'''
      mutation GrantWritingRelatedFamiliesOnServiceScopes($uid: uuid!) {
        updateAuthUsersAdminOn(
          where: {uid: {_eq: $uid}, adminOnService: {_isNull: false}}
          _set: {serviceWriteRelatedFamilies: true}
        ) { affectedRows }
      }
      ''',
      variables: {'uid': uid},
    );

    if ((granted['updateAuthUsersAdminOn'] as Map)['affectedRows'] == 0) {
      throw StateError('$uid has no service scope to grant writing on');
    }
  }

  static Future<({String uid, String personId})> _insertApprovedUserData({
    required String email,
    required String name,
    required Set<UserPermission> permissions,
    required List<E2eAdminScope> adminOn,
    required bool isMale,
  }) async {
    final grantedPermissions = {
      UserPermission.approved,
      for (final permission in permissions) ...[
        permission,
        ...permission.requires,
      ],
    };
    final inserted = await E2eBackend.hasuraQuery(
      r'''
      mutation InsertApprovedUserData(
        $email: String!
        $name: String!
        $isMale: Boolean!
        $permissions: [AuthUsersPermissionsInsertInput!]!
        $adminOn: [AuthUsersAdminOnInsertInput!]!
      ) {
        insertAuthUsersDataOne(object: {
          email: $email
          name: $name
          permissions: {data: $permissions}
          adminOn: {data: $adminOn}
          person: {data: {name: $name, gender: $isMale, isServant: true}}
        }) {
          uid
          person { id }
        }
      }
      ''',
      variables: {
        'email': email,
        'name': name,
        'isMale': isMale,
        'permissions': [
          for (final permission in grantedPermissions)
            {'permission': permission.name},
        ],
        'adminOn': [for (final scope in adminOn) scope.adminOnInsertInput],
      },
    );
    final user = inserted['insertAuthUsersDataOne'] as Map<String, dynamic>;

    return (
      uid: user['uid'] as String,
      personId: (user['person'] as Map)['id'] as String,
    );
  }

  static Future<String> _signUpFirebaseAccount(
    String email,
    String password,
  ) async {
    final signedUp = await _postToAuthEmulator(
      'accounts:signUp',
      queryParameters: {'key': 'e2e'},
      body: {'email': email, 'password': password, 'returnSecureToken': true},
    );

    return signedUp['localId'] as String;
  }

  static Future<void> _verifyEmailAndSetHasuraClaims(
    String authId, {
    required String hasuraUid,
  }) => _postToAuthEmulator(
    'projects/${E2eBackend.projectId}/accounts:update',
    headers: {'authorization': 'Bearer owner'},
    body: {
      'localId': authId,
      'emailVerified': true,
      'customAttributes': jsonEncode({
        'x-hasura-user-id': hasuraUid,
        'x-hasura-default-role': 'user',
        'x-hasura-allowed-roles': ['user'],
      }),
    },
  );

  static Future<void> _linkAuthAccount(
    String uid, {
    required String authId,
  }) async {
    final linked = await E2eBackend.hasuraQuery(
      r'''
      mutation LinkAuthAccount($uid: uuid!, $authId: String!) {
        updateAuthUsersData(
          where: {uid: {_eq: $uid}, authId: {_isNull: true}}
          _set: {authId: $authId}
        ) { affectedRows }
      }
      ''',
      variables: {'uid': uid, 'authId': authId},
    );

    if ((linked['updateAuthUsersData'] as Map)['affectedRows'] != 1) {
      throw StateError('Could not link $uid to Firebase account $authId');
    }
  }

  static Future<Map<String, dynamic>> _postToAuthEmulator(
    String method, {
    required Map<String, Object?> body,
    Map<String, String> queryParameters = const {},
    Map<String, String> headers = const {},
  }) async {
    final response = await http.post(
      _authEmulatorApi.replace(
        path: '${_authEmulatorApi.path}/$method',
        queryParameters: queryParameters.isEmpty ? null : queryParameters,
      ),
      headers: {'content-type': 'application/json', ...headers},
      body: jsonEncode(body),
    );

    if (response.statusCode != 200) {
      throw StateError('Auth emulator $method failed: ${response.body}');
    }

    return jsonDecode(response.body) as Map<String, dynamic>;
  }
}
