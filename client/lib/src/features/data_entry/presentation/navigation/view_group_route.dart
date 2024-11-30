import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ViewGroupRoute extends GoRouteData {
  const ViewGroupRoute({required this.id, this.$extra});

  final String id;
  final Group? $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ViewGroup(groupId: id, group: $extra);
  }
}
