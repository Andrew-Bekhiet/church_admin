import 'package:graphql/client.dart';

sealed class BackendException implements Exception {
  static const _forbiddenCodes = {'forbidden', 'forbidden_field'};
  static const _invalidInputCodes = {
    'invalid',
    'invalid_changes',
    'invalid_attribute',
    'invalid_argument',
    'required',
    'invalid_query',
    'invalid_keyset',
    'invalid_primary_key',
  };

  final String message;
  final String? code;

  const BackendException(this.message, {this.code});

  static BackendException fromOperationException(OperationException exception) {
    final firstError = switch (exception) {
      OperationException(graphqlErrors: [final error, ...]) => error,
      OperationException(
        linkException: ServerException(
          parsedResponse: Response(errors: [final error, ...]),
        ),
      ) =>
        error,
      _ => null,
    };

    return switch ((firstError, exception.linkException)) {
      (final error?, _) => fromGraphQLError(error),
      (null, final linkException?) => BackendUnavailableException(
        '$linkException',
      ),
      (null, null) => BackendUnknownException('$exception'),
    };
  }

  static BackendException fromGraphQLError(GraphQLError error) {
    final extensions = error.extensions ?? const <String, dynamic>{};
    final message = error.message;

    return switch (extensions['code']) {
      final String code when _forbiddenCodes.contains(code) =>
        BackendForbiddenException(message, code: code),

      final String code when _invalidInputCodes.contains(code) =>
        BackendInvalidInputException(
          message,
          code: code,
          fields: [
            for (final field in extensions['fields'] as List? ?? const [])
              '$field',
          ],
          vars: (extensions['vars'] as Map?)?.cast<String, dynamic>() ?? {},
        ),

      'not_found' => BackendNotFoundException(message, code: 'not_found'),

      'invalid_document' => BackendInvalidDocumentException(
        message,
        code: 'invalid_document',
      ),

      'unauthenticated' => BackendAuthenticationException(
        message,
        code: 'unauthenticated',
      ),

      final String code when code.contains('/') => BackendRejectedException(
        message,
        code: code,
      ),

      final String? code => BackendUnknownException(message, code: code),

      _ => BackendUnknownException(message),
    };
  }

  @override
  String toString() => '$runtimeType(code: $code, message: $message)';
}

class BackendForbiddenException extends BackendException {
  const BackendForbiddenException(super.message, {super.code});
}

class BackendNotFoundException extends BackendException {
  const BackendNotFoundException(super.message, {super.code});
}

class BackendInvalidInputException extends BackendException {
  final List<String> fields;
  final Map<String, dynamic> vars;

  const BackendInvalidInputException(
    super.message, {
    required super.code,
    this.fields = const [],
    this.vars = const {},
  });
}

class BackendInvalidDocumentException extends BackendException {
  const BackendInvalidDocumentException(super.message, {super.code});
}

class BackendAuthenticationException extends BackendException {
  const BackendAuthenticationException(super.message, {super.code});
}

class BackendRejectedException extends BackendException {
  const BackendRejectedException(super.message, {required super.code});
}

class BackendUnavailableException extends BackendException {
  const BackendUnavailableException(super.message);
}

class BackendUnknownException extends BackendException {
  const BackendUnknownException(super.message, {super.code});
}
