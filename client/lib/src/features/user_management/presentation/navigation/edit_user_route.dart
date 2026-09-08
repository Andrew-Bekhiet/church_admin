import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'edit_user_route.g.dart';

@TypedGoRoute<EditUserRoute>(path: '/edit_user')
class EditUserRoute extends GoRouteData with $EditUserRoute {
  final String uid;
  final User $extra;
  const EditUserRoute({required this.uid, required this.$extra});

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return EditUserScreen(userId: uid, user: $extra);
  }
}
