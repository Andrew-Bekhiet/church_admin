import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'auth_loading_route.g.dart';

@TypedGoRoute<AuthLoadingRoute>(path: '/auth_loading')
class AuthLoadingRoute extends GoRouteData {
  const AuthLoadingRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const AuthLoadingScreen();

  @override
  String? redirect(BuildContext context, GoRouterState state) {
    final authState = AuthBloc.I.state.unwrapped;

    switch (authState) {
      case AuthAuthenticated(userData: null):
        return null;

      default:
        return const HomeScreenRoute().location;
    }
  }
}
