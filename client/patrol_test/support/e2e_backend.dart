import 'dart:convert';

import 'package:http/http.dart' as http;

/// Talks to the hermetic backend started by `server/scripts/e2e-backend.sh`.
abstract final class E2eBackend {
  static const projectId = 'demo-church-admin';
  static const adminEmail = 'admin@e2e.test';
  static const password = 'Harness_Passw0rd';

  static final Uri _authEmulator = Uri.http('localhost:9099');
  static final Uri _hasura = Uri.http('localhost:8080', '/v1/graphql');
  static const _hasuraAdminSecret = 'localdevadminsecret';
  static const _verificationEmailTimeout = Duration(seconds: 30);
  static const _pollInterval = Duration(milliseconds: 500);

  static Future<void> verifyEmail(String email) async {
    final deadline = DateTime.now().add(_verificationEmailTimeout);
    var codes = <Map<String, dynamic>>[];

    while (codes.isEmpty) {
      if (DateTime.now().isAfter(deadline)) {
        throw StateError('No verification email was sent to $email');
      }

      await Future<void>.delayed(_pollInterval);
      final response = await http.get(
        _authEmulator.replace(
          path: '/emulator/v1/projects/$projectId/oobCodes',
        ),
      );
      codes = (jsonDecode(response.body)['oobCodes'] as List)
          .cast<Map<String, dynamic>>()
          .where(
            (code) =>
                code['email'] == email && code['requestType'] == 'VERIFY_EMAIL',
          )
          .toList();
    }

    final applied = await http.get(Uri.parse(codes.last['oobLink'] as String));

    if (applied.statusCode != 200) {
      throw StateError(
        'Applying the verification link failed: ${applied.body}',
      );
    }
  }

  static Future<Map<String, dynamic>> hasuraQuery(
    String query, {
    Map<String, dynamic> variables = const {},
  }) async {
    final response = await http.post(
      _hasura,
      headers: {
        'content-type': 'application/json',
        'x-hasura-admin-secret': _hasuraAdminSecret,
      },
      body: jsonEncode({'query': query, 'variables': variables}),
    );
    final body = jsonDecode(response.body) as Map<String, dynamic>;

    if (body['errors'] case final errors?) {
      throw StateError('Hasura query failed: $errors');
    }

    return body['data'] as Map<String, dynamic>;
  }

  static Future<String> serviceIdByName(String serviceName) async {
    final data = await hasuraQuery(
      r'''
      query ServiceByName($serviceName: String!) {
        services(where: {name: {_eq: $serviceName}}) { id }
      }
      ''',
      variables: {'serviceName': serviceName},
    );

    return (data['services'] as List).single['id'] as String;
  }

  static Future<String> insertPerson(
    String name, {
    required String serviceName,
  }) async {
    final serviceId = await serviceIdByName(serviceName);
    final inserted = await hasuraQuery(
      r'''
      mutation InsertPerson($name: String!, $serviceId: uuid!) {
        insertPersonsOne(object: {name: $name, services: {data: [{serviceId: $serviceId}]}}) { id }
      }
      ''',
      variables: {'name': name, 'serviceId': serviceId},
    );

    return (inserted['insertPersonsOne'] as Map)['id'] as String;
  }

  static Future<String> insertStudent(
    String name, {
    required String serviceId,
    required int studyYear,
  }) async {
    final inserted = await hasuraQuery(
      r'''
      mutation InsertStudent($name: String!, $serviceId: uuid!, $studyYear: smallint!) {
        insertPersonsOne(object: {
          name: $name
          workStatus: "student"
          studyYearId: $studyYear
          family: {data: {name: $name}}
          services: {data: [{serviceId: $serviceId}]}
        }) { id }
      }
      ''',
      variables: {'name': name, 'serviceId': serviceId, 'studyYear': studyYear},
    );

    return (inserted['insertPersonsOne'] as Map)['id'] as String;
  }

  /// Provisions a verified, approved account that edits only the persons of
  /// each service who are in the paired study year.
  static Future<void> createServantAccount(
    String name, {
    required String email,
    required Map<String, int> studyYearByServiceId,
  }) async {
    final signedUp = await _authEmulatorPost(
      '/identitytoolkit.googleapis.com/v1/accounts:signUp',
      {'email': email, 'password': password},
    );
    final authId = signedUp['localId'] as String;

    final inserted = await hasuraQuery(
      r'''
      mutation InsertServant($name: String!, $email: String!, $authId: String!, $adminOn: [AuthUsersAdminOnInsertInput!]!) {
        insertAuthUsersDataOne(object: {
          name: $name
          email: $email
          authId: $authId
          permissions: {data: [{permission: "approved"}]}
          adminOn: {data: $adminOn}
        }) { uid }
      }
      ''',
      variables: {
        'name': name,
        'email': email,
        'authId': authId,
        'adminOn': [
          for (final MapEntry(key: serviceId, value: studyYear)
              in studyYearByServiceId.entries)
            {
              'adminOnService': serviceId,
              'serviceStudyYear': studyYear,
              'serviceAllowEdit': true,
            },
        ],
      },
    );
    final uid = (inserted['insertAuthUsersDataOne'] as Map)['uid'] as String;

    await hasuraQuery(
      r'''
      mutation InsertServantPerson($name: String!, $uid: uuid!) {
        insertPersonsOne(object: {name: $name, uid: $uid}) { id }
      }
      ''',
      variables: {'name': name, 'uid': uid},
    );

    await _authEmulatorPost(
      '/identitytoolkit.googleapis.com/v1/projects/$projectId/accounts:update',
      {
        'localId': authId,
        'emailVerified': true,
        'customAttributes': jsonEncode({
          'x-hasura-user-id': uid,
          'x-hasura-default-role': 'user',
          'x-hasura-allowed-roles': ['user'],
        }),
      },
    );
  }

  static Future<Map<String, dynamic>> _authEmulatorPost(
    String path,
    Map<String, dynamic> body,
  ) async {
    final response = await http.post(
      _authEmulator.replace(path: path, queryParameters: {'key': 'e2e'}),
      headers: {
        'content-type': 'application/json',
        'authorization': 'Bearer owner',
      },
      body: jsonEncode(body),
    );

    if (response.statusCode != 200) {
      throw StateError('Auth emulator $path failed: ${response.body}');
    }

    return jsonDecode(response.body) as Map<String, dynamic>;
  }

  static Future<({int? studyYear, Set<String> serviceIds})> placementOf(
    String personId,
  ) async {
    final data = await hasuraQuery(
      r'''
      query PlacementOf($personId: uuid!) {
        personsByPk(id: $personId) { studyYearId services { serviceId } }
      }
      ''',
      variables: {'personId': personId},
    );
    final person = data['personsByPk'] as Map;

    return (
      studyYear: person['studyYearId'] as int?,
      serviceIds: {
        for (final row in person['services'] as List)
          (row as Map)['serviceId'] as String,
      },
    );
  }

  static Future<String> insertApprovedUser(
    String name, {
    required String adminOnServiceId,
  }) async {
    final inserted = await hasuraQuery(
      r'''
      mutation InsertApprovedUser($name: String!, $serviceId: uuid!) {
        insertAuthUsersDataOne(object: {
          name: $name
          permissions: {data: [{permission: "approved"}]}
          adminOn: {data: [{adminOnService: $serviceId}]}
        }) { uid }
      }
      ''',
      variables: {'name': name, 'serviceId': adminOnServiceId},
    );

    return (inserted['insertAuthUsersDataOne'] as Map)['uid'] as String;
  }

  static Future<Set<String>> adminOnServicesOf(String uid) async {
    final data = await hasuraQuery(
      r'''
      query AdminOnServicesOf($uid: uuid!) {
        authUsersAdminOn(where: {uid: {_eq: $uid}}) { adminOnService }
      }
      ''',
      variables: {'uid': uid},
    );

    return {
      for (final row in data['authUsersAdminOn'] as List)
        (row as Map)['adminOnService'] as String,
    };
  }

  static Future<Map<String, dynamic>> userByEmail(String email) async {
    final data = await hasuraQuery(
      r'''
      query UserByEmail($email: String!) {
        authUsersData(where: {email: {_eq: $email}}) {
          uid
          authId
          person { id name }
        }
      }
      ''',
      variables: {'email': email},
    );

    return (data['authUsersData'] as List).single as Map<String, dynamic>;
  }

  static Future<Set<String>> permissionsOf(String uid) async {
    final data = await hasuraQuery(
      r'''
      query PermissionsOf($uid: uuid!) {
        authUsersPermissions(where: {uid: {_eq: $uid}}) { permission }
      }
      ''',
      variables: {'uid': uid},
    );

    return {
      for (final row in data['authUsersPermissions'] as List)
        (row as Map)['permission'] as String,
    };
  }
}
