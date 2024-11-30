import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ManageUsersRoute extends GoRouteData {
  const ManageUsersRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ManageUsersScreen();

  @override
  String? redirect(BuildContext context, GoRouterState state) {
    if (!LocalAuthService.I.requestOneTimeAuthForPath('/manage_users')) {
      return Uri(
        path: '/authenticate',
        queryParameters: {'next': '/manage_users'},
      ).toString();
    }

    return null;
  }
}
