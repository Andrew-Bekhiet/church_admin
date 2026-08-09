import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'view_area_route.g.dart';

@TypedGoRoute<ViewAreaRoute>(path: '/view_area')
class ViewAreaRoute extends GoRouteData with $ViewAreaRoute {
  final String id;
  final Area? $extra;
  const ViewAreaRoute({required this.id, this.$extra});

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ViewArea(areaId: id, area: $extra);
  }
}
