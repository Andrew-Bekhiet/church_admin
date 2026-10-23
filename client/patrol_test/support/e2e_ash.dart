import 'dart:convert';

import 'package:http/http.dart' as http;

import 'e2e_backend.dart';

/// Sends GraphQL documents to the hermetic Ash backend, signed in through the
/// Auth emulator as the seeded administrator unless told otherwise.
abstract final class E2eAsh {
  static final Uri _authEmulator = Uri.http('localhost:9099');
  static final Uri _gql = Uri.http('localhost:8080', '/gql');

  static Future<String> idTokenOf(String email, String password) async {
    final response = await http.post(
      _authEmulator.replace(
        path: '/identitytoolkit.googleapis.com/v1/accounts:signInWithPassword',
        queryParameters: {'key': 'e2e'},
      ),
      headers: {'content-type': 'application/json'},
      body: jsonEncode({
        'email': email,
        'password': password,
        'returnSecureToken': true,
      }),
    );

    if (response.statusCode != 200) {
      throw StateError('Signing in $email failed: ${response.body}');
    }

    return jsonDecode(response.body)['idToken'] as String;
  }

  static Future<Map<String, dynamic>> query(
    String query, {
    Map<String, dynamic> variables = const {},
    String email = E2eBackend.adminEmail,
    String password = E2eBackend.password,
  }) async {
    final response = await http.post(
      _gql,
      headers: {
        'content-type': 'application/json',
        'authorization': 'Bearer ${await idTokenOf(email, password)}',
      },
      body: jsonEncode({'query': query, 'variables': variables}),
    );
    final body = jsonDecode(response.body) as Map<String, dynamic>;

    if (body['errors'] case final errors?) {
      throw StateError('Ash query failed: $errors');
    }

    return body['data'] as Map<String, dynamic>;
  }

  static Future<List<dynamic>> pageResults(
    String query,
    String field, {
    Map<String, dynamic> variables = const {},
  }) async {
    final data = await E2eAsh.query(query, variables: variables);

    return (data[field] as Map)['results'] as List;
  }

  static Future<String> idByName(String rootField, String name) async {
    final rows = await pageResults(
      '''
      query IdByName(\$name: String!) {
        $rootField(filter: {name: {eq: \$name}}) { results { id } }
      }
      ''',
      rootField,
      variables: {'name': name},
    );

    return (rows.single as Map)['id'] as String;
  }

  static Future<Map<String, dynamic>> mutation(
    String mutation, {
    required String field,
    required Map<String, dynamic> variables,
  }) async {
    final data = await query(mutation, variables: variables);
    final payload = data[field] as Map<String, dynamic>;

    if ((payload['errors'] as List).isNotEmpty) {
      throw StateError('Ash $field failed: ${payload['errors']}');
    }

    return payload['result'] as Map<String, dynamic>;
  }

  /// Runs `create<type>` with [input] and returns the [selection] of the
  /// created record.
  static Future<Map<String, dynamic>> createRecord(
    String type,
    Map<String, dynamic> input, {
    String selection = 'id',
  }) => mutation(
    '''
    mutation Create$type(\$input: Create${type}Input!) {
      create$type(input: \$input) {
        result { $selection }
        errors { code message fields }
      }
    }
    ''',
    field: 'create$type',
    variables: {'input': input},
  );

  static Future<String> createRecordId(
    String type,
    Map<String, dynamic> input,
  ) async => (await createRecord(type, input))['id'] as String;
}
