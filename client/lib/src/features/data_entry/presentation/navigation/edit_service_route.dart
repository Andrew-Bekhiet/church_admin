import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'edit_service_route.g.dart';

@TypedGoRoute<EditServiceRoute>(path: '/edit_service')
class EditServiceRoute extends GoRouteData with $EditServiceRoute {
  final Service? $extra;
  const EditServiceRoute({this.$extra});

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return EditService(service: $extra);
  }
}
