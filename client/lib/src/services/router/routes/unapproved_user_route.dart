import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'unapproved_user_route.g.dart';

@TypedGoRoute<UnapprovedUserRoute>(path: '/unapproved_user')
class UnapprovedUserRoute extends GoRouteData {
  const UnapprovedUserRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const UnapprovedUser();
  }

  @override
  String? redirect(BuildContext context, GoRouterState state) {
    if (AuthService.I.currentUser?.permissions.approved ?? false) {
      return const HomeScreenRoute().location;
    }
    return null;
  }
}
