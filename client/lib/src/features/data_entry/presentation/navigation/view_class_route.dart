import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'view_class_route.g.dart';

@TypedGoRoute<ViewClassRoute>(path: '/view_class')
class ViewClassRoute extends GoRouteData with $ViewClassRoute {
  final String id;
  final Class? $extra;
  const ViewClassRoute({required this.id, this.$extra});

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ViewClass(classId: id, $class: $extra);
  }
}
