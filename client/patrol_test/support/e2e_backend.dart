import 'dart:convert';

import 'package:http/http.dart' as http;

/// Talks to the hermetic backend started by `server/scripts/e2e-backend.sh`.
abstract final class E2eBackend {
  static const projectId = 'demo-church-admin';
  static const adminEmail = 'admin@e2e.test';
  static const password = 'Harness_Passw0rd';

  static final Uri _authEmulator = Uri.http('localhost:9099');
  static final Uri _ash = Uri.http('localhost:8080', '/gql');
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

  static Future<String> _adminIdToken() async {
    final response = await http.post(
      _authEmulator.replace(
        path: '/identitytoolkit.googleapis.com/v1/accounts:signInWithPassword',
        queryParameters: {'key': 'e2e'},
      ),
      headers: {'content-type': 'application/json'},
      body: jsonEncode({
        'email': adminEmail,
        'password': password,
        'returnSecureToken': true,
      }),
    );

    if (response.statusCode != 200) {
      throw StateError('Signing in $adminEmail failed: ${response.body}');
    }

    return jsonDecode(response.body)['idToken'] as String;
  }

  static Future<Map<String, dynamic>> ashQuery(
    String query, {
    Map<String, dynamic> variables = const {},
  }) async {
    final response = await http.post(
      _ash,
      headers: {
        'content-type': 'application/json',
        'authorization': 'Bearer ${await _adminIdToken()}',
      },
      body: jsonEncode({'query': query, 'variables': variables}),
    );
    final body = jsonDecode(response.body) as Map<String, dynamic>;

    if (body['errors'] case final errors?) {
      throw StateError('Ash query failed: $errors');
    }

    return body['data'] as Map<String, dynamic>;
  }

  static Future<Map<String, dynamic>> _ashMutation(
    String mutation, {
    required String field,
    required Map<String, dynamic> input,
  }) async {
    final data = await ashQuery(mutation, variables: {'input': input});
    final payload = data[field] as Map<String, dynamic>;

    if ((payload['errors'] as List).isNotEmpty) {
      throw StateError('Ash $field failed: ${payload['errors']}');
    }

    return payload['result'] as Map<String, dynamic>;
  }

  static Future<List<dynamic>> _ashPageResults(
    String query,
    String field, {
    required Map<String, dynamic> variables,
  }) async {
    final data = await ashQuery(query, variables: variables);

    return (data[field] as Map)['results'] as List;
  }

  static Future<String> serviceIdByName(String serviceName) async {
    final services = await _ashPageResults(
      r'''
      query ServiceByName($serviceName: String!) {
        services(filter: {name: {eq: $serviceName}}) { results { id } }
      }
      ''',
      'services',
      variables: {'serviceName': serviceName},
    );

    return (services.single as Map)['id'] as String;
  }

  static Future<String> createPerson(
    String name, {
    required String serviceName,
  }) async {
    final created = await _ashMutation(
      r'''
      mutation CreatePerson($input: CreatePersonInput!) {
        createPerson(input: $input) { result { id } errors { code message fields } }
      }
      ''',
      field: 'createPerson',
      input: {
        'name': name,
        'services': [await serviceIdByName(serviceName)],
      },
    );

    return created['id'] as String;
  }

  static Future<String> createUser(
    String name, {
    required String adminOnServiceId,
  }) async {
    final created = await _ashMutation(
      r'''
      mutation CreateUser($input: CreateUserInput!) {
        createUser(input: $input) { result { uid } errors { code message fields } }
      }
      ''',
      field: 'createUser',
      input: {
        'name': name,
        'newPerson': {'name': name, 'gender': true},
        'permissions': ['approved'],
        'adminOn': [
          {'adminOnService': adminOnServiceId},
        ],
      },
    );

    return created['uid'] as String;
  }

  static Future<Set<String>> adminOnServicesOf(String uid) async {
    final scopeGrants = await _ashPageResults(
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
    final users = await _ashPageResults(
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

  static Future<Set<String>> permissionsOf(String uid) async {
    final permissions = await _ashPageResults(
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
