import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'view_service_route.g.dart';

@TypedGoRoute<ViewServiceRoute>(path: '/view_service')
class ViewServiceRoute extends GoRouteData with _$ViewServiceRoute {
  const ViewServiceRoute({required this.id, this.$extra});

  final String id;
  final Service? $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ViewService(serviceId: id, service: $extra);
  }
}
