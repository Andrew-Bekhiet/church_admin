import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'edit_street_route.g.dart';

@TypedGoRoute<EditStreetRoute>(path: '/edit_street')
class EditStreetRoute extends GoRouteData with _$EditStreetRoute {
  const EditStreetRoute({this.$extra});

  final Street? $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return EditStreet(street: $extra);
  }
}
