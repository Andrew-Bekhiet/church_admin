import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'email_verification_route.g.dart';

@TypedGoRoute<EmailVerificationRoute>(path: '/email_verification')
class EmailVerificationRoute extends GoRouteData with $EmailVerificationRoute {
  const EmailVerificationRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const EmailVerificationScreen();
  }

  @override
  String? redirect(BuildContext context, GoRouterState state) {
    final authState = AuthBloc.I.state.unwrapped;

    switch (authState) {
      case AuthUnauthenticated():
        return const LoginRoute().location;

      case AuthAuthenticated(authUser: AuthUser(emailVerified: true)):
        return const HomeScreenWebRoute().location;

      default:
        return null;
    }
  }
}
