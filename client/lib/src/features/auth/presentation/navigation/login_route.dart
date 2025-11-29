import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'login_route.g.dart';

@TypedGoRoute<LoginRoute>(path: '/login')
class LoginRoute extends GoRouteData with $LoginRoute {
  const LoginRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const LoginScreen();
  }

  @override
  String? redirect(BuildContext context, GoRouterState state) {
    switch (AuthBloc.I.state.unwrapped) {
      case AuthUnauthenticated():
        return null;

      default:
        return const HomeScreenWebRoute().location;
    }
  }
}
