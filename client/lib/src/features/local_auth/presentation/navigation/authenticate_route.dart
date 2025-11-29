import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'authenticate_route.g.dart';

@TypedGoRoute<AuthenticateRoute>(path: '/authenticate')
class AuthenticateRoute extends GoRouteData with $AuthenticateRoute {
  const AuthenticateRoute({this.next = '/'});

  final String next;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return AuthenticateScreen(next: next != '/' ? next : null);
  }

  @override
  String? redirect(BuildContext context, GoRouterState state) {
    final AuthBloc authBloc = AuthBloc.I;
    final LocalAuthService localAuthService = LocalAuthService.I;

    switch (authBloc.state.unwrapped) {
      case AuthUnauthenticated():
        return const LoginRoute().location;

      case AuthAuthenticated(authUser: AuthUser(isMultiFactorEnabled: false)):
        return const MultiFactorLoginRoute().location;

      case _
          when localAuthService.shouldAuthenticate ||
              (next != '/' && localAuthService.shouldAuthenticateForPath(next)):
        return null;

      case _:
        return next;
    }
  }
}
