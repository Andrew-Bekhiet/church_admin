import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'multi_factor_login_route.g.dart';

@TypedGoRoute<MultiFactorLoginRoute>(path: '/multifactor')
class MultiFactorLoginRoute extends GoRouteData with $MultiFactorLoginRoute {
  const MultiFactorLoginRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const MultiFactorLoginScreen();
  }

  @override
  String? redirect(BuildContext context, GoRouterState state) {
    final AuthBloc authBloc = AuthBloc.I;
    final authState = authBloc.state.unwrapped;

    switch (authState) {
      case AuthAuthenticated(
        authUser: AuthUser(emailVerified: true, isMultiFactorEnabled: false),
      ):
      case AuthMultiFactorChallengeInProgress():
        return null;

      case AuthUnauthenticated():
        return const LoginRoute().location;

      default:
        return const HomeScreenWebRoute().location;
    }
  }
}
