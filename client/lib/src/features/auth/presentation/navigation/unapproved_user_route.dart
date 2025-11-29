import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'unapproved_user_route.g.dart';

@TypedGoRoute<UnapprovedUserRoute>(path: '/unapproved_user')
class UnapprovedUserRoute extends GoRouteData with $UnapprovedUserRoute {
  const UnapprovedUserRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const UnapprovedUserScreen();
  }

  @override
  String? redirect(BuildContext context, GoRouterState state) {
    final authState = AuthBloc.I.state.unwrapped;

    switch (authState) {
      case AuthAuthenticated(
          userData: User(permissions: PermissionsSet(approved: true)),
        ):
        return const HomeScreenWebRoute().location;

      case AuthUnauthenticated():
        return const LoginRoute().location;

      default:
        return null;
    }
  }
}
