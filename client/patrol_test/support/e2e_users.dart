import 'dart:convert';

import 'package:church_admin/church_admin.dart';
import 'package:http/http.dart' as http;

import 'e2e_admin_scope.dart';
import 'e2e_ash.dart';
import 'e2e_backend.dart';
import 'e2e_user.dart';

/// Creates users the way inviting and claiming would leave them, without
/// going through sign-up, email verification and claiming in the app.
abstract final class E2eUsers {
  static final Uri _authEmulatorApi = Uri.http(
    'localhost:9099',
    '/identitytoolkit.googleapis.com/v1',
  );

  /// Seeds an approved user with a new linked person, then creates its
  /// email-verified Firebase account and has the backend claim the user for
  /// that account, as `tryClaimAccount` does on sign-in.
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
    final grantedPermissions = {
      UserPermission.approved,
      for (final permission in permissions) ...[
        permission,
        ...permission.requires,
      ],
    };
    final (:uid, :personId) = await E2eBackend.createUserWithPerson(
      name: name ?? canonicalEmail,
      email: canonicalEmail,
      permissions: [
        for (final permission in grantedPermissions) permission.name,
      ],
      adminOn: [for (final scope in adminOn) scope.adminOnInput],
      isMale: isMale,
    );

    if (spiritDataUpToDate) {
      await recordUpToDateSpiritData(personId: personId);
    }

    final authId = await _signUpFirebaseAccount(canonicalEmail, password);
    await _verifyEmail(authId);
    await _claimAccount(canonicalEmail, password, expectedUid: uid);

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
  }) async {
    final today = DateTime.now().toIso8601String().substring(0, 10);

    await E2eAsh.mutation(
      r'''
      mutation RecordUpToDateSpiritData($personId: ID!, $input: RecordPersonSpiritualDaysInput!) {
        recordPersonSpiritualDays(id: $personId, input: $input) {
          result { id }
          errors { code message fields }
        }
      }
      ''',
      field: 'recordPersonSpiritualDays',
      variables: {
        'personId': personId,
        'input': {'confessionDay': today, 'kodasDay': today},
      },
    );
  }

  /// Lets an existing user, such as the seeded admin, skip
  /// `UpdateUserSpiritDataScreen` on their next sign-in.
  static Future<void> recordUpToDateSpiritDataOf(String email) async {
    final user = await E2eBackend.userByEmail(email);

    await recordUpToDateSpiritData(
      personId: (user['person'] as Map)['id'] as String,
    );
  }

  static Future<void> grantWritingRelatedFamiliesOnServiceScopesOf(
    String uid,
  ) async {
    final scopeGrants = await E2eAsh.pageResults(
      r'''
      query ScopeGrantsToRewrite($uid: ID!) {
        scopeGrants(filter: {uid: {eq: $uid}}) {
          results {
            adminOnService
            serviceGender
            serviceStudyYear
            serviceAllowEdit
            serviceAllowExport
            serviceAllowRecordAttendance
            serviceAllowRecordServantsAttendance
            serviceAdminOnUsers
            adminOnGroup
            groupAllowEdit
            groupAllowExport
            groupAllowRecordAttendance
            groupAllowRecordServantsAttendance
            groupWriteRelatedFamilies
            groupAdminOnUsers
            adminOnArea
            areaAllowEdit
            areaAllowExport
            areaAdminOnUsers
          }
        }
      }
      ''',
      'scopeGrants',
      variables: {'uid': uid},
    );
    final grantsOnServices = scopeGrants.where(
      (grant) => (grant as Map)['adminOnService'] != null,
    );

    if (grantsOnServices.isEmpty) {
      throw StateError('$uid has no service scope to grant writing on');
    }

    await E2eAsh.mutation(
      r'''
      mutation GrantWritingRelatedFamiliesOnServiceScopes($uid: ID!, $input: UpdateUserPermissionsInput) {
        updateUserPermissions(id: $uid, input: $input) {
          result { uid }
          errors { code message fields }
        }
      }
      ''',
      field: 'updateUserPermissions',
      variables: {
        'uid': uid,
        'input': {
          'adminOn': [
            for (final grant in scopeGrants)
              {
                ...grant as Map<String, dynamic>,
                if (grant['adminOnService'] != null)
                  'serviceWriteRelatedFamilies': true,
              },
          ],
        },
      },
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

  static Future<void> _verifyEmail(String authId) => _postToAuthEmulator(
    'projects/${E2eBackend.projectId}/accounts:update',
    headers: {'authorization': 'Bearer owner'},
    body: {'localId': authId, 'emailVerified': true},
  );

  static Future<void> _claimAccount(
    String email,
    String password, {
    required String expectedUid,
  }) async {
    final claimed = await E2eAsh.query(
      'mutation ClaimAccount { tryClaimAccount { uid } }',
      email: email,
      password: password,
    );

    if ((claimed['tryClaimAccount'] as Map)['uid'] != expectedUid) {
      throw StateError('$email claimed another user than $expectedUid');
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
