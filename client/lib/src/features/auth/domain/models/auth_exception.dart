sealed class AuthException implements Exception {
  // Authentication SDKs expose untyped failures that callers need for diagnostics.
  // ignore: no-object-declaration
  final Object? error;
  final StackTrace? stackTrace;

  String get message;
  const AuthException(
    this.error,
    this.stackTrace,
  );

  @override
  String toString() => message;
}

class IncorrectCredentialsException extends AuthException {
  @override
  String get message => 'Email or password is incorrect';
  const IncorrectCredentialsException(super.error, super.stackTrace);
}

class UnknownAuthException extends AuthException {
  @override
  String get message => 'Authentication failed';
  const UnknownAuthException(super.error, super.stackTrace);
}

class EmailAlreadyInUseException extends AuthException {
  @override
  String get message => 'An account already exists for this email';
  const EmailAlreadyInUseException(super.error, super.stackTrace);
}

class WeakPasswordException extends AuthException {
  @override
  String get message => 'Password is too weak';
  const WeakPasswordException(super.error, super.stackTrace);
}

class TooManyAttemptsException extends AuthException {
  @override
  String get message => 'Too many attempts, try again later';
  const TooManyAttemptsException(super.error, super.stackTrace);
}

class AuthNetworkException extends AuthException {
  @override
  String get message => 'Could not reach the authentication server';
  const AuthNetworkException(super.error, super.stackTrace);
}
