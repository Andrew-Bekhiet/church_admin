import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'visits_map_route.g.dart';

@TypedGoRoute<VisitsMapRoute>(path: '/visits_map')
class VisitsMapRoute extends GoRouteData with _$VisitsMapRoute {
  const VisitsMapRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const VisitsMapScreen();
}
