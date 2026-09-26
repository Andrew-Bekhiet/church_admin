sealed class AuthException implements Exception {
  // Authentication SDKs expose untyped failures that callers need for diagnostics.
  // ignore: no-object-declaration
  final Object? error;
  final StackTrace? stackTrace;

  String get message => '$error';

  const AuthException(
    this.error,
    this.stackTrace,
  );

  @override
  String toString() => message;
}

class IncorrectCredentialsException extends AuthException {
  const IncorrectCredentialsException(super.error, super.stackTrace);
}

class UnknownAuthException extends AuthException {
  const UnknownAuthException(super.error, super.stackTrace);
}

class EmailAlreadyInUseException extends AuthException {
  const EmailAlreadyInUseException(super.error, super.stackTrace);
}

class WeakPasswordException extends AuthException {
  const WeakPasswordException(super.error, super.stackTrace);
}

class TooManyAttemptsException extends AuthException {
  const TooManyAttemptsException(super.error, super.stackTrace);
}

class AuthNetworkException extends AuthException {
  const AuthNetworkException(super.error, super.stackTrace);
}

class SessionRevokedException extends AuthException {
  const SessionRevokedException(super.error, super.stackTrace);
}
