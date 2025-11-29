import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'view_user_route.g.dart';

@TypedGoRoute<ViewUserRoute>(path: '/view_user')
class ViewUserRoute extends GoRouteData with $ViewUserRoute {
  const ViewUserRoute({required this.uid, this.$extra});

  final String uid;
  final User? $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ViewUser(userId: uid, user: $extra);
  }
}
