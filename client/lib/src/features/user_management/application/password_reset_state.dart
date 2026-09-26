import 'package:equatable/equatable.dart';

sealed class PasswordResetState with Equatable {
  @override
  List<Object?> get props => [];
  const PasswordResetState();
}

final class PasswordResetIdle extends PasswordResetState {
  const PasswordResetIdle();
}

final class PasswordResetSending extends PasswordResetState {
  const PasswordResetSending();
}

final class PasswordResetSent extends PasswordResetState {
  final String email;

  @override
  List<Object?> get props => [email];

  const PasswordResetSent({required this.email});
}

final class PasswordResetFailed extends PasswordResetState {
  final Object error;

  @override
  List<Object?> get props => [error];

  const PasswordResetFailed({required this.error});
}
