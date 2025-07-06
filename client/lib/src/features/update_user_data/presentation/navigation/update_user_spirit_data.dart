import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'update_user_spirit_data.g.dart';

@TypedGoRoute<UpdateUserSpiritDataRoute>(path: '/update_user_spirit_data')
class UpdateUserSpiritDataRoute extends GoRouteData
    with _$UpdateUserSpiritDataRoute {
  const UpdateUserSpiritDataRoute({this.forced = false, this.$extra});

  final bool forced;
  final Person? $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return UpdateUserSpiritData(userData: $extra);
  }

  @override
  String? redirect(BuildContext context, GoRouterState state) {
    final AuthBloc authBloc = AuthBloc.I;

    switch (authBloc.state.unwrapped) {
      case AuthUnauthenticated():
        return const LoginRoute().location;

      case AuthAuthenticated(userData: User(:final person))
          when person?.spiritDataUpToDate() ?? false:
        return const HomeScreenWebRoute().location;

      case _:
        return null;
    }
  }
}
