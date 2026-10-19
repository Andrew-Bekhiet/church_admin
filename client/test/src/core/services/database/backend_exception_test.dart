import 'dart:io';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:rxdart/rxdart.dart';

void main() {
  const upstreamMessage = 'the server explains what went wrong';

  DBGraphQLClient clientAnswering(Link link) => DBGraphQLClient(
    connectivityStream: BehaviorSubject.seeded(true),
    link: link,
    cache: GraphQLCache(store: InMemoryStore()),
  );

  Future<Object?> errorOfQuery(Link link) async {
    try {
      await clientAnswering(link).query(
        QueryOptions(document: gql('query areas { areas { results { id } } }')),
      );
    } on Object catch (error) {
      return error;
    }

    return null;
  }

  GraphQLError errorWithCode(String code, {Json? extensions}) => GraphQLError(
    message: upstreamMessage,
    extensions: {'code': code, ...?extensions},
  );

  group('a GraphQL error code becomes its backend exception', () {
    final expectations = <String, TypeMatcher<BackendException>>{
      'forbidden': isA<BackendForbiddenException>(),
      'forbidden_field': isA<BackendForbiddenException>(),
      'not_found': isA<BackendNotFoundException>(),
      'invalid': isA<BackendInvalidInputException>(),
      'invalid_attribute': isA<BackendInvalidInputException>(),
      'invalid_argument': isA<BackendInvalidInputException>(),
      'required': isA<BackendInvalidInputException>(),
      'invalid_keyset': isA<BackendInvalidInputException>(),
      'invalid_document': isA<BackendInvalidDocumentException>(),
      'unauthenticated': isA<BackendAuthenticationException>(),
      'user/email-taken': isA<BackendRejectedException>(),
      'something_went_wrong': isA<BackendUnknownException>(),
      'a_code_nobody_declared': isA<BackendUnknownException>(),
    };

    for (final MapEntry(key: code, value: matcher) in expectations.entries) {
      test('$code keeps the upstream message and code', () async {
        final error = await errorOfQuery(
          _AnsweringLink(
            Response(errors: [errorWithCode(code)], response: const {}),
          ),
        );

        expect(
          error,
          matcher
              .having((e) => e.message, 'message', upstreamMessage)
              .having((e) => e.code, 'code', code),
        );
      });
    }
  });

  test('an invalid input carries the fields and message variables', () async {
    const fields = ['name', 'email'];
    const vars = {'max': 50};

    final error = await errorOfQuery(
      _AnsweringLink(
        Response(
          errors: [
            errorWithCode(
              'invalid_attribute',
              extensions: {'fields': fields, 'vars': vars},
            ),
          ],
          response: const {},
        ),
      ),
    );

    expect(
      error,
      isA<BackendInvalidInputException>()
          .having((e) => e.fields, 'fields', fields)
          .having((e) => e.vars, 'vars', vars),
    );
  });

  test('a domain rejection carries its code', () async {
    const code = 'invitation/scope-required';

    final error = await errorOfQuery(
      _AnsweringLink(
        Response(errors: [errorWithCode(code)], response: const {}),
      ),
    );

    expect(
      error,
      isA<BackendRejectedException>().having((e) => e.code, 'code', code),
    );
  });

  test(
    'a 401 whose body says unauthenticated is an authentication failure',
    () async {
      final error = await errorOfQuery(
        _FailingLink(
          ServerException(
            statusCode: 401,
            parsedResponse: Response(
              errors: [errorWithCode('unauthenticated')],
              response: const {},
            ),
          ),
        ),
      );

      expect(
        error,
        isA<BackendAuthenticationException>().having(
          (e) => e.message,
          'message',
          upstreamMessage,
        ),
      );
    },
  );

  test('an unreachable server is reported as unavailable', () async {
    final error = await errorOfQuery(
      _FailingLink(
        NetworkException.fromException(
          originalException: const SocketException(upstreamMessage),
          originalStackTrace: StackTrace.empty,
          uri: Uri.parse('https://api.example.com/gql'),
          message: upstreamMessage,
        ),
      ),
    );

    expect(error, isA<BackendUnavailableException>());
  });

  test('the first error decides the exception when several arrive', () async {
    final error = await errorOfQuery(
      _AnsweringLink(
        Response(
          errors: [errorWithCode('not_found'), errorWithCode('forbidden')],
          response: const {},
        ),
      ),
    );

    expect(error, isA<BackendNotFoundException>());
  });
}

class _AnsweringLink extends Link {
  final Response response;

  _AnsweringLink(this.response);

  @override
  Stream<Response> request(Request request, [NextLink? forward]) =>
      Stream.value(response);
}

class _FailingLink extends Link {
  final LinkException exception;

  _FailingLink(this.exception);

  @override
  Stream<Response> request(Request request, [NextLink? forward]) =>
      Stream.error(exception);
}
