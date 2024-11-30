import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'update_user_spirit_data.g.dart';

@TypedGoRoute<UpdateUserSpiritDataRoute>(path: '/update_user_spirit_data')
class UpdateUserSpiritDataRoute extends GoRouteData {
  const UpdateUserSpiritDataRoute({this.forced = false, this.$extra});

  final bool forced;
  final Person? $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return UpdateUserSpiritData(userData: $extra);
  }

  @override
  String? redirect(BuildContext context, GoRouterState state) {
    final AuthService authService = AuthService.I;

    if (!authService.isSignedIn) {
      return const LoginRoute().location;
    } else if (authService.currentUser!.person!.spiritDataUpToDate()) {
      return '/';
    } else if (LocalAuthService.I.shouldAuthenticate) {
      return AuthenticateRoute(next: state.uri.toString()).location;
    }
    return null;
  }
}
