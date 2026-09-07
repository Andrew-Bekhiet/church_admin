import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';

sealed class AuthState extends Equatable {
  /// Returns the [AuthLoading.previousState] or [AuthExceptionState.previousState] if
  /// this state is a wrapper state (e.g. [AuthLoading], [AuthExceptionState])
  /// returns `this` if it is not a wrapper state
  AuthState get unwrapped => switch (this) {
    AuthLoading(:final previousState) ||
    AuthExceptionState(
      :final previousState,
    ) => previousState?.unwrapped ?? this,
    _ => this,
  };
  const AuthState();
}

final class AuthLoading extends AuthState {
  final AuthState? previousState;

  @override
  List<Object?> get props => [previousState];
  const AuthLoading({required this.previousState});
}

final class AuthInitial extends AuthLoading {
  const AuthInitial() : super(previousState: null);
}

final class AuthUnauthenticated extends AuthState {
  @override
  List<Object?> get props => [];
  const AuthUnauthenticated();
}

final class AuthAuthenticated extends AuthState {
  final AuthUser authUser;
  final User? userData;

  @override
  List<Object?> get props => [authUser, userData];
  const AuthAuthenticated({
    required this.authUser,
    this.userData,
  });

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

final class AuthExceptionState extends AuthState {
  // ignore: no-object-declaration
  final Object? exception;
  final StackTrace? stackTrace;
  final AuthState? previousState;

  @override
  List<Object?> get props => [exception, stackTrace, previousState];
  const AuthExceptionState({
    required this.exception,
    required this.stackTrace,
    this.previousState,
  });
}
