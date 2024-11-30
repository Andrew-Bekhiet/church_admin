import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ViewServiceRoute extends GoRouteData {
  const ViewServiceRoute({required this.id, this.$extra});

  final String id;
  final Service? $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ViewService(serviceId: id, service: $extra);
  }
}
