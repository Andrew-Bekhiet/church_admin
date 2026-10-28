import 'package:church_admin/church_admin.dart';

sealed class AuthIdentityChange {
  factory AuthIdentityChange.between(AuthState current, AuthState next) {
    final currentState = current.unwrapped;
    final nextState = next.unwrapped;

    return switch ((currentState, nextState)) {
      (
        _,
        AuthAuthenticated(
          authUser: AuthUser(:final hasuraUserId?) && final authUser,
          :final userData,
        ),
      )
          when currentState is! AuthAuthenticated ||
              currentState.authUser.hasuraUserId != hasuraUserId ||
              currentState.userData != userData =>
        AuthIdentityIdentified(
          hasuraUserId: hasuraUserId,
          authUser: authUser,
          userData: userData,
        ),
      (AuthAuthenticated(), AuthAuthenticated()) =>
        const AuthIdentityUnchanged(),
      (AuthAuthenticated(), _) => const AuthIdentityForgotten(),
      _ => const AuthIdentityUnchanged(),
    };
  }

  const AuthIdentityChange._();
}

final class AuthIdentityIdentified extends AuthIdentityChange {
  final String hasuraUserId;
  final AuthUser authUser;
  final User? userData;

  const AuthIdentityIdentified({
    required this.hasuraUserId,
    required this.authUser,
    this.userData,
  }) : super._();
}

final class AuthIdentityForgotten extends AuthIdentityChange {
  const AuthIdentityForgotten() : super._();
}

final class AuthIdentityUnchanged extends AuthIdentityChange {
  const AuthIdentityUnchanged() : super._();
}
