import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'view_group_route.g.dart';

@TypedGoRoute<ViewGroupRoute>(path: '/view_group')
class ViewGroupRoute extends GoRouteData with $ViewGroupRoute {
  const ViewGroupRoute({required this.id, this.$extra});

  final String id;
  final Group? $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ViewGroup(groupId: id, group: $extra);
  }
}
