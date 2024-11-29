import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'authenticate_route.g.dart';

@TypedGoRoute<AuthenticateRoute>(path: '/authenticate')
class AuthenticateRoute extends GoRouteData {
  const AuthenticateRoute({this.next = '/'});

  final String next;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return AuthenticateScreen(next: next != '/' ? next : null);
  }

  @override
  String? redirect(BuildContext context, GoRouterState state) {
    final AuthService authService = AuthService.I;
    final LocalAuthService localAuthService = LocalAuthService.I;

    if (!authService.isSignedIn) {
      return const LoginRoute().location;
    } else if (!(authService.currentUser?.isMultiFactorEnrolled ?? false)) {
      return const MultiFactorLoginRoute().location;
    } else if (localAuthService.shouldAuthenticate ||
        (next != '/' && localAuthService.shouldAuthenticateForPath(next))) {
      return null;
    } else {
      return next;
    }
  }
}
