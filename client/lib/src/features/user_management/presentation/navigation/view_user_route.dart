import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ViewUserRoute extends GoRouteData {
  const ViewUserRoute({required this.uid, this.$extra});

  final String uid;
  final User? $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ViewUser(userId: uid, user: $extra);
  }
}
