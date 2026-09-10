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

      case AuthAuthenticated(isApproved: false):
        return const UnapprovedUserRoute().location;

      // TODO(ENG-226): add a redirect to EditPersonRoute if the user has no person data

      case AuthAuthenticated(userData: User(person: null)):
      case AuthAuthenticated(userData: User(:final person?))
          when !person.spiritDataUpToDate():
        return const UpdateUserSpiritDataRoute(forced: true).location;

      case _:
        return null;
    }
  }
}
