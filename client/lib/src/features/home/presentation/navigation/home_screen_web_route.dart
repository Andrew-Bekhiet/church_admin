import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'home_screen_web_route.g.dart';

@TypedGoRoute<HomeScreenWebRoute>(path: '/')
class HomeScreenWebRoute extends GoRouteData with $HomeScreenWebRoute {
  const HomeScreenWebRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const DownloadAppScreen();

  @override
  String? redirect(BuildContext context, GoRouterState state) {
    final AuthState authState = AuthBloc.I.state.unwrapped;

    switch (authState) {
      case AuthUnauthenticated():
        return const LoginRoute().location;

      case AuthAuthenticated(authUser: AuthUser(emailVerified: false)):
        return const EmailVerificationRoute().location;

      case AuthAuthenticated(authUser: AuthUser(isMultiFactorEnabled: false)):
        return const MultiFactorLoginRoute().location;

      case AuthAuthenticated(userData: null):
        return const AuthLoadingRoute().location;

      case AuthAuthenticated(
        userData: User(permissions: PermissionsSet(approved: false)),
      ):
        return const UnapprovedUserRoute().location;

      case AuthAuthenticated(userData: User(:final person))
          when !(person?.spiritDataUpToDate() ?? false):
        return Uri(
          path: const UpdateUserSpiritDataRoute().location,
          queryParameters: {'forced': 'true'},
        ).toString();

      case AuthMultiFactorChallengeInProgress():
        return const MultiFactorLoginRoute().location;

      case _:
        return null;
    }
  }
}
