import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'manage_users_route.g.dart';

@TypedGoRoute<ManageUsersRoute>(path: '/manage_users')
class ManageUsersRoute extends GoRouteData with $ManageUsersRoute {
  const ManageUsersRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ManageUsersScreen();

  @override
  String? redirect(BuildContext context, GoRouterState state) {
    if (!(AuthBloc.I.currentUserData?.canManageSomeUsers ?? false)) {
      return const HomeScreenWebRoute().location;
    }

    if (LocalAuthService.I.shouldAuthenticateForPath(location)) {
      return BiometricsAuthRoute(next: location).location;
    }

    return null;
  }

  @override
  bool onExit(BuildContext context, GoRouterState state) {
    LocalAuthService.I.revokeAuthForPath(location);

    return true;
  }
}
