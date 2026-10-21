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

  static Future<String> insertPersonInFamilyWithoutAreaOrService(
    String name, {
    required String familyName,
  }) async {
    final inserted = await hasuraQuery(
      r'''
      mutation InsertPersonInFamilyWithoutAreaOrService($name: String!, $familyName: String!) {
        insertPersonsOne(object: {name: $name, family: {data: {name: $familyName}}}) { id }
      }
      ''',
      variables: {'name': name, 'familyName': familyName},
    );

    return (inserted['insertPersonsOne'] as Map)['id'] as String;
  }

  /// Inserts an area with one street and a family living on it, whose only
  /// member is [residentName]; returns the area's, street's and family's
  /// names and the area's and the resident's ids.
  static Future<
    ({
      String areaId,
      String residentId,
      String streetName,
      String familyName,
    })
  >
  insertAreaWithResident(
    String areaName, {
    required String residentName,
    required String locationTag,
  }) async {
    final streetName = 'شارع $locationTag';
    final familyName = 'عائلة $locationTag';
    final street = await hasuraQuery(
      r'''
      mutation InsertStreetInNewArea($streetName: String!, $areaName: String!) {
        insertStreetsOne(object: {name: $streetName, areas: {data: [{area: {data: {name: $areaName}}}]}}) {
          id
          areas { areaId }
        }
      }
      ''',
      variables: {'streetName': streetName, 'areaName': areaName},
    );
    final insertedStreet = street['insertStreetsOne'] as Map;
    final areaId = (insertedStreet['areas'] as List).single['areaId'] as String;
    final family = await hasuraQuery(
      r'''
      mutation InsertFamily($familyName: String!) {
        insertFamiliesOne(object: {name: $familyName}) { id }
      }
      ''',
      variables: {'familyName': familyName},
    );
    final familyId = (family['insertFamiliesOne'] as Map)['id'] as String;
    final resident = await hasuraQuery(
      r'''
      mutation InsertResident($familyId: uuid!, $areaId: uuid!, $streetId: uuid!, $name: String!) {
        insertAddressesOne(object: {familyId: $familyId, areaId: $areaId, streetId: $streetId}) { id }
        insertPersonsOne(object: {name: $name, familyId: $familyId}) { id }
      }
      ''',
      variables: {
        'familyId': familyId,
        'areaId': areaId,
        'streetId': insertedStreet['id'],
        'name': residentName,
      },
    );

    return (
      areaId: areaId,
      residentId: (resident['insertPersonsOne'] as Map)['id'] as String,
      streetName: streetName,
      familyName: familyName,
    );
  }

  static Future<String> insertPersonBornOn(
    String name, {
    required DateTime birthdate,
    required String serviceName,
  }) async {
    final serviceId = await serviceIdByName(serviceName);
    final inserted = await hasuraQuery(
      r'''
      mutation InsertPersonBornOn($name: String!, $birthdate: date!, $serviceId: uuid!) {
        insertPersonsOne(object: {name: $name, birthdate: $birthdate, services: {data: [{serviceId: $serviceId}]}}) { id }
      }
      ''',
      variables: {
        'name': name,
        'birthdate': birthdate.toIso8601String().split('T').first,
        'serviceId': serviceId,
      },
    );

    return (inserted['insertPersonsOne'] as Map)['id'] as String;
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

  static Future<Set<String>> adminOnServicesOf(String uid) => _columnOfUserRows(
    uid,
    table: 'authUsersAdminOn',
    column: 'adminOnService',
  );

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

  static Future<Set<String>> permissionsOf(String uid) => _columnOfUserRows(
    uid,
    table: 'authUsersPermissions',
    column: 'permission',
  );

  static Future<Set<String>> _columnOfUserRows(
    String uid, {
    required String table,
    required String column,
  }) async {
    final data = await hasuraQuery(
      'query (\$uid: uuid!) { $table(where: {uid: {_eq: \$uid}}) { $column } }',
      variables: {'uid': uid},
    );

    return {
      for (final row in data[table] as List) (row as Map)[column] as String,
    };
  }
}
