import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'view_street_route.g.dart';

@TypedGoRoute<ViewStreetRoute>(path: '/view_street')
class ViewStreetRoute extends GoRouteData with $ViewStreetRoute {
  final String id;
  final Street? $extra;
  const ViewStreetRoute({required this.id, this.$extra});

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ViewStreet(streetId: id, street: $extra);
  }
}
