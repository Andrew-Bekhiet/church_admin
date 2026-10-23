import 'dart:convert';

import 'package:http/http.dart' as http;

import 'e2e_ash.dart';
import 'e2e_user.dart';

/// Talks to the hermetic backend started by `server/scripts/e2e-backend.sh`.
abstract final class E2eBackend {
  static const projectId = 'demo-church-admin';
  static const adminEmail = 'admin@e2e.test';
  static const password = 'Harness_Passw0rd';

  static final Uri _authEmulator = Uri.http('localhost:9099');
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

  static Future<String> serviceIdByName(String serviceName) =>
      E2eAsh.idByName('services', serviceName);

  static Future<String> classIdByName(String className) =>
      E2eAsh.idByName('classes', className);

  static Future<String> personTypeIdByName(String personTypeName) =>
      E2eAsh.idByName('personTypes', personTypeName);

  static Future<String> createPerson(
    String name, {
    required String serviceName,
  }) async => E2eAsh.createRecordId('Person', {
    'name': name,
    'services': [await serviceIdByName(serviceName)],
  });

  static Future<String> insertPersonInFamilyWithoutAreaOrService(
    String name, {
    required String familyName,
  }) async => E2eAsh.createRecordId('Person', {
    'name': name,
    'familyId': await E2eAsh.createRecordId('Family', {'name': familyName}),
  });

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
    final areaId = await insertArea(areaName);
    final streetId = await insertStreet(streetName, areaId: areaId);
    final familyId = await E2eAsh.createRecordId('Family', {
      'name': familyName,
      'address': {'areaId': areaId, 'streetId': streetId},
    });

    return (
      areaId: areaId,
      residentId: await E2eAsh.createRecordId('Person', {
        'name': residentName,
        'familyId': familyId,
      }),
      streetName: streetName,
      familyName: familyName,
    );
  }

  static Future<String> insertPersonBornOn(
    String name, {
    required DateTime birthdate,
    required String serviceName,
  }) async => E2eAsh.createRecordId('Person', {
    'name': name,
    'birthdate': birthdate.toIso8601String().split('T').first,
    'services': [await serviceIdByName(serviceName)],
  });

  static Future<String> insertArea(String name) =>
      E2eAsh.createRecordId('Area', {'name': name});

  static Future<String> insertStreet(String name, {required String areaId}) =>
      insertStreetSharedByAreas(name, areaIds: [areaId]);

  static Future<String> insertStreetSharedByAreas(
    String name, {
    required List<String> areaIds,
  }) => E2eAsh.createRecordId('Street', {'name': name, 'areas': areaIds});

  static Future<String> insertFamilyWithMember(
    String familyName, {
    required String memberName,
    required String serviceId,
    required int studyYear,
    required bool isMale,
  }) async {
    final familyId = await E2eAsh.createRecordId('Family', {
      'name': familyName,
    });
    await E2eAsh.createRecordId('Person', {
      'name': memberName,
      'gender': isMale,
      'studyYearId': studyYear,
      'workStatus': 'student',
      'services': [serviceId],
      'familyId': familyId,
    });

    return familyId;
  }

  static Future<String> insertPersonInFamilyOnStreet(
    String name, {
    required String familyName,
    required String streetId,
    required String areaId,
    required String serviceId,
    required int studyYear,
    required bool isMale,
  }) => E2eAsh.createRecordId('Person', {
    'name': name,
    'gender': isMale,
    'studyYearId': studyYear,
    'workStatus': 'student',
    'services': [serviceId],
    'newFamilyName': familyName,
    'address': {'areaId': areaId, 'streetId': streetId},
  });

  static Future<Map<String, dynamic>> personById(String id) async {
    final data = await E2eAsh.query(
      r'''
      query PersonById($id: ID!) {
        person(id: $id) {
          familyId
          gender
          studyYearId
          serviceMemberships { serviceId }
          classMemberships { classId }
          family { address { areaId streetId } }
        }
      }
      ''',
      variables: {'id': id},
    );

    return {
      for (final MapEntry(:key, :value)
          in (data['person'] as Map<String, dynamic>).entries)
        switch (key) {
          'serviceMemberships' => 'services',
          'classMemberships' => 'classes',
          _ => key,
        }: value,
    };
  }

  static Future<List<Map<String, dynamic>>> contactsOfFamily(
    String familyId,
  ) async {
    final contacts = await E2eAsh.pageResults(
      r'''
      query ContactsOfFamily($familyId: ID!) {
        contacts(filter: {familyId: {eq: $familyId}}) {
          results { id phone personTypeId }
        }
      }
      ''',
      'contacts',
      variables: {'familyId': familyId},
    );

    return contacts.cast<Map<String, dynamic>>();
  }

  static Future<int> familiesCount() => _countOf('families');

  static Future<int> servicesCount() => _countOf('services');

  static Future<int> _countOf(String rootField) async {
    final data = await E2eAsh.query('query CountOf { $rootField { count } }');

    return (data[rootField] as Map)['count'] as int;
  }

  static Future<({String uid, String personId})> createUserWithPerson({
    required String name,
    required Iterable<String> permissions,
    required List<Map<String, Object?>> adminOn,
    bool isMale = true,
    String? email,
  }) async {
    final created = await E2eAsh.createRecord('User', {
      'name': name,
      'email': ?email,
      'newPerson': {'name': name, 'gender': isMale},
      'permissions': permissions.toList(),
      'adminOn': adminOn,
    }, selection: 'uid person { id }');

    return (
      uid: created['uid'] as String,
      personId: (created['person'] as Map)['id'] as String,
    );
  }

  static Future<String> createUser(
    String name, {
    required String adminOnServiceId,
  }) async => (await createUserWithPerson(
    name: name,
    permissions: ['approved'],
    adminOn: [
      {'adminOnService': adminOnServiceId},
    ],
  )).uid;

  static Future<Set<String>> adminOnServicesOf(String uid) async {
    final scopeGrants = await E2eAsh.pageResults(
      r'''
      query ScopeGrantsOf($uid: ID!) {
        scopeGrants(filter: {uid: {eq: $uid}}) { results { adminOnService } }
      }
      ''',
      'scopeGrants',
      variables: {'uid': uid},
    );

    return {
      for (final grant in scopeGrants)
        if ((grant as Map)['adminOnService'] case final String serviceId)
          serviceId,
    };
  }

  static Future<Map<String, dynamic>> userByEmail(String email) async {
    final users = await E2eAsh.pageResults(
      r'''
      query UserByEmail($email: String!) {
        users(filter: {email: {eq: $email}}) {
          results {
            uid
            authId
            person { id name }
          }
        }
      }
      ''',
      'users',
      variables: {'email': email},
    );

    return users.single as Map<String, dynamic>;
  }

  static Future<Map<String, dynamic>> orderByPreferencesOf(
    E2eUser owner,
  ) async {
    final users = await E2eAsh.pageResults(
      r'''
      query OrderByPreferencesOf($uid: ID!) {
        users(filter: {uid: {eq: $uid}}) {
          results { preferences { orderByPreferences } }
        }
      }
      ''',
      'users',
      variables: {'uid': owner.uid},
      email: owner.email,
      password: owner.password,
    );

    return switch (users.single) {
      {
        'preferences': {
          'orderByPreferences': final Map<String, dynamic> preferences,
        },
      } =>
        preferences,
      _ => const {},
    };
  }

  static Future<Set<String>> permissionsOf(String uid) async {
    final permissions = await E2eAsh.pageResults(
      r'''
      query PermissionsOf($uid: ID!) {
        userPermissions(filter: {uid: {eq: $uid}}) { results { permission } }
      }
      ''',
      'userPermissions',
      variables: {'uid': uid},
    );

    return {
      for (final row in permissions) (row as Map)['permission'] as String,
    };
  }
}
