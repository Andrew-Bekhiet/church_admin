import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';

sealed class AuthEvent extends Equatable {
  const AuthEvent();
}

final class ListenToSubscriptions extends AuthEvent {
  final bool loadCachedUser;

  @override
  List<Object?> get props => [loadCachedUser];

  const ListenToSubscriptions({this.loadCachedUser = false});
}

final class SignInWithEmailPassword extends AuthEvent {
  final String email;
  final String password;

  @override
  List<Object?> get props => [email, password];

  const SignInWithEmailPassword({
    required this.email,
    required this.password,
  });

  @override
  String toString() =>
      '$SignInWithEmailPassword($email, ${password.isEmpty ? '' : '********'})';
}

final class SignUpWithEmailPassword extends AuthEvent {
  final String email;
  final String password;

  @override
  List<Object?> get props => [email, password];

  const SignUpWithEmailPassword({
    required this.email,
    required this.password,
  });

  @override
  String toString() =>
      '$SignUpWithEmailPassword($email, ${password.isEmpty ? '' : '********'})';
}

final class SignOut extends AuthEvent {
  @override
  List<Object?> get props => [];
  const SignOut();
}

final class ReloadUser extends AuthEvent {
  @override
  List<Object?> get props => [];
  const ReloadUser();
}

final class SendEmailVerification extends AuthEvent {
  @override
  List<Object?> get props => [];
  const SendEmailVerification();
}

final class EnrollMultiFactor extends AuthEvent {
  final String password;
  final String phoneNumber;

  @override
  List<Object?> get props => [password, phoneNumber];
  const EnrollMultiFactor({
    required this.password,
    required this.phoneNumber,
  });

  @override
  String toString() =>
      '$EnrollMultiFactor($phoneNumber, ${password.isEmpty ? '' : '********'})';
}

final class StartMultiFactorChallenge extends AuthEvent {
  final MultiFactorSession session;
  final MultiFactorInfo? selectedFactor;
  final String? phoneNumber;
  final int? resendToken;

  @override
  List<Object?> get props => [
    session,
    selectedFactor,
    phoneNumber,
    resendToken,
  ];
  const StartMultiFactorChallenge({
    required this.session,
    this.selectedFactor,
    this.phoneNumber,
    this.resendToken,
  });
}

final class CompleteMultiFactorChallenge extends AuthEvent {
  final MultiFactorSession session;
  final MultiFactorChallenge challenge;
  final String verificationCode;
  final MultiFactorInfo? selectedFactor;

  @override
  List<Object?> get props => [
    session,
    challenge,
    verificationCode,
    selectedFactor,
  ];
  const CompleteMultiFactorChallenge({
    required this.session,
    required this.challenge,
    required this.verificationCode,
    this.selectedFactor,
  });
}

final class SendPasswordResetEmail extends AuthEvent {
  final String email;

  @override
  List<Object?> get props => [email];
  const SendPasswordResetEmail({required this.email});
}
