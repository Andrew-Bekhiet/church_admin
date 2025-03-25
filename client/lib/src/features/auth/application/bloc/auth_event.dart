import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';

sealed class AuthEvent extends Equatable {
  const AuthEvent();
}

final class ListenToSubscriptions extends AuthEvent {
  const ListenToSubscriptions({this.loadCachedUser = false});

  final bool loadCachedUser;

  @override
  List<Object?> get props => [loadCachedUser];
}

final class SignInWithEmailPassword extends AuthEvent {
  const SignInWithEmailPassword({
    required this.email,
    required this.password,
  });

  final String email;
  final String password;

  @override
  List<Object?> get props => [email, password];

  @override
  String toString() =>
      '$SignInWithEmailPassword($email, ${password.isEmpty ? '' : '********'})';
}

final class SignUpWithEmailPassword extends AuthEvent {
  const SignUpWithEmailPassword({
    required this.email,
    required this.password,
  });

  final String email;
  final String password;

  @override
  List<Object?> get props => [email, password];

  @override
  String toString() =>
      '$SignUpWithEmailPassword($email, ${password.isEmpty ? '' : '********'})';
}

final class SignOut extends AuthEvent {
  const SignOut();

  @override
  List<Object?> get props => [];
}

final class ReloadUser extends AuthEvent {
  const ReloadUser();

  @override
  List<Object?> get props => [];
}

final class SendEmailVerification extends AuthEvent {
  const SendEmailVerification();

  @override
  List<Object?> get props => [];
}

final class EnrollMultiFactor extends AuthEvent {
  const EnrollMultiFactor({
    required this.password,
    required this.phoneNumber,
  });

  final String password;
  final String phoneNumber;

  @override
  List<Object?> get props => [password, phoneNumber];

  @override
  String toString() =>
      '$EnrollMultiFactor($phoneNumber, ${password.isEmpty ? '' : '********'})';
}

final class StartMultiFactorChallenge extends AuthEvent {
  const StartMultiFactorChallenge({
    required this.session,
    this.selectedFactor,
    this.phoneNumber,
    this.resendToken,
  });

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
}

final class CompleteMultiFactorChallenge extends AuthEvent {
  const CompleteMultiFactorChallenge({
    required this.session,
    required this.challenge,
    required this.verificationCode,
    this.selectedFactor,
  });

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
}

final class SendPasswordResetEmail extends AuthEvent {
  const SendPasswordResetEmail({required this.email});

  final String email;

  @override
  List<Object?> get props => [email];
}
