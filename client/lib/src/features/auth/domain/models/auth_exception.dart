import 'package:church_admin/church_admin.dart';

abstract class AuthException implements Exception {
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

class MultiFactorRequiredException extends AuthException {
  final MultiFactorSession session;

  @override
  String get message => 'Multi-factor authentication is required';
  const MultiFactorRequiredException(
    this.session,
    super.error,
    super.stackTrace,
  );
}

class MultiFactorVerificationFailedException extends AuthException {
  @override
  String get message => 'Multi-factor verification failed';
  const MultiFactorVerificationFailedException(super.error, super.stackTrace);
}

class MultiFactorEnrollmentFailedException extends AuthException {
  @override
  String get message => 'Multi-factor enrollment failed';
  const MultiFactorEnrollmentFailedException(super.error, super.stackTrace);
}
