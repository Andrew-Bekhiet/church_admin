abstract class AuthException implements Exception {
  // Authentication SDKs expose untyped failures that callers need for diagnostics.
  // ignore: no-object-declaration
  final Object? error;
  final StackTrace? stackTrace;

  String get message;
  const AuthException(this.error, this.stackTrace);

  @override
  String toString() => message;
}

class IncorrectCredentialsException extends AuthException {
  @override
  String get message => 'Email or password is incorrect';
  const IncorrectCredentialsException(super.error, super.stackTrace);
}
