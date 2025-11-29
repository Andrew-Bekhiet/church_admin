import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'view_street_route.g.dart';

@TypedGoRoute<ViewStreetRoute>(path: '/view_street')
class ViewStreetRoute extends GoRouteData with $ViewStreetRoute {
  const ViewStreetRoute({required this.id, this.$extra});

  final String id;
  final Street? $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ViewStreet(streetId: id, street: $extra);
  }
}
