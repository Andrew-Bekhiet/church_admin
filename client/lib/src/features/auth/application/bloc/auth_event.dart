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

final class ApplyInvitationCode extends AuthEvent {
  final String code;

  @override
  List<Object?> get props => [code];

  const ApplyInvitationCode(this.code);
}

final class SendEmailVerification extends AuthEvent {
  @override
  List<Object?> get props => [];
  const SendEmailVerification();
}

final class SendPasswordResetEmail extends AuthEvent {
  final String email;

  @override
  List<Object?> get props => [email];
  const SendPasswordResetEmail({required this.email});
}
