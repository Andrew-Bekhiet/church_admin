import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'edit_user_route.g.dart';

@TypedGoRoute<EditUserRoute>(path: '/edit_user')
class EditUserRoute extends GoRouteData with $EditUserRoute {
  const EditUserRoute({required this.uid, required this.$extra});

  final String uid;
  final User $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return EditUser(userId: uid, user: $extra);
  }
}
