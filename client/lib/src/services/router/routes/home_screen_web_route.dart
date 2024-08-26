import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'home_screen_web_route.g.dart';

@TypedGoRoute<HomeScreenWebRoute>(path: '/')
class HomeScreenWebRoute extends GoRouteData {
  const HomeScreenWebRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const DownloadAppScreen();

  @override
  String? redirect(BuildContext context, GoRouterState state) {
    final authService = AuthService.I;

    if (!authService.isSignedIn) {
      return const LoginRoute().location;
    } else if (!(authService.currentUser!.emailVerified ?? false)) {
      return const EmailVerificationRoute().location;
    } else if (!(authService.currentUser!.isMultiFactorEnrolled ?? false)) {
      return const MultiFactorLoginRoute().location;
    } else if (!authService.currentUser!.permissions.approved) {
      return const UnapprovedUserRoute().location;
    } else if (!authService.currentUser!.person!.spiritDataUpToDate()) {
      return const UpdateUserSpiritDataRoute(forced: true).location;
    }

    return null;
  }
}
