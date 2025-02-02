import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';

sealed class AuthState extends Equatable {
  const AuthState();

  /// Returns the [previousState] if this state is a wrapper state (e.g. [AuthLoading], [AuthExceptionState])
  AuthState get unwrapped => switch (this) {
        AuthLoading(:final previousState) ||
        AuthExceptionState(:final previousState) =>
          previousState?.unwrapped ?? this,
        _ => this,
      };
}

final class AuthLoading extends AuthState {
  const AuthLoading({required this.previousState});

  final AuthState? previousState;

  @override
  List<Object?> get props => [previousState];
}

final class AuthUnauthenticated extends AuthState {
  const AuthUnauthenticated();

  @override
  List<Object?> get props => [];
}

final class AuthAuthenticated extends AuthState {
  const AuthAuthenticated({
    required this.authUser,
    this.userData,
  });

  final AuthUser authUser;
  final User? userData;

  @override
  List<Object?> get props => [authUser, userData];

  AuthAuthenticated copyWith({
    AuthUser? authUser,
    User? userData,
  }) {
    return AuthAuthenticated(
      authUser: authUser ?? this.authUser,
      userData: userData ?? this.userData,
    );
  }
}

final class AuthMultiFactorChallengeInProgress extends AuthState {
  const AuthMultiFactorChallengeInProgress({
    required this.challenge,
    required this.session,
  });

  final MultiFactorChallenge challenge;
  final MultiFactorSession session;

  @override
  List<Object?> get props => [challenge, session];
}

final class AuthExceptionState extends AuthState {
  const AuthExceptionState({
    required this.exception,
    required this.stackTrace,
    this.previousState,
  });

  // ignore: no-object-declaration
  final Object? exception;
  final StackTrace? stackTrace;
  final AuthState? previousState;

  @override
  List<Object?> get props => [exception, stackTrace, previousState];
}
