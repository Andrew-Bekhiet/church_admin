import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'email_verification_route.g.dart';

@TypedGoRoute<EmailVerificationRoute>(path: '/email_verification')
class EmailVerificationRoute extends GoRouteData {
  const EmailVerificationRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const EmailVerificationScreen();
  }

  @override
  String? redirect(BuildContext context, GoRouterState state) {
    final AuthService authService = AuthService.I;

    if (!authService.isSignedIn) {
      return const LoginRoute().location;
    } else if (authService.currentUser!.emailVerified ?? false) {
      return '/';
    }

    return null;
  }
}
