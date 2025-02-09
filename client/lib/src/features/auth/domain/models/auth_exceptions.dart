import 'package:church_admin/church_admin.dart';

abstract class AuthException implements Exception {
  const AuthException(
    this.error,
    this.stackTrace,
  );

  String get message;
  // ignore: no-object-declaration
  final Object? error;
  final StackTrace? stackTrace;

  @override
  String toString() => message;
}

class IncorrectCredentialsException extends AuthException {
  const IncorrectCredentialsException(super.error, super.stackTrace);

  @override
  String get message => 'Email or password is incorrect';
}

class MultiFactorRequiredException extends AuthException {
  const MultiFactorRequiredException(
    this.session,
    super.error,
    super.stackTrace,
  );

  final MultiFactorSession session;

  @override
  String get message => 'Multi-factor authentication is required';
}

class MultiFactorVerificationFailedException extends AuthException {
  const MultiFactorVerificationFailedException(super.error, super.stackTrace);

  @override
  String get message => 'Multi-factor verification failed';
}

class MultiFactorEnrollmentFailedException extends AuthException {
  const MultiFactorEnrollmentFailedException(super.error, super.stackTrace);

  @override
  String get message => 'Multi-factor enrollment failed';
}
